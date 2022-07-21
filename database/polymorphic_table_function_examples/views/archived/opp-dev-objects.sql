------------------------------------------------------
-- Export file for user OPP                         --
-- Created by Uncle Anthony on 1/2/2010, 2:46:36 PM --
------------------------------------------------------

spool opp-dev-objects.log

prompt
prompt Creating view APP#LOGS_DAILY
prompt ============================
prompt
@@app#logs_daily.vw
prompt
prompt Creating view APP#LOGS_HOURLY
prompt =============================
prompt
@@app#logs_hourly.vw

spool off
