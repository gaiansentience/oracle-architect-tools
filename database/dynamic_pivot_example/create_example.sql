--create table for timing, tracing and logging
--create package for timing, tracing and logging

prompt creating test data generator objects
@@package.oa_dpc_test_data_generator.spec;
@@package.oa_dpc_test_data_generator.body;

@@view.oa_dpc_poc_test_data_name_value_v.sql;
@@view.oa_dpc_poc_test_data_name_value_vl.sql;
@@view.oa_dpc_poc_test_data_name_value_vxl.sql;
prompt created test data with polymorphic contents as name value pairs

prompt views to consolidate test data name|value pairs as json using sql
@@view.oa_dpc_poc_test_data_row_json_arrayagg_v.sql;
@@view.oa_dpc_poc_test_data_row_json_arrayagg_vl.sql;
@@view.oa_dpc_poc_test_data_row_json_arrayagg_vxl.sql;

--alternative view using json_objectagg (value pairs are nested json object instead of json array)
@@view.oa_dpc_poc_test_data_row_json_objectagg_v.sql;
@@view.oa_dpc_poc_test_data_row_json_objectagg_vl.sql;
@@view.oa_dpc_poc_test_data_row_json_objectagg_vxl.sql;

prompt creating row consolidation name|value nested table type objects
prompt these types are common to oa_dpc_poc* and oa_dpc_etl*
@@create_types_oa_dpc_test_data_rows.sql

prompt creating object views to consolidate test data name|value pairs as json using plsql and as nested tables using objects
@@view.oa_dpc_poc_test_data_row_objects_v.sql;
@@view.oa_dpc_poc_test_data_row_objects_vl.sql;
@@view.oa_dpc_poc_test_data_row_objects_vxl.sql;

prompt creating dynamic pivot using pipelined functions returning object hierarchy

prompt creating dynamic geometry object hierarchy
prompt these types are common to oa_dpc_poc* and oa_dpc_etl*
@@create_types_oa_dpc_geometry.sql;

prompt creating pipeline package and views to return nested table name|value pairs as dynamic_geometry subtypes
@@package.oa_dpc_poc_pf_objects.spec;
@@package.oa_dpc_poc_pf_objects.body;
@@package.dynamic_pipeline_objects.spec;
@@package.dynamic_pipeline_objects.body;

@@view.oa_dpc_poc_pf_objects_v.sql;
@@view.oa_dpc_poc_pf_objects_vl.sql;
@@view.oa_dpc_poc_pf_objects_vxl.sql;
 
prompt creating pipeline package and views to return flat json name|value pairs as dynamic_geometry subtypes
@@package.oa_dpc_poc_pf_json.spec;
@@package.oa_dpc_poc_pf_json.body;
@@package.dynamic_pipeline_objects_json.spec;
@@package.dynamic_pipeline_objects_json.body;

@@view.oa_dpc_poc_pf_json_v.sql;
@@view.oa_dpc_poc_pf_json_vl.sql;
@@view.oa_dpc_poc_pf_json_vxl.sql;



prompt creating dynamic pivot using polymorphic row functions

prompt polymorphic function pivoting columns from hierarchical json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.dynamic_pivot_polymorphic.spec;
@@package.dynamic_pivot_polymorphic.body;
@@view.dynamic_pivot_polymorphic_v.sql;
@@view.dynamic_pivot_polymorphic_large_v.sql;
@@view.dynamic_pivot_polymorphic_xlarge_v.sql;

prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.dynamic_pivot_polymorphic_typed.spec;
@@package.dynamic_pivot_polymorphic_typed.body;
@@view.dynamic_pivot_polymorphic_typed_v.sql;
@@view.dynamic_pivot_polymorphic_typed_large_v.sql;
@@view.dynamic_pivot_polymorphic_typed_xlarge_v.sql;

prompt polymorphic function pivoting columns from flat json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.dynamic_pivot_polymorphic_flat.spec;
@@package.dynamic_pivot_polymorphic_flat.body;
@@view.dynamic_pivot_polymorphic_flat_v.sql;
@@view.dynamic_pivot_polymorphic_large_flat_v.sql;
@@view.dynamic_pivot_polymorphic_xlarge_flat_v.sql;

prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.dynamic_pivot_polymorphic_typed_flat.spec;
@@package.dynamic_pivot_polymorphic_typed_flat.body;
@@view.dynamic_pivot_polymorphic_typed_flat_v.sql;
@@view.dynamic_pivot_polymorphic_typed_large_flat_v.sql;
@@view.dynamic_pivot_polymorphic_typed_xlarge_flat_v.sql;


prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.dynamic_pivot_polymorphic_typed_flat_row.spec;
@@package.dynamic_pivot_polymorphic_typed_flat_row.body;
@@view.dynamic_pivot_polymorphic_typed_flat_rows_v.sql;
@@view.dynamic_pivot_polymorphic_typed_large_flat_rows_v.sql;
@@view.dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v.sql;

prompt polymorphic function pivoting columns from nested json rowsource - data as varchar or number
@@package.dynamic_pivot_polymorphic_typed_objectagg_row.spec;
@@package.dynamic_pivot_polymorphic_typed_objectagg_row.body;
@@view.dynamic_pivot_polymorphic_typed_objectagg_rows_v.sql;
@@view.dynamic_pivot_polymorphic_typed_objectagg_rows_v_large.sql;
@@view.dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge.sql;



prompt creating table based pair values data and rowsource consolidation view
@@view.oa_dpc_etl_pair_values_generator_v.sql;
@@view.oa_dpc_etl_pair_values_source_v.sql;
prompt creating empty dynamic_pivot_pair_values table and backup table
prompt run dynamic_pivot_etl.reload_table_pair_value_source to create test data and backup table
@@table.oa_dpc_pair_values.sql;
@@view.oa_dpc_value_types_v.sql;


@@view.dynamic_pivot_item_rowsource_v.sql;
@@view.dynamic_pivot_item_rowsource_objectagg_v.sql;
--??create table dynamic_pivot_rowsource

--packages and views to create dynamic tables (based on dynamic_pivot_pair_values table)
@@package.dynamic_view_polymorphic.spec;
@@package.dynamic_view_polymorphic.body;
@@view.dynamic_view_polymorphic_source_v.sql;

@@package.dynamic_view_polymorphic_row_objectagg.spec;
@@package.dynamic_view_polymorphic_row_objectagg.body;
@@view.dynamic_view_polymorphic_row_objectagg_source_v.sql;

@@package.dynamic_view_polymorphic_row.spec;
@@package.dynamic_view_polymorphic_row.body;
@@view.dynamic_view_polymorphic_row_source_v.sql;


@@package.dynamic_view_pipelined.spec;
@@package.dynamic_view_pipelined.body;
@@view.dynamic_view_pipelined_source_v.sql;

@@view.dynamic_view_json_table_source_v.sql;

--dynamic tables with refreshable columns and backup tables
@@table.dynamic_columns_polymorphic_row.sql;

@@table.dynamic_columns_polymorphic.sql;
@@table.dynamic_columns_polymorphic_objectagg.sql;
@@table.dynamic_columns_pipelined.sql;
@@table.dynamic_columns_json_table.sql;

@@package.dynamic_pivot_etl.spec;
@@package.dynamic_pivot_etl.body;

prompt creating packages for test framework and unit testing
@@package.dynamic_pivot_test_framework.spec;
@@package.dynamic_pivot_test_framework.body;

@@package.dynamic_pivot_unit_testing.spec;
@@package.dynamic_pivot_unit_testing.body;

@@package.dynamic_pivot_etl_unit_testing.spec;
@@package.dynamic_pivot_etl_unit_testing.body;

prompt example objects created