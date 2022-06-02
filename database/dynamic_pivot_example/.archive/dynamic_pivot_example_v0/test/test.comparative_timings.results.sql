/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.13.08.162284000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.13.08.162317000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2486 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.4953 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0033 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2654 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6649 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0032 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2562 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6526 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0033 seconds from dynamic_item_object_v
001,700 records in  00.2685 seconds from dynamic_item_object_large_v
017,000 records in  02.7194 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.13.19.767837000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.13.19.767855000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0371 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.5280 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  24.8910 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0357 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.0780 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  25.0572 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0277 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9991 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.9974 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0266 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9926 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  10.0436 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0178 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3938 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.8511 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0243 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5820 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.7509 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.14.48.135999000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.14.48.136018000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipeliined to object type hierarchy (avoids json completely)
000,017 records in  00.0350 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  01.0285 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  10.0526 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0287 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  01.0013 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  10.0322 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.15.10.325352000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.15.10.325370000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.18.11.406000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.18.11.406000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2500 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5880 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2670 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7540 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0020 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2590 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.7060 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0030 seconds from dynamic_item_object_v
001,700 records in  00.2690 seconds from dynamic_item_object_large_v
017,000 records in  02.7760 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA: NAME|VALUE PAIRS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.18.23.310000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.18.23.310000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0390 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.6690 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  26.8690 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0410 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1610 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  26.6070 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0330 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  01.0250 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.6310 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9560 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.6280 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0200 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4310 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.0990 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5900 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.8470 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.19.55.047000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.19.55.047000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipeliined to object type hierarchy (avoids json completely)
000,017 records in  00.0320 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9550 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.2620 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0260 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9400 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.2200 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.20.15.494000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.20.15.494000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

