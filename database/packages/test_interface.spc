create or replace package test#interface is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 9/17/2007 9:24:26 PM
  -- Purpose : example package for logging calls

  --Expose the logging object
  --to reset the environment at runtime:
  --use log#interface.logger.set_env(errors, traces, audits)
  logger app#log := app#log('test#interface');

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
    p_data out app#types.ref_cur
  );
  
  procedure timing_long_process
  (
    p_process in varchar2 default 'JOB PROCESS',
    p_sleep in number default 5
  );  

  procedure test_it;

  procedure test_with_logging;

  procedure test_no_logging;

end test#interface;