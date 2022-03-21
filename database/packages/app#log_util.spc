create or replace package app#log_util is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 3/1/2007 1:06:17 PM
  -- Purpose : writing trace and error log entries

  --global constant for unknown reference id
  c_id_unknown constant app#types.pk_id := -999;

  --expose set/get methods for controlling ALL writes to the log table
  procedure set_global_environment
  (
    p_enable_errors in boolean default true,
    p_enable_traces in boolean default false,
    p_enable_audits in boolean default true,
    p_enable_timers in boolean default true
  );

  procedure get_global_environment
  (
    p_enable_errors out boolean,
    p_enable_traces out boolean,
    p_enable_audits out boolean,
    p_enable_timers out boolean
  );

  --expose set/get methods for controlling specific package instrumentation
  procedure set_package_environment
  (
    p_package       in app#types.key,
    p_enable_errors in boolean default true,
    p_enable_traces in boolean default false,
    p_enable_audits in boolean default true,
    p_enable_timers in boolean default true
  );

  procedure get_package_environment
  (
    p_package       in app#types.key,
    p_enable_errors out boolean,
    p_enable_traces out boolean,
    p_enable_audits out boolean,
    p_enable_timers out boolean
  );

  --write an exception entry to the logs
  procedure write_exception
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_message in varchar2,
    p_ref_id  in app#types.pk_id default c_id_unknown
  );

  --write a trace entry to the logs
  procedure write_trace
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_message in varchar2,
    p_ref_id  in app#types.pk_id default c_id_unknown
  );

  --write an audit entry to the logs
  --(set the preserve on purge flag for all audits)
  procedure write_audit
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_message in varchar2,
    p_ref_id  in app#types.pk_id default c_id_unknown
  );

  --write a timing entry to the logs
  procedure write_timing
  (
    p_object  in app#types.key,
    p_method  in app#types.key,
    p_start   in timestamp,
    p_stop    in timestamp,
    p_message in varchar2 default null,
    p_ref_id  in app#types.pk_id default c_id_unknown
  );

  --expose simple purge functionality
  procedure purge_logs;

end app#log_util;
/

