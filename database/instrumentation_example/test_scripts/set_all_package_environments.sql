declare
    l_errors boolean := true;
    l_traces boolean := false;
    l_audits boolean := true;
    l_timers boolean := true;
begin

    app#log_util.set_all_package_environments(
        p_enable_errors => l_errors,
        p_enable_traces => l_traces,
        p_enable_audits => l_audits,
        p_enable_timers => l_timers);

end;
/