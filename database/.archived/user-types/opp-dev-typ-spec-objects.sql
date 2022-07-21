-----------------------------------------------------
-- Export file for user OPP                        --
-- Created by lotusweaver on 1/17/2010, 5:09:51 PM --
-- Revised by Anthony Harper on 3/22/2022          --
-----------------------------------------------------

spool opp-dev-typ-spec-objects.log

prompt creating app#log types
@@app_bool.tps
prompt
@@app_log.tps
prompt ============================
@@opp-dev-app-markup-type-spec.sql
prompt ============================
@@opp-dev-app-excel-type-spec.sql
prompt ============================
prompt miscellaneous types
@@type_test_pipeline.tps
prompt
@@type_test_pipeline_table.tps

spool off
