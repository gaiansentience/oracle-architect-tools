/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.01.20.436346000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.01.20.436372000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0032 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2623 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.6010 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0036 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2613 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6040 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0038 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2879 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.8908 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0038 seconds from dynamic_item_object_v
001,700 records in  00.2852 seconds from dynamic_item_object_large_v
017,000 records in  03.1794 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.01.32.823043000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.01.32.823065000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0753 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.2437 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  32.4239 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0756 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.2140 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  32.6094 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0122 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  01.0310 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  10.4739 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0122 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  01.0048 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  10.4744 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE NESTED (VIA JSON_OBJECTAGG) JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (2 json_object parses per row)
000,017 records in  00.0073 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4244 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.3479 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0085 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5806 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  06.0735 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.03.18.916473000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.03.18.916494000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0404 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  01.0524 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  10.4718 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0311 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  01.0506 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  10.3297 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.03.41.892661000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.03.41.892678000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.08.48.455000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.08.48.455000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2500 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.6940 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0070 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2470 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.4920 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2730 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.7790 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0070 seconds from dynamic_item_object_v
001,700 records in  00.2730 seconds from dynamic_item_object_large_v
017,000 records in  02.7560 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.09.00.246000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.09.00.246000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.1650 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  31.6100 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1520 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  31.5640 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0110 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9150 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.2990 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0100 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9180 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.3800 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE NESTED (VIA JSON_OBJECTAGG) JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (2 json_object parses per row)
000,017 records in  00.0060 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4090 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.1860 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0080 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5540 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.6570 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.10.41.261000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.10.41.261000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0390 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9340 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.2530 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0280 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9470 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.1970 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.11.01.660000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.11.01.660000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

