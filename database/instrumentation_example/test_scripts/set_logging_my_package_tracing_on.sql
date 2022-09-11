declare
   v_errors app#types.switch := true;
   v_traces app#types.switch := true;
   v_audits app#types.switch := true;
   v_timers app#types.switch := true;
begin
   -- Set the tracing on logging state for my_package
   test#my_package.logger.set_env(v_errors, v_traces, v_audits, v_timers);
end;
/
