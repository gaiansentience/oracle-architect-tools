create or replace package body app#env_util is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 3/1/2007 1:10:32 PM
  -- Purpose : Manage application environment settings

  v_osuser app#types.osuser;

  procedure initialize is
  begin
    --get the logged in user from oracle
    --some system sessions, like dbms_job, report null osuser
    v_osuser := sys_context('USERENV',
                            'OS_USER');
  
  end initialize;

  --set an override for the osuser reported by Oracle
  --useful for distributed applications where osuser is not available
  procedure set_osuser(p_osuser in app#types.osuser) is
  begin
  
    if p_osuser is not null then
      v_osuser := p_osuser;
    end if;
  
  end set_osuser;

  --get the osuser, if override is used forces a call to set_osuser
  function osuser(p_override in app#types.osuser default null) return app#types.osuser is
  begin
  
    if p_override is not null then
      set_osuser(p_override);
    end if;
  
    return v_osuser;
  
  end osuser;

  --verifies that a variable has been defined in environment
  function value_exists(p_key in app#types.key) return boolean is
    i        number := 0;
    v_exists boolean := false;
  begin
  
    select count(*)
    into   i
    from   app#environment e
    where  e.setting = p_key;
  
    if i > 0 then
      v_exists := true;
    end if;
  
    return v_exists;
  
  end value_exists;

  --expose set/get methods for storing values in environment
  procedure set_value
  (
    p_key     in app#types.key,
    p_value   in varchar2,
    p_purpose in app#types.description default null
  ) is
    r app#environment%rowtype;
  begin
  
    r.setting      := p_key;
    r.value        := p_value;
    r.purpose      := p_purpose;
    r.created_date := sysdate;
    r.created_by   := app#env_util.osuser;
    r.updated_date := sysdate;
    r.updated_by   := app#env_util.osuser;
  
    if value_exists(p_key) = false then
    
      insert into app#environment
      values r;
    
    else
    
      update app#environment e
      set    e.value        = r.value,
             e.updated_date = r.updated_date,
             e.updated_by   = r.updated_by
      where  e.setting = p_key;
    
    end if;
  
    commit;
  
  end set_value;

  function get_value(p_key in app#types.key) return varchar2 is
    v_value varchar2(100);
  begin
  
    if value_exists(p_key) then
    
      select e.value
      into   v_value
      from   app#environment e
      where  e.setting = p_key;
    
    else
      --environment setting has not been saved to table
      v_value := p_key || ' is not defined.';
    end if;
  
    return v_value;
  
  end get_value;

  --expose set/get methods for storing numeric flags in environment
  --numeric flags are used to store booleans in tables
  procedure set_flag
  (
    p_key     in app#types.key,
    p_flag    in number default 0,
    p_purpose in app#types.description
  ) is
  begin
    set_value(p_key,
              app#bool.flag_to_val(p_flag),
              p_purpose);
  end set_flag;

  --return default value of 0 for undefined flags
  function get_flag(p_key in app#types.key) return number is
  begin
    return app#bool.val_to_flag(get_value(p_key));
  end get_flag;

  --expose set/get methods for storing boolean switches in environment
  --boolean switches are used to expose flags to plsql
  procedure set_switch
  (
    p_key     in app#types.key,
    p_switch  in boolean default false,
    p_purpose in app#types.description
  ) is
  begin
    set_value(p_key,
              app#bool.switch_to_val(p_switch),
              p_purpose);
  end set_switch;

  --return default value of false for undefined switches
  function get_switch(p_key in app#types.key) return boolean is
  begin
    return app#bool.val_to_switch(get_value(p_key));
  end get_switch;

  procedure get_all(p_settings out app#types.ref_cur) is
  begin
  
    open p_settings for
      select *
      from   app#environment a;
  
  end get_all;

begin
  initialize;
end app#env_util;
/

