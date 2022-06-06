/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.47.21.707924000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.47.21.707957000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0065 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2423 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.4872 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0065 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2520 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.6440 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0070 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2584 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.7146 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0071 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2601 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.9351 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0089 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.3106 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  03.0102 seconds from oa_dpc_poc_test_data_row_objects_vxl
consolidate name|value pairs to row xml using xmlelement and xmlagg
000,017 records in  00.0102 seconds from oa_dpc_poc_test_data_row_xml_v
001,700 records in  00.3227 seconds from oa_dpc_poc_test_data_row_xml_vl
017,000 records in  03.3578 seconds from oa_dpc_poc_test_data_row_xml_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.47.40.592704000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.47.40.592725000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0266 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.4470 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  24.4868 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0275 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.5869 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  25.7539 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0221 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  01.8904 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  19.1519 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0068 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.3786 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  03.8225 seconds from oa_dpc_ptf_rt_objectagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0078 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6192 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.3022 seconds from oa_dpc_ptf_c_flat_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0080 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6272 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.5254 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0063 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3506 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.6595 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource xml (with xmlelelement and xmlagg) polymorphic put rowset to varchar|number
000,017 records in  00.0163 seconds from oa_dpc_ptf_rt_xml_v
001,700 records in  01.1846 seconds from oa_dpc_ptf_rt_xml_vl
017,000 records in  12.0128 seconds from oa_dpc_ptf_rt_xml_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.49.32.563194000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.49.32.563213000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0486 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6202 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.1151 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0300 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6579 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.4619 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.49.46.508460000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.49.46.508478000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.54.16.297000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.54.16.297000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2490 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.5660 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2600 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.7010 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2610 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.6750 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2600 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.7050 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2610 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.7300 seconds from oa_dpc_poc_test_data_row_objects_vxl
consolidate name|value pairs to row xml using xmlelement and xmlagg
000,017 records in  00.0040 seconds from oa_dpc_poc_test_data_row_xml_v
001,700 records in  00.3100 seconds from oa_dpc_poc_test_data_row_xml_vl
017,000 records in  03.2270 seconds from oa_dpc_poc_test_data_row_xml_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.54.34.561000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.54.34.561000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0280 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.5890 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  25.9900 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0480 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.7570 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  27.5250 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0350 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  02.0290 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  20.3440 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0060 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.3930 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  04.0370 seconds from oa_dpc_ptf_rt_objectagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0200 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6320 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.3000 seconds from oa_dpc_ptf_c_flat_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0200 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6470 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.4760 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0180 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3870 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.8730 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource xml (with xmlelelement and xmlagg) polymorphic put rowset to varchar|number
000,017 records in  00.0150 seconds from oa_dpc_ptf_rt_xml_v
001,700 records in  01.3010 seconds from oa_dpc_ptf_rt_xml_vl
017,000 records in  13.3180 seconds from oa_dpc_ptf_rt_xml_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.56.33.399000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.56.33.399000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0390 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6180 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.0200 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0270 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6550 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.5380 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.56.47.311000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.56.47.311000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

