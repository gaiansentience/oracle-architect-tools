create or replace package body app#log_util is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 3/1/2007 1:06:17 PM
  -- Purpose : writing trace and error log entries

  c_max_table_varchar constant integer := 4000;
  c_max_object_name   constant integer := 100;

  --constants for environment variables
  c_env_enable_pkg    constant app#types.key := 'ENABLE_PACKAGE_LOGS_FOR';
  c_env_enable_global constant app#types.key := 'ENABLE_GLOBAL_LOGS_FOR';

  --constants for log entry types
  c_error constant app#types.key := 'EXCEPTION';
  c_trace constant app#types.key := 'TRACE';
  c_audit constant app#types.key := 'AUDIT';
  c_timer constant app#types.key := 'TIMER';

  c_unspecified constant app#types.key := 'UNSPECIFIED';
  c_underscore  constant app#types.key := '_';

  --variables to control ALL log activity
  v_enable_exceptions boolean := true;
  v_enable_traces     boolean := false;
  v_enable_audits     boolean := true;
  v_enable_timers     boolean := true;

  --private procedure to set environment switch value
  procedure set_env_switch
  (
    p_env_variable in app#types.key,
    p_enabled      in boolean
  ) is
    v_description app#types.description;
  begin
    v_description := initcap(replace(p_env_variable,
                                     c_underscore,
                                     ' '));
    app#env_util.set_switch(p_env_variable,
                            p_enabled,
                            v_description);
  end set_env_switch;

  --localized for demonstration, should move to app#fmt_util package
  procedure append
  (
    p_target in out varchar2,
    p_value  in varchar2,
    p_prefix in varchar2 default null,
    p_suffix in varchar2 default null
  ) is
  begin
    if p_prefix is not null then
      p_target := p_target || p_prefix;
    end if;
    p_target := p_target || p_value;
    if p_suffix is not null then
      p_target := p_target || p_suffix;
    end if;
  end append;

  --build a logging environment variable name
  function fmt_env_var
  (
    p_variable_base in app#types.key,
    p_log_type      in app#types.key,
    p_package       in app#types.key default null
  ) return app#types.key is
    v_variable app#types.key;
  begin
    append(v_variable,
           p_variable_base);
    if p_package is not null then
      append(v_variable,
             p_package,
             c_underscore);
    end if;
    append(v_variable,
           p_log_type,
           c_underscore);
    return upper(v_variable);
  end fmt_env_var;

  --expose set/get methods for controlling ALL writes to the log table
  procedure set_global_environment
  (
    p_enable_errors in boolean default true,
    p_enable_traces in boolean default false,
    p_enable_audits in boolean default true,
    p_enable_timers in boolean default true
  ) is
  begin

    set_env_switch(fmt_env_var(c_env_enable_global,
                               c_error),
                   p_enable_errors);
    set_env_switch(fmt_env_var(c_env_enable_global,
                               c_trace),
                   p_enable_traces);
    set_env_switch(fmt_env_var(c_env_enable_global,
                               c_audit),
                   p_enable_audits);
    set_env_switch(fmt_env_var(c_env_enable_global,
                               c_timer),
                   p_enable_timers);

  end set_global_environment;

  procedure get_global_environment
  (
    p_enable_errors out boolean,
    p_enable_traces out boolean,
    p_enable_audits out boolean,
    p_enable_timers out boolean
  ) is
  begin

    p_enable_errors := app#env_util.get_switch(fmt_env_var(c_env_enable_global,
                                                           c_error));
    p_enable_traces := app#env_util.get_switch(fmt_env_var(c_env_enable_global,
                                                           c_trace));
    p_enable_audits := app#env_util.get_switch(fmt_env_var(c_env_enable_global,
                                                           c_audit));
    p_enable_timers := app#env_util.get_switch(fmt_env_var(c_env_enable_global,
                                                           c_timer));

  end get_global_environment;

  procedure initialize is
  begin
    --set global logging state
    get_global_environment(v_enable_exceptions,
                           v_enable_traces,
                           v_enable_audits,
                           v_enable_timers);
  end initialize;

  function fmt_pkg_env_var
  (
    p_package  in app#types.key,
    p_log_type in app#types.key
  ) return app#types.key is
  begin
    return fmt_env_var(c_env_enable_pkg,
                       p_log_type,
                       p_package);
  end fmt_pkg_env_var;

  --expose set/get methods for controlling specific package instrumentation
  procedure set_package_environment
  (
    p_package       in app#types.key,
    p_enable_errors in boolean default true,
    p_enable_traces in boolean default false,
    p_enable_audits in boolean default true,
    p_enable_timers in boolean default true
  ) is
  begin

    set_env_switch(fmt_pkg_env_var(p_package,
                                   c_error),
                   p_enable_errors);
    set_env_switch(fmt_pkg_env_var(p_package,
                                   c_trace),
                   p_enable_traces);
    set_env_switch(fmt_pkg_env_var(p_package,
                                   c_audit),
                   p_enable_audits);
    set_env_switch(fmt_pkg_env_var(p_package,
                                   c_timer),
                   p_enable_timers);

  end set_package_environment;

  procedure get_package_environment
  (
    p_package       in app#types.key,
    p_enable_errors out boolean,
    p_enable_traces out boolean,
    p_enable_audits out boolean,
    p_enable_timers out boolean
  ) is
  begin

    p_enable_errors := app#env_util.get_switch(fmt_pkg_env_var(p_package,
                                                               c_error));
    p_enable_traces := app#env_util.get_switch(fmt_pkg_env_var(p_package,
                                                               c_trace));
    p_enable_audits := app#env_util.get_switch(fmt_pkg_env_var(p_package,
                                                               c_audit));
    p_enable_timers := app#env_util.get_switch(fmt_pkg_env_var(p_package,
                                                               c_timer));

  end get_package_environment;

  --enable instrumentation for all packages
  procedure set_all_package_environments
  (
    p_enable_errors in boolean default true,
    p_enable_traces in boolean default false,
    p_enable_audits in boolean default true,
    p_enable_timers in boolean default true
  ) 
  is
    cursor c is
    select 
    object_name
    from
    user_objects
    where
    object_type = 'PACKAGE';
  begin

    for r in c loop
    
        set_package_environment(r.object_name, p_enable_errors, p_enable_traces, p_enable_audits, p_enable_timers);
    
    end loop;

  end set_all_package_environments;


  procedure remove_all_package_environments
  is
  begin
  
    delete from app#environment e
    where e.setting like 'ENABLE_PACKAGE_LOGS_FOR%';
    
    commit;
    
  end remove_all_package_environments;


  procedure write_entry(r_entry in app#logs%rowtype) is
    pragma autonomous_transaction;
  begin

    insert into app#logs
    values r_entry;

    commit;

  exception
    when others then
      rollback;
      --DO NOT RAISE EXCEPTIONS FROM THE ERROR LOGGING MECHANISM
  end write_entry;

  procedure set_values
  (
    r_entry    in out app#logs%rowtype,
    p_log_type in app#types.key,
    p_object   in app#types.key,
    p_method   in app#types.key,
    p_message  in varchar2,
    p_ref_id   in app#types.pk_id
  ) is
    function cut
    (
      p_val    in varchar2,
      p_maxlen in number
    ) return varchar2 is
    begin
      return substr(p_val,
                    1,
                    p_maxlen);
    end cut;
  begin

    r_entry.log_type := p_log_type;
    if r_entry.log_type = c_audit then
      r_entry.preserve_on_purge := 1;
    else
      r_entry.preserve_on_purge := 0;
    end if;
    
    r_entry.object_name   := nvl(cut(p_object, c_max_object_name), c_unspecified);
    r_entry.object_method := nvl(cut(p_method, c_max_object_name), c_unspecified);
    r_entry.reference_id  := nvl(p_ref_id, -999);
    r_entry.message       := cut(p_message, c_max_table_varchar);
    r_entry.created_by    := app#env_util.osuser;
    r_entry.created_date  := sysdate;

  end set_values;

  --write an exception entry to the logs
  procedure write_exception
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_message in varchar2,
    p_ref_id  in app#types.pk_id default c_id_unknown
  ) is
    r_entry app#logs%rowtype;
  begin
    set_values(r_entry,
               c_error,
               p_object,
               p_method,
               p_message,
               p_ref_id);
    write_entry(r_entry);
  end write_exception;

  --write a trace entry to the logs
  procedure write_trace
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_message in varchar2,
    p_ref_id  in app#types.pk_id default c_id_unknown
  ) is
    r_entry app#logs%rowtype;
  begin
    set_values(r_entry,
               c_trace,
               p_object,
               p_method,
               p_message,
               p_ref_id);
    write_entry(r_entry);
  end write_trace;

  --write an audit entry to the logs
  --(set the preserve on purge flag for all audits)
  procedure write_audit
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_message in varchar2,
    p_ref_id  in app#types.pk_id default c_id_unknown
  ) is
    r_entry app#logs%rowtype;
  begin
    set_values(r_entry,
               c_audit,
               p_object,
               p_method,
               p_message,
               p_ref_id);
    write_entry(r_entry);
  end write_audit;
  
  function get_seconds(
    p_start_time in timestamp,
    p_stop_time in timestamp)
    return number
  is
    v_difference interval day to second(9);
    v_minutes number;
    v_seconds number;
  begin
  
    if p_start_time is null or p_stop_time is null then
      v_seconds := null;
    else
      v_difference := p_stop_time - p_start_time;
      v_minutes := extract(minute from v_difference);
      v_seconds := extract(second from v_difference);
      v_seconds := v_minutes * 60 + v_seconds;
    end if;
    return v_seconds;
  
  end get_seconds;

  --write a timing entry to the logs
  procedure write_timing
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_start   in timestamp,
    p_stop    in timestamp,
    p_message in varchar2 default null,
    p_ref_id  in app#types.pk_id default c_id_unknown
  ) is
    r_entry app#logs%rowtype;
    v_seconds number;
    v_timing varchar2(4000);
  begin
  
    v_seconds := get_seconds(p_start, p_stop);
    if v_seconds is not null then
      v_timing := 'TIMING = ' || v_seconds || ' seconds.';
    else
      v_timing := 'TIMING COULD NOT BE DETERMINED.';
      if p_start is null then
        v_timing := v_timing || '  TIMER NOT STARTED.';
      end if;
      if p_stop is null then
        v_timing := v_timing || '  TIMER NOT STOPPED.';
      end if;
    end if;
    v_timing := v_timing || '  ' || p_message;
    set_values(r_entry,
               c_timer,
               p_object,
               p_method,
               v_timing,
               p_ref_id);
    write_entry(r_entry);
  end write_timing;

  --expose simple purge functionality
  procedure purge_logs 
  (
    p_days_to_keep in number default 7
  )
  is
  begin
  
    if p_days_to_keep <= 7 then
      raise_application_error(-20100, 'Cannot delete logs less than 7 days old.');
    end if;

    delete from app#logs l
    where  l.preserve_on_purge <> 1
    and l.created_date < sysdate - p_days_to_keep;

    commit;

  exception
    when others then
      raise;
  end purge_logs;

begin
  initialize;
end app#log_util;