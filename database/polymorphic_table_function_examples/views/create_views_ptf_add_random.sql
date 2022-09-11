--polymorphic table function add_random
--adds a variable number of columns with random values
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors

--create the common source view if missing
@@view.ptf_test_data_source_v.sql;
--create a view to test the function
@@view.ptf_test_add_random_v.sql;
@@view.ptf_test_add_random1_v.sql;
@@view.ptf_test_add_random2_v.sql;
@@view.ptf_test_add_random3_v.sql;
prompt add random example created