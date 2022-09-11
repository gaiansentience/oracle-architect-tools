create or replace package log#control_without_interface 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 08/25/2007
    -- Updated : 09/22/2022
    -- Purpose : example package for logging calls

    --           this package uses environment for control
    --           without type interface requires duplicated code

    /*************START PUBLIC LOGGING CODE**************/
    --to get the logging environment at runtime:
    procedure logger_get_env
    (
        p_enable_exceptions out boolean,
        p_enable_traces     out boolean,
        p_enable_audits     out boolean
    );
    --to set the logging environment at runtime:
    procedure logger_set_env
    (
        p_enable_exceptions in boolean default true,
        p_enable_traces     in boolean default false,
        p_enable_audits     in boolean default true
    );
    /*************END PUBLIC LOGGING CODE**************/

    procedure my_traced_procedure
    (
        p_input in varchar2,
        p_user  in varchar2
    );    

    procedure my_other_procedure
    (
        p_input in varchar2,
        p_user  in varchar2
    );

    procedure audit_sensitive_access
    (
        p_user in varchar2,
        p_data out sys_refcursor
    );

    procedure test_it;

    procedure test_with_logging;

    procedure test_no_logging;

end log#control_without_interface;