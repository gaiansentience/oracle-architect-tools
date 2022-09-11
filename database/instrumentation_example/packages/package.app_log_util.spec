create or replace package app#log_util
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 3/01/2007
    -- Updated : 9/10/2022
    -- Purpose : writing trace and error log entries
  
    --global constant for unknown reference id
    c_reference_id_unknown constant app#env_util.reference_id := -999999;

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
        p_package       in app#env_util.environment_key,
        p_enable_errors in boolean default true,
        p_enable_traces in boolean default false,
        p_enable_audits in boolean default true,
        p_enable_timers in boolean default true
    );

    procedure get_package_environment
    (
        p_package       in app#env_util.environment_key,
        p_enable_errors out boolean,
        p_enable_traces out boolean,
        p_enable_audits out boolean,
        p_enable_timers out boolean
    );

    procedure set_all_package_environments
    (
        p_enable_errors in boolean default true,
        p_enable_traces in boolean default false,
        p_enable_audits in boolean default true,
        p_enable_timers in boolean default true
    ); 

    procedure remove_all_package_environments;

    --write an exception entry to the logs
    procedure write_exception
    (
        p_object  in app#env_util.environment_key,
        p_method  in app#env_util.environment_key,
        p_message in varchar2,
        p_ref_id  in app#env_util.reference_id default c_reference_id_unknown
    );

    --write a trace entry to the logs
    procedure write_trace
    (
        p_object  in app#env_util.environment_key,
        p_method  in app#env_util.environment_key,
        p_message in varchar2,
        p_ref_id  in app#env_util.reference_id default c_reference_id_unknown
    );

    --write an audit entry to the logs
    --(set the preserve on purge flag for all audits)
    procedure write_audit
    (
        p_object  in app#env_util.environment_key,
        p_method  in app#env_util.environment_key,
        p_message in varchar2,
        p_ref_id  in app#env_util.reference_id default c_reference_id_unknown
    );

    --write a timing entry to the logs
    procedure write_timing
    (
        p_object  in app#env_util.environment_key,
        p_method  in app#env_util.environment_key,
        p_start   in timestamp,
        p_stop    in timestamp,
        p_message in varchar2 default null,
        p_ref_id  in app#env_util.reference_id default c_reference_id_unknown
    );

    --expose simple purge functionality
    procedure purge_logs
    (
        p_days_to_keep in number default 7
    );

end app#log_util;