/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.32.09.883119000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.32.09.883145000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2509 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4958 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0066 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2645 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6661 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0061 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2640 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6854 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0076 seconds from dynamic_item_object_v
001,700 records in  00.2756 seconds from dynamic_item_object_large_v
017,000 records in  02.7609 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.32.21.597839000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.32.21.597859000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0376 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.4883 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  24.8778 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0371 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.8336 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  25.1415 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0245 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7851 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.9011 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0253 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7966 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.8191 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0163 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3883 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.8638 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0233 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4770 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.7297 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.33.43.901832000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.33.43.901850000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0325 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7870 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.6977 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0264 seconds from dynamic_pivot_pipeline_objects_json_v
001,700 records in  00.8547 seconds from dynamic_pivot_pipeline_objects_json_large_v
017,000 records in  08.4182 seconds from dynamic_pivot_pipeline_objects_json_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.34.01.729549000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.34.01.729567000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.34.28.962000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.34.28.962000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2530 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5870 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2650 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7160 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2640 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6930 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0060 seconds from dynamic_item_object_v
001,700 records in  00.2750 seconds from dynamic_item_object_large_v
017,000 records in  02.8010 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.34.40.861000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.34.40.861000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0400 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.7050 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  27.1750 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0400 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.0100 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  26.9630 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0260 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7720 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.6640 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0260 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7680 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.7570 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0190 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4070 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.0700 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0240 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4840 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.8400 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.36.07.688000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.36.07.688000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0310 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7390 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.2430 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0260 seconds from dynamic_pivot_pipeline_objects_json_v
001,700 records in  00.8010 seconds from dynamic_pivot_pipeline_objects_json_large_v
017,000 records in  07.9400 seconds from dynamic_pivot_pipeline_objects_json_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.36.24.480000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.36.24.480000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

