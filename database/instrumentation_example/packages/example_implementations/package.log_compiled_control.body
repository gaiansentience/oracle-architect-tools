create or replace package body log#compiled_control is

  /*************BEGIN STANDARD LOGGING CODE****************/
  c_package constant app#types.key := 'log#compiled_control';

  v_log_method app#types.key := 'INIT';

  /********CHANGE BOOLEAN VALUES TO ACTIVATE LOGGING*********/
  v_log_tracing boolean := false;
  v_log_errors  boolean := true;
  v_log_audits  boolean := false;

  procedure logger_set_method(p_method in app#types.key default null) is
  begin
    if p_method is not null then
      v_log_method := p_method;
    end if;
  end logger_set_method;

  procedure logger_trace
  (
    p_message in varchar2,
    p_method  in app#types.key default null
  ) is
  begin
    if v_log_tracing = true then
      logger_set_method(p_method);
      app#log_util.write_trace(c_package,
                               v_log_method,
                               p_message);
    end if;
  end logger_trace;

  procedure logger_err
  (
    p_message in varchar2,
    p_method  in app#types.key default null
  ) is
  begin
    if v_log_errors = true then
      logger_set_method(p_method);
      app#log_util.write_exception(c_package,
                                   v_log_method,
                                   p_message);
    end if;
  end logger_err;

  procedure logger_audits
  (
    p_message in varchar2,
    p_method  in app#types.key default null
  ) is
  begin
    if v_log_audits = true then
      logger_set_method(p_method);
      app#log_util.write_audit(c_package,
                               v_log_method,
                               p_message);
    end if;
  end logger_audits;
  /*************END STANDARD LOGGING CODE****************/

  procedure my_traced_procedure
  (
    p_input in varchar2,
    p_user  in varchar2
  ) is
  begin
    logger_trace('Entered Procedure',
                 'my_traced_procedure');
    logger_trace('Input was: ' || p_input);
    logger_trace('User was: ' || p_user);
  
    --do something
  
    logger_trace('Finished executable section');
  
  exception
    when others then
      logger_err(sqlerrm,
                 'my_traced_procedure');
  end my_traced_procedure;

  procedure my_other_procedure
  (
    p_input in varchar2,
    p_user  in varchar2
  ) is
  begin
    logger_trace('Entered Procedure',
                 'my_other_procedure');
    logger_trace('Input was: ' || p_input);
    logger_trace('User was: ' || p_user);
  
    --do something
  
    logger_trace('Calling my_traced_procedure to show callstack');
    my_traced_procedure(p_input,
                        p_user);
  
    --after sub procedure call, reset the method name
    logger_trace('Done with sub procedure call',
                 'my_other_procedure');
  
    logger_trace('Finished executable section');
  
  exception
    when others then
      logger_err(sqlerrm,
                 'my_other_procedure');
  end my_other_procedure;

  procedure audit_sensitive_access
  (
    p_user in varchar2,
    p_data out app#types.ref_cur
  ) is
  begin
    logger_audits('Entered sensitive cursor procedure',
                  'audit_sensitive_access');
    logger_audits('User was: ' || p_user);
  
    open p_data for
      select *
      from   user_objects o
      where  o.object_name like 'APP#%';
  
  end audit_sensitive_access;

  procedure test_it is
    v_user  app#types.osuser := app#env_util.osuser;
    v_input varchar2(4000) := 'test input value xxx';
  begin
  
    my_traced_procedure(v_input,
                        v_user);
    my_other_procedure(v_input,
                       v_user);
    v_user := 'web user';
    app#env_util.set_osuser(v_user);
    my_traced_procedure(v_input,
                        v_user);
    my_other_procedure(v_input,
                       v_user);
  
  end test_it;

  procedure test_with_logging is
  begin
  
    if v_log_tracing = false then
      raise_application_error(-20911,
                              'To Test: Recompile Package After Changing Log State');
    end if;
  
    test_it;
  
  end test_with_logging;

  procedure test_no_logging is
  begin
  
    if v_log_tracing = true then
      raise_application_error(-20911,
                              'To Test: Recompile Package After Changing Log State');
    end if;
  
    test_it;
  
  end test_no_logging;

begin
  --No init code needed in this case
  null;
end log#compiled_control;
/

