create or replace package body test#interface is

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

    raise_application_error(-20100, 'raising custom application error');
    logger.trace('Finished executable section');

  exception
    when others then
      --reset the method name in exception handler if error was in sub procedure call
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

  procedure timing_long_process
  (
    p_process in varchar2 default 'JOB PROCESS',
    p_sleep in number default 5
  ) is
  begin
    logger.trace('Entered Procedure, starting timing',
                 'timing_long_process');

    logger.timing_start;

    dbms_session.sleep(p_sleep);

    logger.timing_stop;
    logger.timing(p_process, 'timing_long_process');
    
    --reset the timer and just start it
    --developer forgot to stop the timer
    logger.timing_init;
    logger.timing_start;
    logger.timing(p_process || ' second process'); 

  end timing_long_process;


  procedure test_it is
    v_user  app#types.osuser := app#env_util.osuser;
    v_input varchar2(4000) := 'test input value xxx';
    v_data app#types.ref_cur;
    v_process varchar2(4000) := 'long running process';
  begin

    my_traced_procedure(v_input, v_user);
    my_other_procedure(v_input, v_user);
    audit_sensitive_access(v_user, v_data);
    timing_long_process(v_process,1.75);
    v_user := 'web user';
    app#env_util.set_osuser(v_user);
    my_traced_procedure(v_input, v_user);
    my_other_procedure(v_input, v_user);
    audit_sensitive_access(v_user, v_data);
    timing_long_process(v_process);

  end test_it;

  procedure test_with_logging is
  begin

    logger.set_env(true,
                   true,
                   true,
                   true);
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
end test#interface;