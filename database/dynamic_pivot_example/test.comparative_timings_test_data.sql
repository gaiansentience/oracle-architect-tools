set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_initial_data_generation;
    
end; 


/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.23.47.912840000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0062 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2408 seconds from dynamic_pivot_test_data_large_v
083,000 records in  03.1496 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql
000,017 records in  00.0095 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2585 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6607 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0082 seconds from dynamic_item_object_v
001,700 records in  00.2815 seconds from dynamic_item_object_large_v
017,000 records in  02.8847 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.23.57.412862000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.24.17.870000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2470 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5130 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql
000,017 records in  00.0070 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2490 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.5160 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0070 seconds from dynamic_item_object_v
001,700 records in  00.2740 seconds from dynamic_item_object_large_v
017,000 records in  02.7560 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.24.26.446000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
