create or replace package app#env_util 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 3/01/2007
    -- Updated : 9/10/2022
    -- Purpose : Manage application environment settings

    --set an override for the osuser reported by Oracle
    --useful for distributed applications where osuser is not available
    procedure set_app_user(p_user in app#types.osuser default user);

    function app_user(p_override in app#types.osuser default null) return app#types.osuser;
    
    function os_user return varchar2;
    
    function db_user return varchar2;
    
    function db_sid return number;
    
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
    --numeric flags are used to store booleans in tables (0=false, 1=true)
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

    procedure get_all(p_settings out sys_refcursor);

end app#env_util;

