rem Differences between OPP@TEST10 and OPP@DEV11G, created on 9/1/2007
rem Press Apply button, or run in Command Window or SQL*Plus connected as OPP@DEV11G

---------------------------------
--  New table app#environment  --
---------------------------------
-- Create table
create table APP#ENVIRONMENT
(
  ENV_ID       NUMBER,
  SETTING      VARCHAR2(100),
  VALUE        VARCHAR2(4000),
  PURPOSE      VARCHAR2(100),
  CREATED_DATE DATE default SYSDATE,
  CREATED_BY   VARCHAR2(35),
  UPDATED_DATE DATE,
  UPDATED_BY   VARCHAR2(35)
)
;

--------------------------
--  New table app#logs  --
--------------------------
-- Create table
create table APP#LOGS
(
  LOG_ID            NUMBER,
  LOG_TYPE          VARCHAR2(20),
  OBJECT_NAME       VARCHAR2(35),
  OBJECT_METHOD     VARCHAR2(35),
  REFERENCE_ID      NUMBER default -999,
  MESSAGE           VARCHAR2(4000),
  PRESERVE_ON_PURGE NUMBER default 0,
  CREATED_BY        VARCHAR2(35),
  CREATED_DATE      DATE default SYSDATE
)
;

-----------------------------------
--  New sequence app#log_seq_id  --
-----------------------------------
-- Create sequence 
create sequence APP#LOG_SEQ_ID
minvalue 1
maxvalue 999999999999
start with 85
increment by 1
nocache;

-------------------------------
--  New view app#logs_daily  --
-------------------------------
create or replace view app#logs_daily as
select log_type,
       object_name,
       object_method,
       created_by,
       to_char(created_date, 'dd mm yyyy hh24:mi:ss') created_date,
       substr(message, 1, 100) message
from   app#logs
where  created_date > (sysdate - 1)
order  by created_date desc
/

--------------------------------
--  New view app#logs_hourly  --
--------------------------------
create or replace view app#logs_hourly as
select log_type,
       object_name,
       object_method,
       created_by,
       to_char(created_date, 'dd mm yyyy hh24:mi:ss') created_date,
       substr(message, 1, 100) message
from   app#logs
where  created_date > (sysdate - 1 / 24)
order  by created_date desc
/

-----------------------------
--  New package app#types  --
-----------------------------
create or replace package app#types is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:11:30 PM
   -- Purpose : Define utility types

   -- Public type declarations
   type ref_cur is ref cursor;

   subtype osuser is varchar2(35);

   subtype pk_id is number(12);

   subtype key is varchar2(100);

   subtype val is varchar2(4000);

   subtype description is varchar2(4000);

   --flag type for using booleans in schema types or tables
   subtype flag is number(1);
   --boolean type for using booleans in plsql
   subtype switch is boolean;

   --conversions to support settings that are numeric flags or boolean switches
   --numeric flags are used to store booleans in tables
   --boolean switches are used to represent flags in plsql code

   function val_to_flag(p_val in app#types.val default 'FALSE') return app#types.flag;

   function flag_to_val(p_flag in app#types.flag default 0) return app#types.val;

   function switch_to_flag(p_switch in app#types.switch default false) return app#types.flag;

   function flag_to_switch(p_flag in app#types.flag default 0) return app#types.switch;

   function switch_to_val(p_switch in app#types.switch default false) return app#types.val;

   function val_to_switch(p_val in app#types.val default 'FALSE') return app#types.switch;

end app#types;
/

--------------------------------
--  New package app#cvt_util  --
--------------------------------
create or replace package app#cvt_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:10:32 PM
   -- Purpose : Manage application environment settings

   --set an override for the osuser reported by Oracle
   --useful for distributed applications where osuser is not available
   procedure set_osuser(p_osuser in app#types.osuser);

   --get the osuser, if override is used forces a call to set_osuser
   function osuser(p_override in app#types.osuser default null) return app#types.osuser;

   --verifies that a variable has been defined in environment
   function value_exists(p_key in app#types.key) return app#types.switch;

   --expose set/get methods for storing values in environment
   procedure set_value
   (
      p_key     in app#types.key,
      p_value   in app#types.val,
      p_purpose in app#types.description default null
   );

   function get_value(p_key in app#types.key) return app#types.val;

   --expose set/get methods for storing numeric flags in environment
   --numeric flags are used to store booleans in tables
   procedure set_flag
   (
      p_key     in app#types.key,
      p_flag    in app#types.flag default 0,
      p_purpose in app#types.description
   );

   --return default value of 0 for undefined flags
   function get_flag(p_key in app#types.key) return app#types.flag;

   --expose set/get methods for storing boolean switches in environment
   --boolean switches are used to expose flags to plsql
   procedure set_switch
   (
      p_key     in app#types.key,
      p_switch  in app#types.switch default false,
      p_purpose in app#types.description
   );

   --return default value of false for undefined switches
   function get_switch(p_key in app#types.key) return app#types.switch;

end app#cvt_util;
/

--------------------------------
--  New package app#env_util  --
--------------------------------
create or replace package app#env_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:10:32 PM
   -- Purpose : Manage application environment settings

   --set an override for the osuser reported by Oracle
   --useful for distributed applications where osuser is not available
   procedure set_osuser(p_osuser in app#types.osuser);

   --get the osuser, if override is used forces a call to set_osuser
   function osuser(p_override in app#types.osuser default null) return app#types.osuser;

   --verifies that a variable has been defined in environment
   function value_exists(p_key in app#types.key) return app#types.switch;

   --expose set/get methods for storing values in environment
   procedure set_value
   (
      p_key     in app#types.key,
      p_value   in app#types.val,
      p_purpose in app#types.description default null
   );

   function get_value(p_key in app#types.key) return app#types.val;

   --expose set/get methods for storing numeric flags in environment
   --numeric flags are used to store booleans in tables
   procedure set_flag
   (
      p_key     in app#types.key,
      p_flag    in app#types.flag default 0,
      p_purpose in app#types.description
   );

   --return default value of 0 for undefined flags
   function get_flag(p_key in app#types.key) return app#types.flag;

   --expose set/get methods for storing boolean switches in environment
   --boolean switches are used to expose flags to plsql
   procedure set_switch
   (
      p_key     in app#types.key,
      p_switch  in app#types.switch default false,
      p_purpose in app#types.description
   );

   --return default value of false for undefined switches
   function get_switch(p_key in app#types.key) return app#types.switch;

end app#env_util;
/

--------------------------------
--  New package app#fmt_util  --
--------------------------------
create or replace package app#fmt_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:10:32 PM
   -- Purpose : Manage application environment settings

   --set an override for the osuser reported by Oracle
   --useful for distributed applications where osuser is not available
   procedure set_osuser(p_osuser in app#types.osuser);

   --get the osuser, if override is used forces a call to set_osuser
   function osuser(p_override in app#types.osuser default null) return app#types.osuser;

   --verifies that a variable has been defined in environment
   function value_exists(p_key in app#types.key) return app#types.switch;

   --expose set/get methods for storing values in environment
   procedure set_value
   (
      p_key     in app#types.key,
      p_value   in app#types.val,
      p_purpose in app#types.description default null
   );

   function get_value(p_key in app#types.key) return app#types.val;

   --expose set/get methods for storing numeric flags in environment
   --numeric flags are used to store booleans in tables
   procedure set_flag
   (
      p_key     in app#types.key,
      p_flag    in app#types.flag default 0,
      p_purpose in app#types.description
   );

   --return default value of 0 for undefined flags
   function get_flag(p_key in app#types.key) return app#types.flag;

   --expose set/get methods for storing boolean switches in environment
   --boolean switches are used to expose flags to plsql
   procedure set_switch
   (
      p_key     in app#types.key,
      p_switch  in app#types.switch default false,
      p_purpose in app#types.description
   );

   --return default value of false for undefined switches
   function get_switch(p_key in app#types.key) return app#types.switch;

end app#fmt_util;
/

--------------------------------
--  New package app#log_util  --
--------------------------------
create or replace package app#log_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:06:17 PM
   -- Purpose : writing trace and error log entries

   --global constant for unknown reference id
   c_id_unknown constant app#types.pk_id := -999;

   --expose set/get methods for controlling ALL writes to the log table
   procedure set_global_environment
   (
      p_enable_errors in app#types.switch default true,
      p_enable_traces in app#types.switch default false,
      p_enable_audits in app#types.switch default true,
      p_enable_timers in app#types.switch default true
   );

   procedure get_global_environment
   (
      p_enable_errors out app#types.switch,
      p_enable_traces out app#types.switch,
      p_enable_audits out app#types.switch,
      p_enable_timers out app#types.switch
   );

   --expose set/get methods for controlling specific package instrumentation
   procedure set_package_environment
   (
      p_package       in app#types.key,
      p_enable_errors in app#types.switch default true,
      p_enable_traces in app#types.switch default false,
      p_enable_audits in app#types.switch default true,
      p_enable_timers in app#types.switch default true
   );

   procedure get_package_environment
   (
      p_package       in app#types.key,
      p_enable_errors out app#types.switch,
      p_enable_traces out app#types.switch,
      p_enable_audits out app#types.switch,
      p_enable_timers out app#types.switch
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
      p_message in varchar2,
      p_ref_id  in app#types.pk_id default c_id_unknown
   );

   --expose simple purge functionality
   procedure purge_logs;

end app#log_util;
/

-----------------------------------
--  New package app#timing_util  --
-----------------------------------
create or replace package app#timing_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:11:30 PM
   -- Purpose : Define utility types

   -- Public type declarations
   type ref_cur is ref cursor;

   subtype osuser is varchar2(35);

   subtype pk_id is number(12);

   subtype key is varchar2(100);

   subtype val is varchar2(4000);

   subtype description is varchar2(4000);

   --flag type for using booleans in schema types or tables
   subtype flag is number(1);
   --boolean type for using booleans in plsql
   subtype switch is boolean;

   --conversions to support settings that are numeric flags or boolean switches
   --numeric flags are used to store booleans in tables
   --boolean switches are used to represent flags in plsql code

   function val_to_flag(p_val in app#types.val default 'FALSE') return app#types.flag;

   function flag_to_val(p_flag in app#types.flag default 0) return app#types.val;

   function switch_to_flag(p_switch in app#types.switch default false) return app#types.flag;

   function flag_to_switch(p_flag in app#types.flag default 0) return app#types.switch;

   function switch_to_val(p_switch in app#types.switch default false) return app#types.val;

   function val_to_switch(p_val in app#types.val default 'FALSE') return app#types.switch;

end app#timing_util;
/

-----------------------------
--  New type app#log_type  --
-----------------------------
create or replace type app#log_type  as object
(
-- Author  : Anthony Harper, Information Architects
-- Created : 5/26/2005 7:26:38 PM
-- Purpose : encapsulate instrumentation in an object

-- Attributes for callstack references
   object_name varchar2(35),
   method_name varchar2(35),
--Attributes for environment settings
   enable_exceptions number,
   enable_traces     number,
   enable_audits     number,
   enable_timers     number,

--Allow creating type instance with default attributes
   constructor function app#log_type(p_object_name in varchar2) return self as result,

-- Member functions and procedures

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

--write timing entries to the logs
   member procedure timing
   (
      p_message in varchar2,
      p_method  in varchar2 default '#USE_CURRENT'
   )
)
not final;
/

------------------------------
--  New package my_package  --
------------------------------
create or replace package my_package is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 8/25/2007 6:24:26 PM
   -- Purpose : example package for logging calls

   --Expose the logging object
   --to reset the environment at runtime:
   --use my_package.logger.set_env(errors, traces, audits)
   logger app#log_type := app#log_type('my_package');

   procedure my_traced_procedure
   (
      p_input in varchar2,
      p_user  in varchar2
   );

   procedure my_other_procedure
   (
      p_input in varchar2,
      p_user  in varchar2
   );

   procedure audit_sensitive_access
   (
      p_user in varchar2,
      p_data out app#types.ref_cur
   );

   procedure test_it;

   procedure test_with_logging;

   procedure test_no_logging;

end my_package;
/

-------------------------------------
--  New package body app#cvt_util  --
-------------------------------------
create or replace package body app#cvt_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:10:32 PM
   -- Purpose : Manage application environment settings

   v_osuser app#types.osuser;

   procedure initialize is
   begin
      --get the logged in user from oracle
      --some system sessions, like dbms_job, report null osuser
      v_osuser := SYS_CONTEXT('USERENV', 'OS_USER');

   end initialize;

   --set an override for the osuser reported by Oracle
   --useful for distributed applications where osuser is not available
   procedure set_osuser(p_osuser in app#types.osuser) is
   begin

      if p_osuser is not null then
         v_osuser := p_osuser;
      end if;

   end set_osuser;

   --get the osuser, if override is used forces a call to set_osuser
   function osuser(p_override in app#types.osuser default null) return app#types.osuser is
   begin

      if p_override is not null then
         set_osuser(p_override);
      end if;

      return v_osuser;

   end osuser;


   --verifies that a variable has been defined in environment
   function value_exists(p_key in app#types.key) return app#types.switch is
      i        number := 0;
      v_exists app#types.switch := false;
   begin

      select count(*) into i from app#environment e where e.setting = p_key;

      if i > 0 then
         v_exists := true;
      end if;

      return v_exists;

   end value_exists;

   --expose set/get methods for storing values in environment
   procedure set_value
   (
      p_key     in app#types.key,
      p_value   in app#types.val,
      p_purpose in app#types.description default null
   ) is
      r app#environment%rowtype;
   begin

      r.setting      := p_key;
      r.value        := p_value;
      r.purpose      := p_purpose;
      r.created_date := sysdate;
      r.created_by   := app#env_util.osuser;
      r.updated_date := sysdate;
      r.updated_by   := app#env_util.osuser;

      if value_exists(p_key) = false then

         insert into app#environment values r;

      else

         update app#environment e
         set    e.value        = r.value,
                e.updated_date = r.updated_date,
                e.updated_by   = r.updated_by
         where  e.setting = p_key;

      end if;

      commit;

   end set_value;

   function get_value(p_key in app#types.key) return app#types.val is
      v_value app#types.val;
   begin

      if value_exists(p_key) then

         select e.value into v_value from app#environment e where e.setting = p_key;

      else
         --environment setting has not been saved to table
         v_value := p_key || ' is not defined.';
      end if;

      return v_value;

   end get_value;

   --expose set/get methods for storing numeric flags in environment
   --numeric flags are used to store booleans in tables
   procedure set_flag
   (
      p_key     in app#types.key,
      p_flag    in app#types.flag default 0,
      p_purpose in app#types.description
   ) is
   begin
      set_value(p_key, app#types.flag_to_val(p_flag), p_purpose);
   end set_flag;

   --return default value of 0 for undefined flags
   function get_flag(p_key in app#types.key) return app#types.flag is
   begin
      return app#types.val_to_flag(get_value(p_key));
   end get_flag;

   --expose set/get methods for storing boolean switches in environment
   --boolean switches are used to expose flags to plsql
   procedure set_switch
   (
      p_key     in app#types.key,
      p_switch  in app#types.switch default false,
      p_purpose in app#types.description
   ) is
   begin
      set_value(p_key, app#types.switch_to_val(p_switch), p_purpose);
   end set_switch;

   --return default value of false for undefined switches
   function get_switch(p_key in app#types.key) return app#types.switch is
   begin
      return app#types.val_to_switch(get_value(p_key));
   end get_switch;

begin
   initialize;
end app#cvt_util;
/

-------------------------------------
--  New package body app#env_util  --
-------------------------------------
create or replace package body app#env_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:10:32 PM
   -- Purpose : Manage application environment settings

   v_osuser app#types.osuser;

   procedure initialize is
   begin
      --get the logged in user from oracle
      --some system sessions, like dbms_job, report null osuser
      v_osuser := SYS_CONTEXT('USERENV', 'OS_USER');

   end initialize;

   --set an override for the osuser reported by Oracle
   --useful for distributed applications where osuser is not available
   procedure set_osuser(p_osuser in app#types.osuser) is
   begin

      if p_osuser is not null then
         v_osuser := p_osuser;
      end if;

   end set_osuser;

   --get the osuser, if override is used forces a call to set_osuser
   function osuser(p_override in app#types.osuser default null) return app#types.osuser is
   begin

      if p_override is not null then
         set_osuser(p_override);
      end if;

      return v_osuser;

   end osuser;


   --verifies that a variable has been defined in environment
   function value_exists(p_key in app#types.key) return app#types.switch is
      i        number := 0;
      v_exists app#types.switch := false;
   begin

      select count(*) into i from app#environment e where e.setting = p_key;

      if i > 0 then
         v_exists := true;
      end if;

      return v_exists;

   end value_exists;

   --expose set/get methods for storing values in environment
   procedure set_value
   (
      p_key     in app#types.key,
      p_value   in app#types.val,
      p_purpose in app#types.description default null
   ) is
      r app#environment%rowtype;
   begin

      r.setting      := p_key;
      r.value        := p_value;
      r.purpose      := p_purpose;
      r.created_date := sysdate;
      r.created_by   := app#env_util.osuser;
      r.updated_date := sysdate;
      r.updated_by   := app#env_util.osuser;

      if value_exists(p_key) = false then

         insert into app#environment values r;

      else

         update app#environment e
         set    e.value        = r.value,
                e.updated_date = r.updated_date,
                e.updated_by   = r.updated_by
         where  e.setting = p_key;

      end if;

      commit;

   end set_value;

   function get_value(p_key in app#types.key) return app#types.val is
      v_value app#types.val;
   begin

      if value_exists(p_key) then

         select e.value into v_value from app#environment e where e.setting = p_key;

      else
         --environment setting has not been saved to table
         v_value := p_key || ' is not defined.';
      end if;

      return v_value;

   end get_value;

   --expose set/get methods for storing numeric flags in environment
   --numeric flags are used to store booleans in tables
   procedure set_flag
   (
      p_key     in app#types.key,
      p_flag    in app#types.flag default 0,
      p_purpose in app#types.description
   ) is
   begin
      set_value(p_key, app#types.flag_to_val(p_flag), p_purpose);
   end set_flag;

   --return default value of 0 for undefined flags
   function get_flag(p_key in app#types.key) return app#types.flag is
   begin
      return app#types.val_to_flag(get_value(p_key));
   end get_flag;

   --expose set/get methods for storing boolean switches in environment
   --boolean switches are used to expose flags to plsql
   procedure set_switch
   (
      p_key     in app#types.key,
      p_switch  in app#types.switch default false,
      p_purpose in app#types.description
   ) is
   begin
      set_value(p_key, app#types.switch_to_val(p_switch), p_purpose);
   end set_switch;

   --return default value of false for undefined switches
   function get_switch(p_key in app#types.key) return app#types.switch is
   begin
      return app#types.val_to_switch(get_value(p_key));
   end get_switch;

begin
   initialize;
end app#env_util;
/

-------------------------------------
--  New package body app#fmt_util  --
-------------------------------------
create or replace package body app#fmt_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:10:32 PM
   -- Purpose : Manage application environment settings

   v_osuser app#types.osuser;

   procedure initialize is
   begin
      --get the logged in user from oracle
      --some system sessions, like dbms_job, report null osuser
      v_osuser := SYS_CONTEXT('USERENV', 'OS_USER');

   end initialize;

   --set an override for the osuser reported by Oracle
   --useful for distributed applications where osuser is not available
   procedure set_osuser(p_osuser in app#types.osuser) is
   begin

      if p_osuser is not null then
         v_osuser := p_osuser;
      end if;

   end set_osuser;

   --get the osuser, if override is used forces a call to set_osuser
   function osuser(p_override in app#types.osuser default null) return app#types.osuser is
   begin

      if p_override is not null then
         set_osuser(p_override);
      end if;

      return v_osuser;

   end osuser;


   --verifies that a variable has been defined in environment
   function value_exists(p_key in app#types.key) return app#types.switch is
      i        number := 0;
      v_exists app#types.switch := false;
   begin

      select count(*) into i from app#environment e where e.setting = p_key;

      if i > 0 then
         v_exists := true;
      end if;

      return v_exists;

   end value_exists;

   --expose set/get methods for storing values in environment
   procedure set_value
   (
      p_key     in app#types.key,
      p_value   in app#types.val,
      p_purpose in app#types.description default null
   ) is
      r app#environment%rowtype;
   begin

      r.setting      := p_key;
      r.value        := p_value;
      r.purpose      := p_purpose;
      r.created_date := sysdate;
      r.created_by   := app#env_util.osuser;
      r.updated_date := sysdate;
      r.updated_by   := app#env_util.osuser;

      if value_exists(p_key) = false then

         insert into app#environment values r;

      else

         update app#environment e
         set    e.value        = r.value,
                e.updated_date = r.updated_date,
                e.updated_by   = r.updated_by
         where  e.setting = p_key;

      end if;

      commit;

   end set_value;

   function get_value(p_key in app#types.key) return app#types.val is
      v_value app#types.val;
   begin

      if value_exists(p_key) then

         select e.value into v_value from app#environment e where e.setting = p_key;

      else
         --environment setting has not been saved to table
         v_value := p_key || ' is not defined.';
      end if;

      return v_value;

   end get_value;

   --expose set/get methods for storing numeric flags in environment
   --numeric flags are used to store booleans in tables
   procedure set_flag
   (
      p_key     in app#types.key,
      p_flag    in app#types.flag default 0,
      p_purpose in app#types.description
   ) is
   begin
      set_value(p_key, app#types.flag_to_val(p_flag), p_purpose);
   end set_flag;

   --return default value of 0 for undefined flags
   function get_flag(p_key in app#types.key) return app#types.flag is
   begin
      return app#types.val_to_flag(get_value(p_key));
   end get_flag;

   --expose set/get methods for storing boolean switches in environment
   --boolean switches are used to expose flags to plsql
   procedure set_switch
   (
      p_key     in app#types.key,
      p_switch  in app#types.switch default false,
      p_purpose in app#types.description
   ) is
   begin
      set_value(p_key, app#types.switch_to_val(p_switch), p_purpose);
   end set_switch;

   --return default value of false for undefined switches
   function get_switch(p_key in app#types.key) return app#types.switch is
   begin
      return app#types.val_to_switch(get_value(p_key));
   end get_switch;

begin
   initialize;
end app#fmt_util;
/

-------------------------------------
--  New package body app#log_util  --
-------------------------------------
create or replace package body app#log_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:06:17 PM
   -- Purpose : writing trace and error log entries

   c_max_table_varchar constant integer := 4000;
   c_max_object_name   constant integer := 35;

   --constants for environment variables
   c_env_enable_pkg    constant app#types.key := 'ENABLE_PACKAGE_LOGS_FOR';
   c_env_enable_global constant app#types.key := 'ENABLE_GLOBAL_LOGS_FOR';

   --constants for log entry types
   c_error constant app#types.key := 'EXCEPTION';
   c_trace constant app#types.key := 'TRACE';
   c_audit constant app#types.key := 'AUDIT';
   c_timer constant app#types.key := 'TIMER';

   c_unspecified constant app#types.key := 'UNSPECIFIED';
   c_underscore  constant app#types.key := '_';

   --variables to control ALL log activity
   v_enable_exceptions app#types.switch := true;
   v_enable_traces     app#types.switch := false;
   v_enable_audits     app#types.switch := true;
   v_enable_timers     app#types.switch := true;

   --private procedure to set environment switch value
   procedure set_env_switch
   (
      p_env_variable in app#types.key,
      p_enabled      in app#types.switch
   ) is
      v_description app#types.description;
   begin
      v_description := initcap(replace(p_env_variable, c_underscore, ' '));
      app#env_util.set_switch(p_env_variable, p_enabled, v_description);
   end set_env_switch;

   --localized for demonstration, should move to app#fmt_util package
   procedure append
   (
      p_target in out varchar2,
      p_value  in varchar2,
      p_prefix in varchar2 default null,
      p_suffix in varchar2 default null
   ) is
   begin
      if p_prefix is not null then
         p_target := p_target || p_prefix;
      end if;
      p_target := p_target || p_value;
      if p_suffix is not null then
         p_target := p_target || p_suffix;
      end if;
   end append;

   --build a logging environment variable name
   function fmt_env_var
   (
      p_variable_base in app#types.key,
      p_log_type      in app#types.key,
      p_package       in app#types.key default null
   ) return app#types.key is
      v_variable app#types.key;
   begin
      append(v_variable, p_variable_base);
      if p_package is not null then
         append(v_variable, p_package, c_underscore);
      end if;
      append(v_variable, p_log_type, c_underscore);
      return upper(v_variable);
   end fmt_env_var;

   --expose set/get methods for controlling ALL writes to the log table
   procedure set_global_environment
   (
      p_enable_errors in app#types.switch default true,
      p_enable_traces in app#types.switch default false,
      p_enable_audits in app#types.switch default true,
      p_enable_timers in app#types.switch default true
   ) is
   begin
   
      set_env_switch(fmt_env_var(c_env_enable_global, c_error), p_enable_errors);
      set_env_switch(fmt_env_var(c_env_enable_global, c_trace), p_enable_traces);
      set_env_switch(fmt_env_var(c_env_enable_global, c_audit), p_enable_audits);
      set_env_switch(fmt_env_var(c_env_enable_global, c_timer), p_enable_timers);
   
   end set_global_environment;

   procedure get_global_environment
   (
      p_enable_errors out app#types.switch,
      p_enable_traces out app#types.switch,
      p_enable_audits out app#types.switch,
      p_enable_timers out app#types.switch
   ) is
   begin
   
      p_enable_errors := app#env_util.get_switch(fmt_env_var(c_env_enable_global, c_error));
      p_enable_traces := app#env_util.get_switch(fmt_env_var(c_env_enable_global, c_trace));
      p_enable_audits := app#env_util.get_switch(fmt_env_var(c_env_enable_global, c_audit));
      p_enable_timers := app#env_util.get_switch(fmt_env_var(c_env_enable_global, c_timer));
   
   end get_global_environment;

   procedure initialize is
   begin
      --set global logging state
      get_global_environment(v_enable_exceptions, v_enable_traces, v_enable_audits, v_enable_timers);
   end initialize;

   function fmt_pkg_env_var
   (
      p_package  in app#types.key,
      p_log_type in app#types.key
   ) return app#types.key is
   begin
      return fmt_env_var(c_env_enable_pkg, p_log_type, p_package);
   end fmt_pkg_env_var;

   --expose set/get methods for controlling specific package instrumentation
   procedure set_package_environment
   (
      p_package       in app#types.key,
      p_enable_errors in app#types.switch default true,
      p_enable_traces in app#types.switch default false,
      p_enable_audits in app#types.switch default true,
      p_enable_timers in app#types.switch default true
   ) is
   begin
   
      set_env_switch(fmt_pkg_env_var(p_package, c_error), p_enable_errors);
      set_env_switch(fmt_pkg_env_var(p_package, c_trace), p_enable_traces);
      set_env_switch(fmt_pkg_env_var(p_package, c_audit), p_enable_audits);
      set_env_switch(fmt_pkg_env_var(p_package, c_timer), p_enable_timers);
   
   end set_package_environment;

   procedure get_package_environment
   (
      p_package       in app#types.key,
      p_enable_errors out app#types.switch,
      p_enable_traces out app#types.switch,
      p_enable_audits out app#types.switch,
      p_enable_timers out app#types.switch
   ) is
   begin
   
      p_enable_errors := app#env_util.get_switch(fmt_pkg_env_var(p_package, c_error));
      p_enable_traces := app#env_util.get_switch(fmt_pkg_env_var(p_package, c_trace));
      p_enable_audits := app#env_util.get_switch(fmt_pkg_env_var(p_package, c_audit));
      p_enable_timers := app#env_util.get_switch(fmt_pkg_env_var(p_package, c_timer));
   
   end get_package_environment;

   procedure write_entry(r_entry in app#logs%rowtype) is
      pragma autonomous_transaction;
   begin
   
      insert into app#logs values r_entry;
   
      commit;
   
   exception
      when others then
         rollback;
         --DO NOT RAISE EXCEPTIONS FROM THE ERROR LOGGING MECHANISM
   end write_entry;

   procedure set_values
   (
      r_entry    in out app#logs%rowtype,
      p_log_type in app#types.key,
      p_object   in app#types.key,
      p_method   in app#types.key,
      p_message  in varchar2,
      p_ref_id   in app#types.pk_id
   ) is
      function cut
      (
         p_val    in varchar2,
         p_maxlen in number
      ) return varchar2 is
      begin
         return substr(p_val, 1, p_maxlen);
      end cut;
   begin
   
      r_entry.log_type := p_log_type;
      if r_entry.log_type = c_audit then
         r_entry.preserve_on_purge := 1;
      else
         r_entry.preserve_on_purge := 0;
      end if;
      r_entry.object_name   := nvl(cut(p_object, c_max_object_name), c_unspecified);
      r_entry.object_method := nvl(cut(p_method, c_max_object_name), c_unspecified);
      r_entry.reference_id  := nvl(p_ref_id, -999);
      r_entry.message       := cut(p_message, c_max_table_varchar);
      r_entry.created_by    := app#env_util.osuser;
      r_entry.created_date  := sysdate;
   
   end set_values;

   --write an exception entry to the logs
   procedure write_exception
   (
      p_object  in app#types.key,
      p_method  in app#types.key,
      p_message in varchar2,
      p_ref_id  in app#types.pk_id default c_id_unknown
   ) is
      r_entry app#logs%rowtype;
   begin
      set_values(r_entry, c_error, p_object, p_method, p_message, p_ref_id);
      write_entry(r_entry);
   end write_exception;

   --write a trace entry to the logs
   procedure write_trace
   (
      p_object  in app#types.key,
      p_method  in app#types.key,
      p_message in varchar2,
      p_ref_id  in app#types.pk_id default c_id_unknown
   ) is
      r_entry app#logs%rowtype;
   begin
      set_values(r_entry, c_trace, p_object, p_method, p_message, p_ref_id);
      write_entry(r_entry);
   end write_trace;

   --write an audit entry to the logs
   --(set the preserve on purge flag for all audits)
   procedure write_audit
   (
      p_object  in app#types.key,
      p_method  in app#types.key,
      p_message in varchar2,
      p_ref_id  in app#types.pk_id default c_id_unknown
   ) is
      r_entry app#logs%rowtype;
   begin
      set_values(r_entry, c_audit, p_object, p_method, p_message, p_ref_id);
      write_entry(r_entry);
   end write_audit;

   --write a timing entry to the logs
   procedure write_timing
   (
      p_object  in app#types.key,
      p_method  in app#types.key,
      p_message in varchar2,
      p_ref_id  in app#types.pk_id default c_id_unknown
   ) is
      r_entry app#logs%rowtype;
   begin
      set_values(r_entry, c_timer, p_object, p_method, p_message, p_ref_id);
      write_entry(r_entry);
   end write_timing;

   --expose simple purge functionality
   procedure purge_logs is
   begin
   
      delete from app#logs l where l.preserve_on_purge <> 1;
   
      commit;
   
   exception
      when others then
         raise;
   end purge_logs;

begin
   initialize;
end app#log_util;
/

----------------------------------------
--  New package body app#timing_util  --
----------------------------------------
create or replace package body app#timing_util is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:11:30 PM
   -- Purpose : Define utility types

   -- Function and procedure implementations

   --conversions to support settings that are numeric flags or boolean switches
   --numeric flags are used to store booleans in tables
   --boolean switches are used to represent flags in plsql code

   function val_to_flag(p_val in app#types.val default 'FALSE') return app#types.flag is
      v_flag app#types.flag := 0;
   begin
      if p_val = 'TRUE' then
         v_flag := 1;
      end if;
      return v_flag;
   end val_to_flag;

   function flag_to_val(p_flag in app#types.flag default 0) return app#types.val is
      v_val app#types.val := 'FALSE';
   begin
      if p_flag = 1 then
         v_val := 'TRUE';
      end if;
      return v_val;
   end flag_to_val;

   function switch_to_flag(p_switch in app#types.switch default false) return app#types.flag is
      v_flag app#types.flag := 0;
   begin
      if p_switch = true then
         v_flag := 1;
      end if;
      return v_flag;
   end switch_to_flag;

   function flag_to_switch(p_flag in app#types.flag default 0) return app#types.switch is
      v_switch app#types.switch := false;
   begin
      if p_flag = 1 then
         v_switch := true;
      end if;
      return v_switch;
   end flag_to_switch;

   function switch_to_val(p_switch in app#types.switch default false) return app#types.val is

   begin
      return flag_to_val(switch_to_flag(p_switch));
   end switch_to_val;

   function val_to_switch(p_val in app#types.val default 'FALSE') return app#types.switch is
   begin
      return flag_to_switch(val_to_flag(p_val));
   end val_to_switch;

begin
   -- Initialization
   null;
end app#timing_util;
/

----------------------------------
--  New package body app#types  --
----------------------------------
create or replace package body app#types is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 3/1/2007 1:11:30 PM
   -- Purpose : Define utility types

   -- Function and procedure implementations

   --conversions to support settings that are numeric flags or boolean switches
   --numeric flags are used to store booleans in tables
   --boolean switches are used to represent flags in plsql code

   function val_to_flag(p_val in app#types.val default 'FALSE') return app#types.flag is
      v_flag app#types.flag := 0;
   begin
      if p_val = 'TRUE' then
         v_flag := 1;
      end if;
      return v_flag;
   end val_to_flag;

   function flag_to_val(p_flag in app#types.flag default 0) return app#types.val is
      v_val app#types.val := 'FALSE';
   begin
      if p_flag = 1 then
         v_val := 'TRUE';
      end if;
      return v_val;
   end flag_to_val;

   function switch_to_flag(p_switch in app#types.switch default false) return app#types.flag is
      v_flag app#types.flag := 0;
   begin
      if p_switch = true then
         v_flag := 1;
      end if;
      return v_flag;
   end switch_to_flag;

   function flag_to_switch(p_flag in app#types.flag default 0) return app#types.switch is
      v_switch app#types.switch := false;
   begin
      if p_flag = 1 then
         v_switch := true;
      end if;
      return v_switch;
   end flag_to_switch;

   function switch_to_val(p_switch in app#types.switch default false) return app#types.val is

   begin
      return flag_to_val(switch_to_flag(p_switch));
   end switch_to_val;

   function val_to_switch(p_val in app#types.val default 'FALSE') return app#types.switch is
   begin
      return flag_to_switch(val_to_flag(p_val));
   end val_to_switch;

begin
   -- Initialization
   null;
end app#types;
/

-----------------------------------
--  New package body my_package  --
-----------------------------------
create or replace package body my_package is

   procedure my_traced_procedure
   (
      p_input in varchar2,
      p_user  in varchar2
   ) is
   begin
      logger.trace('Entered Procedure', 'my_traced_procedure');
      logger.trace('Input was: ' || p_input);
      logger.trace('User was: ' || p_user);
   
      --do something
   
      logger.trace('Finished executable section');
   
   exception
      when others then
         logger.err(sqlerrm, 'my_traced_procedure');
   end my_traced_procedure;

   procedure my_other_procedure
   (
      p_input in varchar2,
      p_user  in varchar2
   ) is
   begin
      logger.trace('Entered Procedure', 'my_other_procedure');
      logger.trace('Input was: ' || p_input);
      logger.trace('User was: ' || p_user);
   
      --do something
   
      logger.trace('Calling my_traced_procedure to show callstack');
      my_traced_procedure(p_input, p_user);
   
      --after sub procedure call, reset the method name
      logger.trace('Done with sub procedure call', 'my_other_procedure');
   
      logger.trace('Finished executable section');
   
   exception
      when others then
         logger.err(sqlerrm, 'my_other_procedure');
   end my_other_procedure;

   procedure audit_sensitive_access
   (
      p_user in varchar2,
      p_data out app#types.ref_cur
   ) is
   begin
      logger.audits('Entered sensitive cursor procedure', 'audit_sensitive_access');
      logger.audits('User was: ' || p_user);
   
      open p_data for
         select * from user_objects o where o.object_name like 'APP#%';
   
   end audit_sensitive_access;

   procedure test_it is
      v_user  app#types.osuser := app#env_util.osuser;
      v_input varchar2(4000) := 'test input value xxx';
   begin
   
      my_traced_procedure(v_input, v_user);
      my_other_procedure(v_input, v_user);
      v_user := 'web user';
      app#env_util.set_osuser(v_user);
      my_traced_procedure(v_input, v_user);
      my_other_procedure(v_input, v_user);
   
   end test_it;

   procedure test_with_logging is
   begin
   
      logger.set_env(true, true, true, false);
      logger.init;
      test_it;
   
      logger.set_env(true, false, true, false);
      logger.init;
   end test_with_logging;

   procedure test_no_logging is
   begin
   
      logger.set_env(false, false, false, false);
      logger.init;
      test_it;
   
      logger.set_env(true, false, true, false);
      logger.init;
   end test_no_logging;

begin
   -- Initialization, set up the logging state
   logger.init;
end my_package;
/

--------------------------------
--  New type app#log_type_nf  --
--------------------------------
create or replace type app#log_type_nf  as object
(
-- Author  : Anthony Harper, Information Architects
-- Created : 5/26/2005 7:26:38 PM
-- Purpose : encapsulate instrumentation in an object
--TYPE IS NOT FINAL TO ALLOW SUBTYPES

-- Attributes for callstack references
   object_name varchar2(35),
   method_name varchar2(35),
--Attributes for environment settings
   enable_exceptions number,
   enable_traces     number,
   enable_audits     number,
   enable_timers     number,

--Allow creating type instance with default attributes
   constructor function app#log_type_nf(p_object_name in varchar2) return self as result,

-- Member functions and procedures

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

--write timing entries to the logs
   member procedure timing
   (
      p_message in varchar2,
      p_method  in varchar2 default '#USE_CURRENT'
   )
)
not final;
/

-------------------------------
--  New type app#timer_type  --
-------------------------------
create or replace type app#timer_type under app#log_type_nf
(
  -- Author  : ANTHONY
  -- Created : 8/29/2007 7:41:17 AM
  -- Purpose : Expose simple timer functionality
  
  -- Attributes
  start_timestamp timestamp,
  stop_timestamp timestamp,
  elapsed_milliseconds number,
  
  constructor function app#timer_type(p_reference in varchar2) return self as result,
  -- Member functions and procedures
  member procedure run,
  member procedure pause,
  member procedure stop,
  member procedure persist,
  member procedure reset,
  member function elapsed_seconds return number,
  member function elapsed_minutes return number,
  member function elapsed_hours return number,
  member function elapsed_days return number,
  member function elapsed_timing return varchar2
  
)
/

----------------------------------
--  New type body app#log_type  --
----------------------------------
create or replace type body app#log_type is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 5/26/2005 7:26:38 PM
   -- Purpose : encapsulate common instrumentation methods

   constructor function app#log_type(p_object_name in varchar2) return self as result is
   begin
   
      self.object_name       := p_object_name;
      self.method_name       := null;
      self.enable_exceptions := 0;
      self.enable_traces     := 0;
      self.enable_audits     := 0;
   
      return;
   
   end app#log_type;

   -- Implemenation For Member procedures and functions

   member procedure set_env
   (
      p_enable_exceptions in boolean default true,
      p_enable_traces     in boolean default true,
      p_enable_audits     in boolean default true,
      p_enable_timers     in boolean default true
   ) is
   begin
      app#log_util.set_package_environment(self.object_name, p_enable_exceptions, p_enable_traces, p_enable_audits, p_enable_timers);
   end set_env;

   member procedure get_env
   (
      p_enable_exceptions out boolean,
      p_enable_traces     out boolean,
      p_enable_audits     out boolean,
      p_enable_timers     out boolean
   ) is
   begin
      app#log_util.get_package_environment(self.object_name, p_enable_exceptions, p_enable_traces, p_enable_audits, p_enable_timers);
   end get_env;

   member procedure init is
      v_errors app#types.switch := false;
      v_traces app#types.switch := false;
      v_audits app#types.switch := false;
      v_timers app#types.switch := false;
   begin
   
      self.method_name := 'APP#LOG_TYPE.INIT';
      get_env(v_errors, v_traces, v_audits, v_timers);
      self.enable_exceptions := app#types.switch_to_flag(v_errors);
      self.enable_traces     := app#types.switch_to_flag(v_traces);
      self.enable_audits     := app#types.switch_to_flag(v_audits);
      self.enable_timers     := app#types.switch_to_flag(v_timers);
   end init;

   member procedure set_object_method(p_method in varchar2 default '#USE_CURRENT') is
   begin
      if nvl(p_method, '#USE_CURRENT') <> '#USE_CURRENT' then
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
         app#log_util.write_trace(self.object_name, self.method_name, p_message);
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
         app#log_util.write_exception(self.object_name, self.method_name, p_message);
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
         app#log_util.write_audit(self.object_name, self.method_name, p_message);
      end if;
   end audits;

   member procedure timing
   (
      p_message in varchar2,
      p_method  in varchar2 default '#USE_CURRENT'
   ) is
   begin
      if self.enable_audits = 1 then
         set_object_method(p_method);
         app#log_util.write_timing(self.object_name, self.method_name, p_message);
      end if;
   end timing;

end;
/

-------------------------------------
--  New type body app#log_type_nf  --
-------------------------------------
create or replace type body app#log_type_nf is

   -- Author  : Anthony Harper, Information Architects
   -- Created : 5/26/2005 7:26:38 PM
   -- Purpose : encapsulate common instrumentation methods

   constructor function app#log_type_nf(p_object_name in varchar2) return self as result is
   begin
   
      self.object_name       := p_object_name;
      self.method_name       := null;
      self.enable_exceptions := 0;
      self.enable_traces     := 0;
      self.enable_audits     := 0;
   
      return;
   
   end app#log_type_nf;

   -- Implemenation For Member procedures and functions

   member procedure set_env
   (
      p_enable_exceptions in boolean default true,
      p_enable_traces     in boolean default true,
      p_enable_audits     in boolean default true,
      p_enable_timers     in boolean default true
   ) is
   begin
      app#log_util.set_package_environment(self.object_name, p_enable_exceptions, p_enable_traces, p_enable_audits, p_enable_timers);
   end set_env;

   member procedure get_env
   (
      p_enable_exceptions out boolean,
      p_enable_traces     out boolean,
      p_enable_audits     out boolean,
      p_enable_timers     out boolean
   ) is
   begin
      app#log_util.get_package_environment(self.object_name, p_enable_exceptions, p_enable_traces, p_enable_audits, p_enable_timers);
   end get_env;

   member procedure init is
      v_errors app#types.switch := false;
      v_traces app#types.switch := false;
      v_audits app#types.switch := false;
      v_timers app#types.switch := false;
   begin
   
      self.method_name := 'APP#LOG_TYPE.INIT';
      get_env(v_errors, v_traces, v_audits, v_timers);
      self.enable_exceptions := app#types.switch_to_flag(v_errors);
      self.enable_traces     := app#types.switch_to_flag(v_traces);
      self.enable_audits     := app#types.switch_to_flag(v_audits);
      self.enable_timers     := app#types.switch_to_flag(v_timers);
   end init;

   member procedure set_object_method(p_method in varchar2 default '#USE_CURRENT') is
   begin
      if nvl(p_method, '#USE_CURRENT') <> '#USE_CURRENT' then
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
         app#log_util.write_trace(self.object_name, self.method_name, p_message);
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
         app#log_util.write_exception(self.object_name, self.method_name, p_message);
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
         app#log_util.write_audit(self.object_name, self.method_name, p_message);
      end if;
   end audits;

   member procedure timing
   (
      p_message in varchar2,
      p_method  in varchar2 default '#USE_CURRENT'
   ) is
   begin
      if self.enable_audits = 1 then
         set_object_method(p_method);
         app#log_util.write_timing(self.object_name, self.method_name, p_message);
      end if;
   end timing;

end;
/

------------------------------------
--  New type body app#timer_type  --
------------------------------------
create or replace type body app#timer_type is
  

  
  
  constructor function app#timer_type(p_reference in varchar2) return self as result
  is
  begin
  --Cannot call any methods of supertype until 11g
  --super.app#log_type(p_reference);
  --earlier versions of oracle need to repeat the constructor for the supertype
        self.object_name       := p_reference;
      self.method_name       := null;
      self.enable_exceptions := 0;
      self.enable_traces     := 0;
      self.enable_audits     := 0;
      --end duplicate constructor
  self.start_timestamp := null;
  self.stop_timestamp := null;
  self.elapsed_milliseconds := 0;
  return;
  end app#timer_type;
  
  -- Member functions and procedures
  member procedure run
  is
  begin
  self.start_timestamp := systimestamp;
  end run;
  member procedure pause
    is
  begin
  null;
  end pause;
  
  member procedure stop
    is
  begin
  null;
  end stop;
  
  member procedure persist
    is
  begin
  null;
  end persist;
  
  member procedure reset
  is
  begin
  self.elapsed_milliseconds := 0;
  end reset;
  
  member function elapsed_seconds return number
  is
  begin
  null;
  end elapsed_seconds;
  
  member function elapsed_minutes return number
    is
  begin
  null;
  end elapsed_minutes;
  
  member function elapsed_hours return number
    is
  begin
  null;
  end elapsed_hours;
  
  member function elapsed_days return number
    is
  begin
  null;
  end elapsed_days;
  
  member function elapsed_timing return varchar2
    is
  begin
  null;
  end elapsed_timing;
  
  
end;
/

-----------------------------------
--  New trigger app#logs_br_diu  --
-----------------------------------
create or replace trigger app#logs_br_diu
  before insert or update or delete on app#logs  
  for each row
declare
   -- local variables here
begin

   if inserting then
      if :new.log_id is null then
         select app#log_seq_id.nextval into :new.log_id from dual;
      end if;
   elsif updating then
      --updating
      null;
   else
      --deleting
      null;
   end if;

end app#logs_br_diu;
/

