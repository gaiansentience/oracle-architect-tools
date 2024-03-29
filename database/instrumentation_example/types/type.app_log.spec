create or replace type app#log 
authid current_user
as object
(
    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 05/26/2005
    -- Reviewed: 09/11/2022
    -- Purpose : encapsulate instrumentation in an object

    -- Attributes for callstack references
    object_name varchar2(35),
    method_name varchar2(35),   
    --Attributes for environment settings
    enable_exceptions number,
    enable_traces     number,
    enable_audits     number,
    enable_timers     number,
    start_time        timestamp,
    stop_time         timestamp,

    --Allow creating type instance with default attributes
    constructor function app#log
    (
        p_object_name in varchar2
    ) return self as result,

    --expose methods to set/get environment state
    member procedure set_env
    (
        p_enable_exceptions in boolean default true,
        p_enable_traces     in boolean default true,
        p_enable_audits     in boolean default true,
        p_enable_timers     in boolean default true
    ),

    member procedure get_env
    (
        p_enable_exceptions out boolean,
        p_enable_traces     out boolean,
        p_enable_audits     out boolean,
        p_enable_timers     out boolean
    ),

    member procedure get_state
    (
        p_enable_exceptions out boolean,
        p_enable_traces     out boolean,
        p_enable_audits     out boolean,
        p_enable_timers     out boolean
    ),

    --use dbms output to print current environment settings
    member procedure print_settings
    (
        p_show_environment in boolean default false
    ),
  
    --toggle methods are for local package testing
    --they only change object state
    --state is not persisted to environment table
    member procedure toggle_trace
    (
        p_enabled in boolean default true
    ),

    member procedure toggle_exceptions
    (
        p_enabled in boolean default true
    ),

    member procedure toggle_audits
    (
        p_enabled in boolean default true
    ),

    member procedure toggle_timing
    (
        p_enabled in boolean default true
    ),

    --expose init method to look up environment settings
    member procedure init,

    member procedure set_object_method(p_method in varchar2 default '#USE_CURRENT'),

    member function get_object_reference return varchar2,

    --expose various methods to write to the logs

    --write tracing instrumentation to the logs
    member procedure trace
    (
        p_message in varchar2,
        p_method  in varchar2 default '#USE_CURRENT'
    ),

    --write exceptions to the logs
    member procedure err
    (
        p_message in varchar2,
        p_method  in varchar2 default '#USE_CURRENT'
    ),

    --write audit entries to the logs
    member procedure audits
    (
        p_message in varchar2,
        p_method  in varchar2 default '#USE_CURRENT'
    ),

    member procedure timing_init,

    member procedure timing_start,

    member procedure timing_stop,

    --write timing entries to the logs
    member procedure timing
    (
        p_message in varchar2,
        p_method  in varchar2 default '#USE_CURRENT'
    )
    
)
not final;