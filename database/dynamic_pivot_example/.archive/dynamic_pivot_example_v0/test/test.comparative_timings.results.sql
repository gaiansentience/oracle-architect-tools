/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.54.27.130364000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.54.27.130390000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0053 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2806 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.9761 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0076 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2603 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.7374 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0059 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2582 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6633 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0081 seconds from dynamic_item_object_v
001,700 records in  00.2700 seconds from dynamic_item_object_large_v
017,000 records in  02.7632 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.54.39.416094000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.54.39.416111000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0358 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.4556 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  24.5632 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0346 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.0133 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  24.4627 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0244 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9588 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  10.0069 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0233 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9284 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.6408 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0150 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.3808 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  03.9087 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0218 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5545 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.6557 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.56.06.132348000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.56.06.132366000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0328 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9803 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.5683 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0299 seconds from dynamic_pivot_pipeline_objects_json_v
001,700 records in  01.0767 seconds from dynamic_pivot_pipeline_objects_json_large_v
017,000 records in  10.6186 seconds from dynamic_pivot_pipeline_objects_json_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.56.28.450043000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.56.28.450062000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.59.59.911000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 12.59.59.911000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from dynamic_pivot_test_data_v
008,300 records in  00.2550 seconds from dynamic_pivot_test_data_large_v
083,000 records in  02.5760 seconds from dynamic_pivot_test_data_xlarge_v
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v
001,700 records in  00.2640 seconds from dynamic_pivot_data_to_json_large_v
017,000 records in  02.6790 seconds from dynamic_pivot_data_to_json_xlarge_v
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from dynamic_pivot_data_to_json_v_objectagg
001,700 records in  00.2620 seconds from dynamic_pivot_data_to_json_v_objectagg_large
017,000 records in  02.6820 seconds from dynamic_pivot_data_to_json_v_objectagg_xlarge
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0090 seconds from dynamic_item_object_v
001,700 records in  00.2720 seconds from dynamic_item_object_large_v
017,000 records in  02.7660 seconds from dynamic_item_object_xlarge_v
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.00.11.721000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.00.11.721000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0400 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.6380 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  26.5240 seconds from dynamic_pivot_polymorphic_xlarge_v
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0410 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1710 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  26.5260 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9380 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.6430 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9650 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.6690 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0170 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4270 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.1240 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0260 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5750 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.7810 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.01.42.922000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.01.42.922000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0330 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9260 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.1980 seconds from dynamic_pivot_pipeline_objects_xlarge_v
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0300 seconds from dynamic_pivot_pipeline_objects_json_v
001,700 records in  01.0040 seconds from dynamic_pivot_pipeline_objects_json_large_v
017,000 records in  10.0010 seconds from dynamic_pivot_pipeline_objects_json_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.02.04.124000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.02.04.124000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

