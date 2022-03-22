------------------------------------------------------
-- Export file for user OPP                         --
-- Created by Uncle Anthony on 1/2/2010, 2:45:43 PM --
------------------------------------------------------

spool opp-dev-objects.log

prompt
prompt Creating table APP#ENVIRONMENT
prompt ==============================
prompt
@@app#environment.tab
prompt
prompt Creating table APP#LOGS
prompt =======================
prompt
@@app#logs.tab
prompt
prompt Creating table TEST_PIPELINE
prompt ============================
prompt
@@test_pipeline.tab
prompt
prompt Creating table TEST_PIPELINE_COLS
prompt =================================
prompt
@@test_pipeline_cols.tab

spool off
