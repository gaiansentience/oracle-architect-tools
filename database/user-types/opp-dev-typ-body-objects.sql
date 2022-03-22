-----------------------------------------------------
-- Export file for user OPP                        --
-- Created by lotusweaver on 1/17/2010, 5:10:19 PM --
-- Revised by Anthony Harper on 3/22/2022          --
-----------------------------------------------------

spool opp-dev-typ-body-objects.log

prompt creating app#log types
@@app_bool.tpb
@@app_log.tpb
prompt ============================
@@opp-dev-app-markup-type-bodies.sql
prompt ============================
@@opp-dev-app-excel-type-bodies.sql
prompt ============================
prompt  Miscellaneous types
@@type_test_pipeline.tpb

spool off
