prompt dropping example objects

drop package dynamic_pivot_unit_testing;
drop package dynamic_pivot_etl_unit_testing;
drop package dynamic_pivot_test_framework;

drop package dynamic_pivot_etl;

--dynamic tables with refreshable columns and backup tables
drop table dynamic_columns_json_table_backup purge;
drop table dynamic_columns_json_table purge;
drop table dynamic_columns_polymorphic_backup purge;
drop table dynamic_columns_polymorphic purge;
drop table dynamic_columns_polymorphic_objectagg_backup purge;
drop table dynamic_columns_polymorphic_objectagg purge;
drop table dynamic_columns_polymorphic_row_backup purge;
drop table dynamic_columns_polymorphic_row purge;
drop table dynamic_columns_pipelined_backup purge;
drop table dynamic_columns_pipelined purge;

--views to create dynamic tables (based on dynamic_pivot_pair_values table)
drop view dynamic_view_json_table_source_v;

drop view dynamic_view_polymorphic_row_source_v;
drop package dynamic_view_polymorphic_row;

drop view dynamic_view_polymorphic_row_objectagg_source_v;
drop package dynamic_view_polymorphic_row_objectagg;

drop view dynamic_view_polymorphic_source_v;
drop package dynamic_view_polymorphic;

drop view dynamic_view_pipelined_source_v;
drop package dynamic_view_pipelined;

--??drop table dynamic_pivot_rowsource
drop view dynamic_pivot_item_rowsource_objectagg_v;
drop view dynamic_pivot_item_rowsource_v;

--drop view dynamic_pivot_value_types_v;
drop view oa_dpc_value_types_v;

drop table oa_dpc_pair_values_backup purge;
drop table oa_dpc_pair_values purge;
drop view oa_dpc_etl_pair_values_source_v;
drop view oa_dpc_etl_pair_values_generator_v;




drop view dynamic_pivot_polymorphic_v;
drop view dynamic_pivot_polymorphic_large_v;
drop view dynamic_pivot_polymorphic_xlarge_v;
drop package dynamic_pivot_polymorphic;

drop view dynamic_pivot_polymorphic_typed_v;
drop view dynamic_pivot_polymorphic_typed_large_v;
drop view dynamic_pivot_polymorphic_typed_xlarge_v;
drop package dynamic_pivot_polymorphic_typed;

drop view dynamic_pivot_polymorphic_flat_v;
drop view dynamic_pivot_polymorphic_large_flat_v;
drop view dynamic_pivot_polymorphic_xlarge_flat_v;
drop package dynamic_pivot_polymorphic_flat;

drop view dynamic_pivot_polymorphic_typed_flat_v;
drop view dynamic_pivot_polymorphic_typed_large_flat_v;
drop view dynamic_pivot_polymorphic_typed_xlarge_flat_v;
drop package dynamic_pivot_polymorphic_typed_flat;

drop view dynamic_pivot_polymorphic_typed_flat_rows_v;
drop view dynamic_pivot_polymorphic_typed_large_flat_rows_v;
drop view dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v;
drop package dynamic_pivot_polymorphic_typed_flat_row;


drop view dynamic_pivot_polymorphic_typed_objectagg_rows_v;
drop view dynamic_pivot_polymorphic_typed_objectagg_rows_v_large;
drop view dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge;
drop package dynamic_pivot_polymorphic_typed_objectagg_row;


--views for pipeline using nested objects
--drop view dynamic_pivot_pipeline_objects_v;
--drop view dynamic_pivot_pipeline_objects_large_v;
--drop view dynamic_pivot_pipeline_objects_xlarge_v;
drop view oa_dpc_poc_pf_objects_v;
drop view oa_dpc_poc_pf_objects_vl;
drop view oa_dpc_poc_pf_objects_vxl;
--drop package dynamic_pipeline_objects;
drop package oa_dpc_poc_pf_objects;

--views for pipeline using json
--drop view dynamic_pivot_pipeline_objects_json_v;
--drop view dynamic_pivot_pipeline_objects_json_large_v;
--drop view dynamic_pivot_pipeline_objects_json_xlarge_v;
drop view oa_dpc_poc_pf_json_v;
drop view oa_dpc_poc_pf_json_vl;
drop view oa_dpc_poc_pf_json_vxl;
--drop package dynamic_pipeline_objects_json;
drop package oa_dpc_poc_pf_json;

--types shared by pipelined packages and pipeline object views
@@drop_types_oa_dpc_geometry.sql;

--views creating pair values consolidated to json source
--views creating pair values consolidated to flat json source and nested table
drop view oa_dpc_poc_test_data_row_objects_v;
drop view oa_dpc_poc_test_data_row_objects_vl;
drop view oa_dpc_poc_test_data_row_objects_vxl;

@@drop_types_oa_dpc_poc_test_data_rows.sql;

--views creating hierarchical json source
drop view oa_dpc_poc_test_data_row_json_arrayagg_v;
drop view oa_dpc_poc_test_data_row_json_arrayagg_vl;
drop view oa_dpc_poc_test_data_row_json_arrayagg_vxl;
--views creating nested json source
drop view oa_dpc_poc_test_data_row_json_objectagg_v;
drop view oa_dpc_poc_test_data_row_json_objectagg_vl;
drop view oa_dpc_poc_test_data_row_json_objectagg_vxl;
--views creating base name value pairs data
drop view oa_dpc_poc_test_data_name_value_v;
drop view oa_dpc_poc_test_data_name_value_vl;
drop view oa_dpc_poc_test_data_name_value_vxl;

drop package oa_dpc_test_data_generator;

--drop package for timing, tracing and logging
--drop table for timing, tracing and logging

prompt example objects dropped