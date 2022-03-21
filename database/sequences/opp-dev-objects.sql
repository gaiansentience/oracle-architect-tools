------------------------------------------------------
-- Export file for user OPP                         --
-- Created by Uncle Anthony on 1/2/2010, 2:46:23 PM --
------------------------------------------------------

spool opp-dev-objects.log

prompt
prompt Creating sequence APP#LOG_SEQ_ID
prompt ================================
prompt
@@app#log_seq_id.seq
prompt
prompt Creating sequence TEST_PIPELINE_SEQ
prompt ===================================
prompt
@@test_pipeline_seq.seq

spool off
