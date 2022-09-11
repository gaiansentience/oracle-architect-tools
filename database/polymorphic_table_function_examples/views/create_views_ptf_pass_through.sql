--polymorphic table function pass_through
--doesnt change result set, just pipes it through
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors
--can be enhanced with include/exclude columns arguments

--create the common source view if missing
@@view.ptf_test_data_source_v.sql;
--create a view to test the function
@@view.ptf_test_pass_through_v.sql;
prompt pass through example created