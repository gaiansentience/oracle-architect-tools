create or replace package log#no_control is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 8/25/2007 6:24:26 PM
  -- Purpose : example package for logging calls
  --           this package only uses central logging utility
  --           central logging utility can be switched on or off
  --           no package level controls for logging
  --           without type interface requires duplicated code

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

end log#no_control;
/

