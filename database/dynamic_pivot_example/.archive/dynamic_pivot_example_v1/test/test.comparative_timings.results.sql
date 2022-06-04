/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.17.54.649882000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.17.54.649909000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0061 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2480 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4357 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0061 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2571 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6237 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0072 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2655 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6043 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0040 seconds from dynamic_item_object_v
001,700 records in  00.2723 seconds from dynamic_item_object_large_v
017,000 records in  02.7240 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.18.06.130223000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.18.06.130243000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0266 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.5084 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  24.8611 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0279 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.8361 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  24.8810 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0091 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7535 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.6706 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0093 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7691 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.7105 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0059 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3783 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.8689 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0075 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4596 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.6990 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.19.27.647070000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.19.27.647092000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0281 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7766 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.6577 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0091 seconds from dynamic_pivot_pipeline_objects_json_v
001,700 records in  00.8513 seconds from dynamic_pivot_pipeline_objects_json_large_v
017,000 records in  08.3050 seconds from dynamic_pivot_pipeline_objects_json_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.19.45.285389000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.19.45.285407000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.20.39.197000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.20.39.197000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2520 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5810 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2610 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7170 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2610 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6760 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0030 seconds from dynamic_item_object_v
001,700 records in  00.2690 seconds from dynamic_item_object_large_v
017,000 records in  02.7800 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.20.51.031000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.20.51.031000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.6130 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  26.4500 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.9270 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  26.4880 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0100 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7530 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.5510 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0090 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7540 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.7630 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0060 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3990 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.0660 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0070 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4670 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.8570 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.22.16.242000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.22.16.242000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0240 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7190 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.1330 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0090 seconds from dynamic_pivot_pipeline_objects_json_v
001,700 records in  00.7850 seconds from dynamic_pivot_pipeline_objects_json_large_v
017,000 records in  07.8190 seconds from dynamic_pivot_pipeline_objects_json_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.22.32.743000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.22.32.743000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

