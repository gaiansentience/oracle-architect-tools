--polymorphic table function hide_cols
--hides specified columns
--doesnt change result set
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors


--create the common source view if missing
@@view.ptf_test_data_source_v.sql;
--create a view to test the function
@@view.ptf_test_hide_cols_v.sql;
@@view.ptf_test_hide_cols1_v.sql;
prompt hide cols example created
