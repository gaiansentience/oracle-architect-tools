--view logging environment for my_package
set serveroutput on
declare
    v_errors boolean := true;
    v_traces boolean := true;
    v_audits boolean := true;
    v_timing boolean := true;
procedure print_enabled(p_type in varchar2, p_enabled in boolean)
is
    v_state varchar2(4000):= ' is disabled (will not write to logs)';
begin
    if p_enabled = true then 
        v_state := ' is enabled (will write to logs)';
    end if;
    dbms_output.put_line(p_type || v_state);
end print_enabled;

begin
    --get logging settings for the package
    test#my_package.logger.get_env(v_errors, v_traces,v_audits, v_timing);
  
    dbms_output.put_line('Logging State For MY_PACKAGE IS:');
    print_enabled('ERRORS' , v_errors);
    print_enabled('TRACES' , v_traces);
    print_enabled('AUDITS' , v_audits);
    print_enabled('TIMING' , v_timing);
  
end;