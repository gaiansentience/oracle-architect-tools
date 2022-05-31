/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.41.40.723342000 AM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.41.40.723369000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0061 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2432 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4915 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql
000,017 records in  00.0072 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2432 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.5335 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0079 seconds from dynamic_item_object_v
001,700 records in  00.2619 seconds from dynamic_item_object_large_v
017,000 records in  02.7374 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.41.49.255544000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.41.49.255573000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0669 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.9723 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  29.8693 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0696 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.9665 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  29.9214 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0112 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9259 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.3725 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0112 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9543 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.5755 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0083 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5417 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.6253 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.43.22.147787000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.43.22.147806000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0352 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9681 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.5580 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0273 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9608 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.5848 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.43.43.282045000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.43.43.282061000 AM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.55.30.201000000 AM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.55.30.201000000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0070 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2490 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5060 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2440 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.5050 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0070 seconds from dynamic_item_object_v
001,700 records in  00.2700 seconds from dynamic_item_object_large_v
017,000 records in  02.9070 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.55.38.902000000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.55.38.902000000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0720 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.1830 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  32.0780 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0710 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1690 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  32.2790 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0110 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9470 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.4890 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0110 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9360 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.5890 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0080 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5530 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.6980 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.57.16.996000000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.57.16.996000000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0330 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9390 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.2560 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0270 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9290 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.2380 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.57.37.418000000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.57.37.418000000 AM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/

