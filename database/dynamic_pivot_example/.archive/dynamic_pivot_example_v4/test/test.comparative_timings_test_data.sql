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
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.17.37.951136000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0067 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2506 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.5038 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0063 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2621 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.6572 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0061 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2562 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.6109 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0059 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2600 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.9893 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0090 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2628 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.7328 seconds from oa_dpc_poc_test_data_row_objects_vxl
consolidate name|value pairs to row xml using xmlelement and xmlagg
000,017 records in  00.0083 seconds from oa_dpc_poc_test_data_row_xml_v
001,700 records in  00.3206 seconds from oa_dpc_poc_test_data_row_xml_vl
017,000 records in  03.2599 seconds from oa_dpc_poc_test_data_row_xml_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.17.56.397774000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.18.04.125000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***convert multiple name|value pair details per item to consolidated rowsource per item***
generate name|value rows using json source document created in plsql
000,083 records in  00.0070 seconds from oa_dpc_poc_test_data_name_value_v
008,300 records in  00.2550 seconds from oa_dpc_poc_test_data_name_value_vl
083,000 records in  02.6270 seconds from oa_dpc_poc_test_data_name_value_vxl
consolidate name|value pairs to row json using sql and json_arrayagg (creates hierarchical json)
000,017 records in  00.0060 seconds from oa_dpc_poc_test_data_row_json_arrayagg_v
001,700 records in  00.2680 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vl
017,000 records in  02.9000 seconds from oa_dpc_poc_test_data_row_json_arrayagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates nested json)
000,017 records in  00.0070 seconds from oa_dpc_poc_test_data_row_json_objectagg_v
001,700 records in  00.2640 seconds from oa_dpc_poc_test_data_row_json_objectagg_vl
017,000 records in  02.7080 seconds from oa_dpc_poc_test_data_row_json_objectagg_vxl
consolidate name|value pairs to row json using sql and json_objectagg (creates flat json)
000,017 records in  00.0060 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_v
001,700 records in  00.2630 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vl
017,000 records in  02.7080 seconds from oa_dpc_poc_test_data_row_json_objectagg_flat_vxl
consolidate name|value pairs to row json using plsql AND to nested tables using objects
000,017 records in  00.0070 seconds from oa_dpc_poc_test_data_row_objects_v
001,700 records in  00.2690 seconds from oa_dpc_poc_test_data_row_objects_vl
017,000 records in  02.7620 seconds from oa_dpc_poc_test_data_row_objects_vxl
consolidate name|value pairs to row xml using xmlelement and xmlagg
000,017 records in  00.0080 seconds from oa_dpc_poc_test_data_row_xml_v
001,700 records in  00.3170 seconds from oa_dpc_poc_test_data_row_xml_vl
017,000 records in  03.2760 seconds from oa_dpc_poc_test_data_row_xml_vxl
----------------------------------------------------------------------------------------------------
     GENERATE TEST DATA NAME VALUE PAIRS AND CONSOLIDATE TO ROWS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.18.22.821000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

