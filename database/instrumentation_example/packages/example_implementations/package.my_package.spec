create or replace package test#my_package 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 08/25/2007
    -- Updated : 09/22/2022
    -- Purpose : example package for logging calls

    --Expose the logging object
    --to reset the environment at runtime:
    --use my_package.logger.set_env(errors, traces, audits)
    logger app#log := app#log('test#my_package');

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

end test#my_package;