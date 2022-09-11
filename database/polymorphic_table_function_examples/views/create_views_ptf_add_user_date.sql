--polymorphic table function add_user_date
--adds the current user and sysdate columns
--output is limited to specified columns
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors

--create the common source view if missing
@@view.ptf_test_data_source_v.sql;
--create a view to test the function
@@view.ptf_test_add_user_date_v.sql;
prompt add user date example created