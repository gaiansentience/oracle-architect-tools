declare
    l_errors boolean := true;
    l_traces boolean := true;
    l_audits boolean := true;
    l_timers boolean := true;
begin
    --enable/disable all instrumentation
    app#log_util.set_global_environment(l_errors, l_traces, l_audits, l_timers);
end;
/
