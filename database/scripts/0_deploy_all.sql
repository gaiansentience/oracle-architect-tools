prompt Deploy Objects For Advanced PL/SQL Instrumentation Presentation
prompt Anthony Harper, Information Architects, Senior Technical Architect, 2007
prompt Anthony.Harper@corporateinformationarchitects.com
prompt 917.856.9015
prompt deploy tables
@@app#environment.tab;
@@app#logs.tab;
prompt deploy log sequence
@@app#log_seq_id.seq;
prompt deploy log trigger
@@app#logs_br_diu.trg;
prompt deploy package specs
@@app#types.spc;
@@app#env_util.spc;
@@app#log_util.spc;
prompt deploy type spec
@@app#log_type.tps;
prompt deploy views
@@app#logs_daily.sql;
@@app#logs_hourly.sql;
prompt deploy package bodies
@@app#types.bdy;
@@app#env_util.bdy;
@@app#log_util.bdy;
prompt deploy type body
@@app#log_type.tpb;
prompt code objects deployed
prompt set global logging environment
@@set_logging_global_default.sql;
prompt deploy example package
@@my_package.spc;
@@my_package.bdy;
prompt example package deployed
prompt set my_package logging environment
@@set_logging_my_package_default.sql;
prompt test log entries will be created by running run_test_script.sql
prompt Thank You, Anthony Harper, Senior Technical Architect

