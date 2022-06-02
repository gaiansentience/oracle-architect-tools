/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.46.59.513603000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.46.59.513629000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2493 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4998 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0062 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2713 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7066 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2718 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6254 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0033 seconds from dynamic_item_object_v
001,700 records in  00.2660 seconds from dynamic_item_object_large_v
017,000 records in  02.6928 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.47.11.138098000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.47.11.138116000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0262 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.4853 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  24.8059 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0279 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.8484 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  24.8764 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0095 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7773 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.8717 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0093 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7779 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.9552 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0065 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3882 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.8822 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0078 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4607 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.8141 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.48.33.206116000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.48.33.206134000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipeliined to object type hierarchy (avoids json completely)
000,017 records in  00.0090 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7824 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.7332 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0090 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7816 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.7008 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.48.50.232931000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.48.50.232949000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.49.04.124000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.49.04.124000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2530 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5910 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2630 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7100 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2570 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6510 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0030 seconds from dynamic_item_object_v
001,700 records in  00.2660 seconds from dynamic_item_object_large_v
017,000 records in  02.7540 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.49.15.906000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.49.15.906000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.6210 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  26.3900 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.9730 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  26.4020 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0090 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.7370 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  07.5740 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0080 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.7350 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  07.5230 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0050 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3910 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.9790 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0080 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.4610 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  04.7510 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.50.40.561000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.50.40.561000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipeliined to object type hierarchy (avoids json completely)
000,017 records in  00.0080 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7040 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.1330 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0070 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7040 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.1390 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.50.56.267000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.50.56.267000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

