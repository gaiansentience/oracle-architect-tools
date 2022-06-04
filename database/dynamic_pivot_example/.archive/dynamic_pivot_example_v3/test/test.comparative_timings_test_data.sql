set serveroutput on;
declare
begin
    --oa_dpc_test_framework.set_tests_to_archived;
    oa_dpc_test_data_generator.set_load_3d_shapes(false);
    oa_dpc_poc_testing.test_initial_data_generation;
    
end; 

/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 12.34.11.465000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0030 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2470 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.5270 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2560 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.6310 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2570 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.6120 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0020 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2570 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.5960 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0030 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2580 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.6310 seconds from oa_dpc_poc_test_data_row_objects_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 12.34.25.780000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

