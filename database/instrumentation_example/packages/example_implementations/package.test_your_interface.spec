create or replace package test#your_interface
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 08/25/2007
    -- Updated : 09/22/2022
    -- Purpose : example package for logging calls

    --Expose the logging object
    --to reset the environment at runtime:
    --use log#your_interface.logger.set_env(errors, traces, audits)
    logger app#log := app#log('test#your_interface');

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

end test#your_interface;