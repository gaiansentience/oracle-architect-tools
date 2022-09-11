create or replace package app#env_util 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 3/01/2007
    -- Updated : 9/10/2022
    -- Purpose : Manage application environment settings
    
    subtype application_user is varchar2(128);
    subtype environment_key is varchar2(100);
    subtype environment_description is varchar2(4000);    
    subtype reference_id is number;
    

    --TRUE/FALSE T/F
    subtype environment_value is varchar2(4000);
    --0 (false) / 1 or -1 (true)
    subtype environment_flag is number;
    subtype environment_switch is boolean;
    
    --set an override for the osuser reported by Oracle
    --useful for distributed applications where osuser is not available
    procedure set_app_user
    (
        p_user in application_user default user
    );

    function app_user
    (
        p_override in application_user default null
    ) 
    return application_user;
    
    function os_user 
    return application_user;
    
    function db_user 
    return application_user;
    
    function db_sid 
    return number;
    
    --verifies that a variable has been defined in environment
    function value_exists
    (
        p_key in environment_key
    ) return boolean;

    --expose set/get methods for storing values in environment
    procedure set_value
    (
        p_key     in environment_key,
        p_value   in environment_value,
        p_purpose in environment_description default null
    );

    function get_value
    (
        p_key in environment_key
    ) return environment_value;

    --expose set/get methods for storing numeric flags in environment
    --numeric flags are used to store booleans in tables (0=false, 1=true)
    procedure set_flag
    (
        p_key     in environment_key,
        p_flag    in environment_flag default 0,
        p_purpose in environment_description
    );

    --return default value of 0 for undefined flags
    function get_flag
    (
        p_key in environment_key
    ) return environment_flag;

    --expose set/get methods for storing boolean switches in environment
    --boolean switches are used to expose flags to plsql
    procedure set_switch
    (
        p_key     in environment_key,
        p_switch  in environment_switch default false,
        p_purpose in environment_description
    );

    --return default value of false for undefined switches
    function get_switch
    (
        p_key in environment_key
    ) return environment_switch;

    procedure get_all
    (
        p_settings out sys_refcursor
    );

end app#env_util;