create or replace package log#control_without_interface is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 8/25/2007 6:24:26 PM
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
    p_data out app#types.ref_cur
  );

  procedure test_it;

  procedure test_with_logging;

  procedure test_no_logging;

end log#control_without_interface;
/

