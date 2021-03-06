create or replace type body app#log is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 05/26/2005 7:26:38 PM
  -- Reviewed: 03/21/2022
  -- Purpose : encapsulate common instrumentation methods

  constructor function app#log(p_object_name in varchar2) return self as result is
  begin
  
    self.object_name       := p_object_name;
    self.method_name       := null;
    self.enable_exceptions := 0;
    self.enable_traces     := 0;
    self.enable_audits     := 0;
    self.enable_timers     := 0;
    self.start_time        := null;
    self.stop_time         := null;
  
    return;
  
  end app#log;

  -- Implemenation For Member procedures and functions

  member procedure set_env
  (
    p_enable_exceptions in boolean default true,
    p_enable_traces     in boolean default true,
    p_enable_audits     in boolean default true,
    p_enable_timers     in boolean default true
  ) is
  begin
    app#log_util.set_package_environment(self.object_name,
                                         p_enable_exceptions,
                                         p_enable_traces,
                                         p_enable_audits,
                                         p_enable_timers);
  end set_env;

  member procedure get_env
  (
    p_enable_exceptions out boolean,
    p_enable_traces     out boolean,
    p_enable_audits     out boolean,
    p_enable_timers     out boolean
  ) is
  begin
    app#log_util.get_package_environment(self.object_name,
                                         p_enable_exceptions,
                                         p_enable_traces,
                                         p_enable_audits,
                                         p_enable_timers);
  end get_env;
  
  member procedure print_settings
  (
    p_show_environment in boolean default false
  )  
  is
    v_errors boolean := true;
    v_traces boolean := true;
    v_audits boolean := true;
    v_timing boolean := true;
    v_msg    varchar2(1000);
  
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
    --show the actual state of the logging object
    v_errors := app#bool.flag_to_switch(self.enable_exceptions);
    v_traces := app#bool.flag_to_switch(self.enable_traces);
    v_audits := app#bool.flag_to_switch(self.enable_audits);
    v_timing := app#bool.flag_to_switch(self.enable_timers);
    v_msg := 'Actual logging state for ' || self.object_name || ' is:';
    dbms_output.put_line(v_msg);
    print_enabled('ERRORS' , v_errors);
    print_enabled('TRACES' , v_traces);
    print_enabled('AUDITS' , v_audits);
    print_enabled('TIMING' , v_timing);

    --show the state set in the environment table for this object
    if p_show_environment then
      self.get_env(v_errors, v_traces,v_audits, v_timing);
      v_msg := 'Environment table logging state for ' || self.object_name || ' is:';
      dbms_output.put_line(v_msg);
      print_enabled('ERRORS' , v_errors);
      print_enabled('TRACES' , v_traces);
      print_enabled('AUDITS' , v_audits);
      print_enabled('TIMING' , v_timing);
    end if;
  
  end print_settings;
  
  --toggle methods are for local package testing
  --these methods only change object state
  --state is not persisted to environment table
  member procedure toggle_trace
  (
    p_enabled in boolean default true
  )
  is
  begin
  
    self.enable_traces := app#bool.switch_to_flag(p_enabled);
  
  end toggle_trace;

  member procedure toggle_exceptions
  (
    p_enabled in boolean default true
  )
  is
  begin
  
    self.enable_exceptions := app#bool.switch_to_flag(p_enabled);
  
  end toggle_exceptions;
  
  member procedure toggle_audits
  (
    p_enabled in boolean default true
  )
  is
  begin
  
    self.enable_audits := app#bool.switch_to_flag(p_enabled);
  
  end toggle_audits;
  
  member procedure toggle_timing
  (
    p_enabled in boolean default true
  )
  is
  begin
  
    self.enable_timers := app#bool.switch_to_flag(p_enabled);
  
  end toggle_timing;
  
  member procedure init is
    v_errors boolean := false;
    v_traces boolean := false;
    v_audits boolean := false;
    v_timers boolean := false;
  begin
  
    self.method_name := 'APP#LOG.INIT';
    get_env(v_errors,
            v_traces,
            v_audits,
            v_timers);
    self.enable_exceptions := app#bool.switch_to_flag(v_errors);
    self.enable_traces     := app#bool.switch_to_flag(v_traces);
    self.enable_audits     := app#bool.switch_to_flag(v_audits);
    self.enable_timers     := app#bool.switch_to_flag(v_timers);
    self.timing_init;
  
  end init;

  member procedure set_object_method(p_method in varchar2 default '#USE_CURRENT') is
  begin
    if nvl(p_method,
           '#USE_CURRENT') <> '#USE_CURRENT' then
      self.method_name := p_method;
    end if;
  end set_object_method;

  member function get_object_reference return varchar2 is
  begin
    return self.object_name || '.' || self.method_name;
  end get_object_reference;

  member procedure trace
  (
    p_message in varchar2,
    p_method  in varchar2 default '#USE_CURRENT'
  ) is
  begin
    if self.enable_traces = 1 then
      set_object_method(p_method);
      app#log_util.write_trace(self.object_name,
                               self.method_name,
                               p_message);
    end if;
  end trace;

  member procedure err
  (
    p_message in varchar2,
    p_method  in varchar2 default '#USE_CURRENT'
  ) is
  begin
    if self.enable_exceptions = 1 then
      set_object_method(p_method);
      app#log_util.write_exception(self.object_name,
                                   self.method_name,
                                   p_message);
    end if;
  end err;

  member procedure audits
  (
    p_message in varchar2,
    p_method  in varchar2 default '#USE_CURRENT'
  ) is
  begin
    if self.enable_audits = 1 then
      set_object_method(p_method);
      app#log_util.write_audit(self.object_name,
                               self.method_name,
                               p_message);
    end if;
  end audits;

  member procedure timing_init is
  begin
  
    self.start_time := null;
    self.stop_time  := null;
  
  end timing_init;

  member procedure timing_start is
  begin
  
    --reset the timer attributes
    self.timing_init;
  
    self.start_time := systimestamp;
  
  end timing_start;

  member procedure timing_stop is
  begin
  
    self.stop_time := systimestamp;
  
  end timing_stop;

  member procedure timing
  (
    p_message in varchar2,
    p_method  in varchar2 default '#USE_CURRENT'
  ) is
  begin
    if self.enable_timers = 1 then
      set_object_method(p_method);
      app#log_util.write_timing(self.object_name,
                                self.method_name,
                                self.start_time,
                                self.stop_time,
                                p_message);
    
      self.timing_init;
    
    end if;
  end timing;

end;
/

