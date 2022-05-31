/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.33.05.498309000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.33.05.498334000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0599 seconds from dynamic_pivot_test_data_v
008,300 records in  01.2639 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4303 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql
000,017 records in  00.0118 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2463 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.4369 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0499 seconds from dynamic_item_object_v
001,700 records in  00.2642 seconds from dynamic_item_object_large_v
017,000 records in  02.6260 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.33.14.887662000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.33.14.887685000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
000,017 records in  00.1293 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.9600 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  31.8015 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.1036 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.7220 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  29.7806 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
000,017 records in  29.5946 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9360 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.4887 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.9196 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9629 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.5279 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.35.14.814731000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.35.14.814760000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0503 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9685 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.5106 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0302 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9627 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.5668 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.35.35.904039000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.35.35.904055000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.38.58.305000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.38.58.305000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)***
generate name|value rows using json source document created in plsql
000,083 records in  00.0040 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2480 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5310 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql
000,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2450 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.5020 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0020 seconds from dynamic_item_object_v
001,700 records in  00.2700 seconds from dynamic_item_object_large_v
017,000 records in  02.7430 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.39.06.853000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.39.06.853000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
000,017 records in  00.0700 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.1500 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  31.5000 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.0720 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1330 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  31.5060 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
000,017 records in  00.0110 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9150 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.3260 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.0110 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9190 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.4120 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.40.36.878000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.40.36.878000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0100 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9260 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.1440 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0100 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9000 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.0780 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.40.56.946000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.40.56.946000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/

