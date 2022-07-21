create or replace package app#env_util is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 3/1/2007 1:10:32 PM
  -- Purpose : Manage application environment settings

  --set an override for the osuser reported by Oracle
  --useful for distributed applications where osuser is not available
  procedure set_osuser(p_osuser in app#types.osuser);

  --get the osuser, if override is used forces a call to set_osuser
  function osuser(p_override in app#types.osuser default null) return app#types.osuser;

  --verifies that a variable has been defined in environment
  function value_exists(p_key in app#types.key) return boolean;

  --expose set/get methods for storing values in environment
  procedure set_value
  (
    p_key     in app#types.key,
    p_value   in varchar2,
    p_purpose in app#types.description default null
  );

  function get_value(p_key in app#types.key) return varchar2;

  --expose set/get methods for storing numeric flags in environment
  --numeric flags are used to store booleans in tables
  procedure set_flag
  (
    p_key     in app#types.key,
    p_flag    in number default 0,
    p_purpose in app#types.description
  );

  --return default value of 0 for undefined flags
  function get_flag(p_key in app#types.key) return number;

  --expose set/get methods for storing boolean switches in environment
  --boolean switches are used to expose flags to plsql
  procedure set_switch
  (
    p_key     in app#types.key,
    p_switch  in boolean default false,
    p_purpose in app#types.description
  );

  --return default value of false for undefined switches
  function get_switch(p_key in app#types.key) return boolean;

  procedure get_all(p_settings out app#types.ref_cur);

end app#env_util;
/

