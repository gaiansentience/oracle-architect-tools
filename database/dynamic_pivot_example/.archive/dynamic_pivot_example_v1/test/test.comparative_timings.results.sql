/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.40.39.035072000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.40.39.035109000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0058 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2481 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4427 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0063 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2599 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6044 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0059 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2644 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6531 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0083 seconds from dynamic_item_object_v
001,700 records in  00.2804 seconds from dynamic_item_object_large_v
017,000 records in  02.7874 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.40.50.626592000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.40.50.626613000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0384 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.4905 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  25.2820 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0369 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.9144 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  25.0942 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0243 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7812 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.9518 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0252 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.8013 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.9369 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0185 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3992 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.9049 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0239 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4881 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.8263 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.42.13.700408000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.42.13.700433000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipeliined to object type hierarchy (avoids json completely)
000,017 records in  00.0330 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7709 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.7509 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0265 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7882 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.7568 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.42.30.837395000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.42.30.837414000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.52.24.617000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.52.24.617000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2590 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.6080 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2690 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7200 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2660 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6840 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0080 seconds from dynamic_item_object_v
001,700 records in  00.2760 seconds from dynamic_item_object_large_v
017,000 records in  02.7740 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.52.36.522000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.52.36.522000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0390 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.6450 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  26.5730 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0410 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.9970 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  26.5460 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0270 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7630 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.6380 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0270 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7590 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.6030 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0190 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4050 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.0670 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0250 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4870 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.8160 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.54.02.035000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.54.02.035000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipeliined to object type hierarchy (avoids json completely)
000,017 records in  00.0300 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7320 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.1770 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0230 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7280 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.3550 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.54.18.092000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 04.54.18.092000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

