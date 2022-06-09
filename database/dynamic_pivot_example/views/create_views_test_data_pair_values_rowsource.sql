prompt creating views for test data pair values and consolidation rowsources
@@view.oa_dpc_poc_test_data_name_value_v.sql;
@@view.oa_dpc_poc_test_data_name_value_vl.sql;
@@view.oa_dpc_poc_test_data_name_value_vxl.sql;
prompt created test data with polymorphic contents as name value pairs


prompt views to consolidate test data name|value pairs as json using sql
@@view.oa_dpc_poc_test_data_row_json_arrayagg_v.sql;
@@view.oa_dpc_poc_test_data_row_json_arrayagg_vl.sql;
@@view.oa_dpc_poc_test_data_row_json_arrayagg_vxl.sql;

prompt views using json_objectagg (value pairs are nested json object instead of json array)
@@view.oa_dpc_poc_test_data_row_json_objectagg_v.sql;
@@view.oa_dpc_poc_test_data_row_json_objectagg_vl.sql;
@@view.oa_dpc_poc_test_data_row_json_objectagg_vxl.sql;

prompt views using json_objectagg (value pairs are flat json object instead of json array)
@@view.oa_dpc_poc_test_data_row_json_objectagg_flat_v.sql;
@@view.oa_dpc_poc_test_data_row_json_objectagg_flat_vl.sql;
@@view.oa_dpc_poc_test_data_row_json_objectagg_flat_vxl.sql;

prompt views to consolidate test data name|value pairs as xml using xmlagg
@@view.oa_dpc_poc_test_data_row_xml_v.sql;
@@view.oa_dpc_poc_test_data_row_xml_vl.sql;
@@view.oa_dpc_poc_test_data_row_xml_vxl.sql;

prompt creating object views to consolidate test data name|value pairs as json using plsql and as nested tables using objects
@@view.oa_dpc_poc_test_data_row_objects_v.sql;
@@view.oa_dpc_poc_test_data_row_objects_vl.sql;
@@view.oa_dpc_poc_test_data_row_objects_vxl.sql;

prompt view to compare row input formats to pipelined table functions and polymorphic table functions
@@view.oa_dpc_poc_test_data_row_formats_v.sql;

prompt created views for test data pair values and consolidation rowsource