--polymorphic table function row_as_json
--converts rows to a json column
--output is limited to specified columns
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors

--create the common source view if missing
@@view.ptf_test_data_source_v.sql;
--create a view to test the function
@@view.ptf_test_row_as_json_v.sql;
@@view.ptf_test_row_as_json1_v.sql;
@@view.ptf_test_row_as_json2_v.sql;
@@view.ptf_test_row_as_json3_v.sql;
prompt row as json example created