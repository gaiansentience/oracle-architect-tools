create or replace package body test#your_interface is

  procedure my_traced_procedure
  (
    p_input in varchar2,
    p_user  in varchar2
  ) is
  begin
    logger.trace('Entered Procedure',
                 'my_traced_procedure');
    logger.trace('Input was: ' || p_input);
    logger.trace('User was: ' || p_user);
  
    --do something
  
    logger.trace('Finished executable section');
  
  exception
    when others then
      logger.err(sqlerrm,
                 'my_traced_procedure');
  end my_traced_procedure;

  procedure my_other_procedure
  (
    p_input in varchar2,
    p_user  in varchar2
  ) is
  begin
    logger.trace('Entered Procedure',
                 'my_other_procedure');
    logger.trace('Input was: ' || p_input);
    logger.trace('User was: ' || p_user);
  
    --do something
  
    logger.trace('Calling my_traced_procedure to show callstack');
    my_traced_procedure(p_input,
                        p_user);
  
    --after sub procedure call, reset the method name
    logger.trace('Done with sub procedure call',
                 'my_other_procedure');
  
    logger.trace('Finished executable section');
  
  exception
    when others then
      logger.err(sqlerrm,
                 'my_other_procedure');
  end my_other_procedure;

  procedure audit_sensitive_access
  (
    p_user in varchar2,
    p_data out app#types.ref_cur
  ) is
  begin
    logger.audits('Entered sensitive cursor procedure',
                  'audit_sensitive_access');
    logger.audits('User was: ' || p_user);
  
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
  
    logger.set_env(true,
                   true,
                   true,
                   false);
    logger.init;
    test_it;
  
    logger.set_env(true,
                   false,
                   true,
                   false);
    logger.init;
  end test_with_logging;

  procedure test_no_logging is
  begin
  
    logger.set_env(false,
                   false,
                   false,
                   false);
    logger.init;
    test_it;
  
    logger.set_env(true,
                   false,
                   true,
                   false);
    logger.init;
  end test_no_logging;

begin
  -- Initialization, set up the logging state
  logger.init;
end test#your_interface;
/

