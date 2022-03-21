declare
v_errors app#types.switch := true;
v_traces app#types.switch := false;
v_audits app#types.switch := true;
v_timers app#types.switch := false;
begin
  -- Set the default/normal logging state for my_package
  app#log_util.set_global_environment(v_errors, v_traces, v_audits, v_timers);
end;
/
