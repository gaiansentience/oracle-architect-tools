/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.47.54.786441000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.47.54.786467000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0062 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2458 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.4340 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0062 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2557 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.6506 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0061 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2629 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.6499 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0062 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2626 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.6445 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0079 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2696 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.6908 seconds from oa_dpc_poc_test_data_row_objects_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.48.09.214982000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.48.09.215000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0362 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.4359 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  24.4092 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0181 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6557 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.5209 seconds from oa_dpc_ptf_c_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0455 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.6359 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  26.2938 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0181 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6546 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.5175 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0317 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  01.8963 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  18.9797 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0166 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3667 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.6729 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0180 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.3895 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  03.8313 seconds from oa_dpc_ptf_rt_objectagg_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.49.48.701823000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.49.48.701842000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0360 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6312 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.0679 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0278 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6703 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.4991 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.50.02.645950000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.50.02.645968000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.50.24.672000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.50.24.673000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0060 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2530 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.5660 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0050 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2690 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.7140 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0060 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2710 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.6770 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0060 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2680 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.6840 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0070 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2730 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.7410 seconds from oa_dpc_poc_test_data_row_objects_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.50.39.451000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.50.39.451000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0410 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.6720 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  26.5790 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0210 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6500 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.4080 seconds from oa_dpc_ptf_c_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0480 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.7870 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  27.9160 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0200 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6530 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.5330 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0350 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  02.0750 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  20.7150 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0180 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3960 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  04.0700 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0180 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.4090 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  04.0340 seconds from oa_dpc_ptf_rt_objectagg_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.52.25.593000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.52.25.593000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0330 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6230 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.0420 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0280 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6620 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.5270 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.52.39.521000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.52.39.521000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

