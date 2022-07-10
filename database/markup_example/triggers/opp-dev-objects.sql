------------------------------------------------------
-- Export file for user OPP                         --
-- Created by Uncle Anthony on 1/2/2010, 2:48:28 PM --
------------------------------------------------------

spool opp-dev-objects.log

prompt Creating trigger APP#LOGS_BR_DIU
prompt ================================
@@app_logs_br_diu.trg
prompt Creating trigger APP#ENVIRONMENT_BR_DIU
prompt ================================
@@app_environment_br_diu.trg
prompt
prompt Creating trigger TEST_PIPELINE_BRI
prompt ==================================
prompt
@@test_pipeline_bri.trg

spool off
