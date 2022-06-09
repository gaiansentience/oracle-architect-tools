prompt dropping views for test data pair values and consolidated rowsource
drop view oa_dpc_poc_test_data_row_formats_v;

--views creating pair values consolidated to json source
--views creating pair values consolidated to flat json source and nested table
drop view oa_dpc_poc_test_data_row_objects_v;
drop view oa_dpc_poc_test_data_row_objects_vl;
drop view oa_dpc_poc_test_data_row_objects_vxl;

--views creating xml source with xmlagg
drop view oa_dpc_poc_test_data_row_xml_v;
drop view oa_dpc_poc_test_data_row_xml_vl;
drop view oa_dpc_poc_test_data_row_xml_vxl;

--views creating hierarchical json source with json_arrayagg
drop view oa_dpc_poc_test_data_row_json_arrayagg_v;
drop view oa_dpc_poc_test_data_row_json_arrayagg_vl;
drop view oa_dpc_poc_test_data_row_json_arrayagg_vxl;
--views creating nested json source with json_objectagg
drop view oa_dpc_poc_test_data_row_json_objectagg_v;
drop view oa_dpc_poc_test_data_row_json_objectagg_vl;
drop view oa_dpc_poc_test_data_row_json_objectagg_vxl;
--views creating flat json source with json_objectagg
drop view oa_dpc_poc_test_data_row_json_objectagg_flat_v;
drop view oa_dpc_poc_test_data_row_json_objectagg_flat_vl;
drop view oa_dpc_poc_test_data_row_json_objectagg_flat_vxl;

--views creating base name value pairs data
drop view oa_dpc_poc_test_data_name_value_v;
drop view oa_dpc_poc_test_data_name_value_vl;
drop view oa_dpc_poc_test_data_name_value_vxl;

prompt dropped views for test data pair values and consolidated rowsource