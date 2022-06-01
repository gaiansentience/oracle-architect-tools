set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_initial_data_generation;
    
end; 

/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 09.53.54.644791000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0061 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2609 seconds from dynamic_pivot_test_data_large_v
083,000 records in  03.1931 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0082 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2602 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.8072 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0067 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2812 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.9560 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0086 seconds from dynamic_item_object_v
001,700 records in  00.2834 seconds from dynamic_item_object_large_v
017,000 records in  02.9087 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 09.54.07.625635000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 09.55.37.520000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0070 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2540 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5420 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0070 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2500 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.5030 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2750 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.7690 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0080 seconds from dynamic_item_object_v
001,700 records in  00.2730 seconds from dynamic_item_object_large_v
017,000 records in  02.7420 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 09.55.49.156000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
