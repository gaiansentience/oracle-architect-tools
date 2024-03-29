create or replace package test#interface 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 08/25/2007
    -- Updated : 09/22/2022
    -- Purpose : example package for logging calls

    --Expose the logging object
    --to reset the environment at runtime:
    --use log#interface.logger.set_env(errors, traces, audits)
    logger app#log := app#log('test#interface');

    --test tracing
    procedure my_traced_procedure
    (
        p_input in varchar2,
        p_user  in varchar2
    );
  
    --test tracing
    procedure my_other_procedure
    (
        p_input in varchar2,
        p_user  in varchar2
    );
  
    --test audits
    procedure audit_sensitive_access
    (
        p_user in varchar2,
        p_data out sys_refcursor
    );
  
    --test timing
    procedure timing_long_process
    (
        p_process in varchar2 default 'JOB PROCESS',
        p_sleep in number default 5
    );  

    procedure test_it;

    procedure test_with_logging;

    procedure test_no_logging;

end test#interface;