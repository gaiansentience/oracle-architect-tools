create or replace package body log#control_without_interface is

  /*************BEGIN STANDARD LOGGING CODE****************/
  c_package            constant app#types.key := 'log#control_without_interface';
  c_log_trace          constant app#types.key := 'TRACE';
  c_log_error          constant app#types.key := 'ERROR';
  c_log_audit          constant app#types.key := 'AUDIT';
  c_log_env_var_traces constant app#types.key := c_package || '_ENABLE_' || c_log_trace;
  c_log_env_var_errors constant app#types.key := c_package || '_ENABLE_' || c_log_error;
  c_log_env_var_audits constant app#types.key := c_package || '_ENABLE_' || c_log_audit;
  v_log_method  app#types.key := 'INIT';
  v_log_tracing boolean := false;
  v_log_errors  boolean := true;
  v_log_audits  boolean := false;

  procedure logger_init is
  begin
  
    --set up logging control state
    v_log_tracing := app#env_util.get_switch(c_log_env_var_traces);
    v_log_errors  := app#env_util.get_switch(c_log_env_var_errors);
    v_log_audits  := app#env_util.get_switch(c_log_env_var_audits);
  
  end logger_init;

  procedure logger_get_env
  (
    p_enable_exceptions out boolean,
    p_enable_traces     out boolean,
    p_enable_audits     out boolean
  ) is
  begin
    logger_init;
    p_enable_exceptions := v_log_errors;
    p_enable_traces     := v_log_tracing;
    p_enable_audits     := v_log_audits;
  end logger_get_env;

  function logger_get_description(p_log_type in app#types.key) return app#types.description is
    v_description app#types.description := 'Controls Tracing For: ';
  begin
    return v_description || p_log_type;
  end logger_get_description;

  procedure logger_set_env
  (
    p_enable_exceptions in boolean default true,
    p_enable_traces     in boolean default false,
    p_enable_audits     in boolean default true
  ) is
  begin
    app#env_util.set_switch(c_log_env_var_traces,
                            p_enable_traces,
                            logger_get_description(c_log_trace));
  
    app#env_util.set_switch(c_log_env_var_errors,
                            p_enable_exceptions,
                            logger_get_description(c_log_error));
    app#env_util.set_switch(c_log_env_var_audits,
                            p_enable_audits,
                            logger_get_description(c_log_audit));
    logger_init;
  end logger_set_env;

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
  
    logger_set_env(true,
                   true,
                   true);
    logger_init;
    test_it;
  
    logger_set_env(true,
                   false,
                   true);
    logger_init;
  end test_with_logging;

  procedure test_no_logging is
  begin
  
    logger_set_env(false,
                   false,
                   false);
    logger_init;
    test_it;
  
    logger_set_env(true,
                   false,
                   true);
    logger_init;
  end test_no_logging;

begin
  -- Initialization, set up the logging state
  logger_init;
end log#control_without_interface;
/

