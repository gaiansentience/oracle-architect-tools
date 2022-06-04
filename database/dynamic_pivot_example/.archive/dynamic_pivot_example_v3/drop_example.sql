prompt dropping example objects

--drop view oa_dpc_test_compare_codebase_v;
--drop table oa_dpc_test_results purge;

drop package oa_dpc_poc_testing;

drop package oa_dpc_etl_testing;

drop package oa_dpc_test_framework;

drop package oa_dpc_etl;

drop view oa_dpc_etl_table_rowcounts_v;

--dynamic tables with refreshable columns and backup tables
drop table oa_dpc_items_ptf_ct_arrayagg_backup purge;
drop table oa_dpc_items_ptf_ct_arrayagg purge;
drop table oa_dpc_items_ptf_rt_arrayagg_backup purge;
drop table oa_dpc_items_ptf_rt_arrayagg purge;
drop table oa_dpc_items_ptf_rt_objectagg_backup purge;
drop table oa_dpc_items_ptf_rt_objectagg purge;
drop table oa_dpc_items_ptf_ct_flat_backup purge;
drop table oa_dpc_items_ptf_ct_flat purge;


drop table oa_dpc_items_ptf_rt_flat_backup purge;
drop table oa_dpc_items_ptf_rt_flat purge;
drop table oa_dpc_items_pf_objects_backup purge;
drop table oa_dpc_items_pf_objects purge;
drop table oa_dpc_items_json_table_backup purge;
drop table oa_dpc_items_json_table purge;

--views to create dynamic tables (based on dynamic_pivot_pair_values table)
drop view oa_dpc_etl_json_table_v;

--pipelined etl view
drop view oa_dpc_etl_pf_objects_v;
drop package oa_dpc_etl_pf_objects;
--polymorphic etl views
drop view oa_dpc_etl_ptf_rt_objectagg_v;
drop view oa_dpc_etl_ptf_ct_flat_v;
drop view oa_dpc_etl_ptf_rt_flat_v;
drop view oa_dpc_etl_ptf_rt_arrayagg_v;
drop view oa_dpc_etl_ptf_ct_arrayagg_v;

--??drop table dynamic_pivot_rowsource

drop view oa_dpc_etl_item_row_arrayagg_v;
drop view oa_dpc_etl_item_row_objectagg_v;
drop view oa_dpc_etl_item_row_objectagg_flat_v;
drop view oa_dpc_etl_item_row_objects_v;

drop view oa_dpc_value_types_v;

drop table oa_dpc_pair_values_backup purge;
drop table oa_dpc_pair_values purge;
drop view oa_dpc_etl_pair_values_source_v;
drop view oa_dpc_etl_pair_values_generator_v;


prompt dropping proof of concept objects

drop view oa_dpc_ptf_c_arrayagg_v;
drop view oa_dpc_ptf_c_arrayagg_vl;
drop view oa_dpc_ptf_c_arrayagg_vxl;
drop package oa_dpc_ptf_c_arrayagg;

drop view oa_dpc_ptf_ct_arrayagg_v;
drop view oa_dpc_ptf_ct_arrayagg_vl;
drop view oa_dpc_ptf_ct_arrayagg_vxl;
drop package oa_dpc_ptf_ct_arrayagg;

drop view oa_dpc_ptf_c_flat_v;
drop view oa_dpc_ptf_c_flat_vl;
drop view oa_dpc_ptf_c_flat_vxl;
drop package oa_dpc_ptf_c_flat;

drop view oa_dpc_ptf_ct_flat_v;
drop view oa_dpc_ptf_ct_flat_vl;
drop view oa_dpc_ptf_ct_flat_vxl;
drop package oa_dpc_ptf_ct_flat;

drop view oa_dpc_ptf_rt_flat_v;
drop view oa_dpc_ptf_rt_flat_vl;
drop view oa_dpc_ptf_rt_flat_vxl;
drop package oa_dpc_ptf_rt_flat;

drop view oa_dpc_ptf_rt_arrayagg_v;
drop view oa_dpc_ptf_rt_arrayagg_vl;
drop view oa_dpc_ptf_rt_arrayagg_vxl;
drop package oa_dpc_ptf_rt_arrayagg;

drop view oa_dpc_ptf_rt_objectagg_v;
drop view oa_dpc_ptf_rt_objectagg_vl;
drop view oa_dpc_ptf_rt_objectagg_vxl;
drop package oa_dpc_ptf_rt_objectagg;


--views for pipeline using nested objects
drop view oa_dpc_poc_pf_objects_v;
drop view oa_dpc_poc_pf_objects_vl;
drop view oa_dpc_poc_pf_objects_vxl;
drop package oa_dpc_poc_pf_objects;

--views for pipeline using json (flat format)
drop view oa_dpc_poc_pf_json_v;
drop view oa_dpc_poc_pf_json_vl;
drop view oa_dpc_poc_pf_json_vxl;
drop package oa_dpc_poc_pf_json;

--types shared by pipelined packages and pipeline object views
@@drop_types_oa_dpc_geometry.sql;


drop view oa_dpc_poc_test_data_row_formats_v;

--views creating pair values consolidated to json source
--views creating pair values consolidated to flat json source and nested table
drop view oa_dpc_poc_test_data_row_objects_v;
drop view oa_dpc_poc_test_data_row_objects_vl;
drop view oa_dpc_poc_test_data_row_objects_vxl;

@@drop_types_oa_dpc_test_data_rows.sql;

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

drop package oa_dpc_test_data_generator;

--drop package for timing, tracing and logging
--drop table for timing, tracing and logging

prompt example objects dropped