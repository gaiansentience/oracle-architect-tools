/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.11.01.453830000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.11.01.453864000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0031 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2467 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.4844 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0033 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2677 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.6700 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0038 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2648 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.6414 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0033 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2627 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.6067 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0035 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2652 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.7055 seconds from oa_dpc_poc_test_data_row_objects_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.11.15.917777000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.11.15.917797000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0277 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.4664 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  24.6110 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0079 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6445 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.5258 seconds from oa_dpc_ptf_c_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0272 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.5961 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  26.2359 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0331 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6742 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.5747 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0210 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  01.8987 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  19.1254 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0069 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.4259 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  04.2159 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0078 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.4346 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  04.4295 seconds from oa_dpc_ptf_rt_objectagg_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.12.56.952763000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.12.56.952783000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0282 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6384 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.1421 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0076 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6683 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.5009 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.13.10.949360000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.13.10.949378000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.13.40.223000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.13.40.223000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0040 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2570 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.6020 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0040 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2680 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.7410 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2670 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.7260 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0040 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2670 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.7260 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2720 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.7830 seconds from oa_dpc_poc_test_data_row_objects_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.13.55.181000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.13.55.181000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0280 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.6820 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  27.0090 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0080 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6390 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.4920 seconds from oa_dpc_ptf_c_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0290 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.8090 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  28.3160 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0400 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6570 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.4800 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0230 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  02.0980 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  21.1140 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0060 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.4510 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  04.5500 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0080 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.4660 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  04.7120 seconds from oa_dpc_ptf_rt_objectagg_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.15.43.862000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.15.43.862000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0070 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6150 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.1410 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0080 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6790 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.5700 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.15.57.894000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 03.15.57.894000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

