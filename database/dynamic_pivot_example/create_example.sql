--create table for timing, tracing and logging
--create package for timing, tracing and logging

prompt creating test data generator objects
@@package.oa_geometry.spec;
@@package.oa_geometry.body;
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

prompt creating row consolidation name|value nested table type objects
prompt these types are common to oa_dpc_poc* and oa_dpc_etl*
@@create_types_oa_dpc_test_data_rows.sql

prompt creating object views to consolidate test data name|value pairs as json using plsql and as nested tables using objects
@@view.oa_dpc_poc_test_data_row_objects_v.sql;
@@view.oa_dpc_poc_test_data_row_objects_vl.sql;
@@view.oa_dpc_poc_test_data_row_objects_vxl.sql;

prompt view to compare row input formats to pipelined table functions and polymorphic table functions
@@view.oa_dpc_poc_test_data_row_formats_v.sql;


prompt creating dynamic pivot using pipelined functions returning object hierarchy

prompt creating dynamic geometry object hierarchy
prompt these types are common to oa_dpc_poc* and oa_dpc_etl*
@@create_types_oa_dpc_geometry.sql;

prompt creating pipeline package and views to return nested table name|value pairs as dynamic_geometry subtypes
@@package.oa_dpc_poc_pf_objects.spec;
@@package.oa_dpc_poc_pf_objects.body;

@@view.oa_dpc_poc_pf_objects_v.sql;
@@view.oa_dpc_poc_pf_objects_vl.sql;
@@view.oa_dpc_poc_pf_objects_vxl.sql;
 
prompt creating pipeline package and views to return flat json name|value pairs as dynamic_geometry subtypes
@@package.oa_dpc_poc_pf_json.spec;
@@package.oa_dpc_poc_pf_json.body;

@@view.oa_dpc_poc_pf_json_v.sql;
@@view.oa_dpc_poc_pf_json_vl.sql;
@@view.oa_dpc_poc_pf_json_vxl.sql;
--could rename these into json_flat and create json_arrayagg to show performance of pipelined with hierarchical json


prompt creating dynamic pivot using polymorphic row functions

prompt polymorphic function pivoting columns from hierarchical json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_c_arrayagg.spec;
@@package.oa_dpc_ptf_c_arrayagg.body;
@@view.oa_dpc_ptf_c_arrayagg_v.sql;
@@view.oa_dpc_ptf_c_arrayagg_vl.sql;
@@view.oa_dpc_ptf_c_arrayagg_vxl.sql;

prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_ct_arrayagg.spec;
@@package.oa_dpc_ptf_ct_arrayagg.body;
@@view.oa_dpc_ptf_ct_arrayagg_v.sql;
@@view.oa_dpc_ptf_ct_arrayagg_vl.sql;
@@view.oa_dpc_ptf_ct_arrayagg_vxl.sql;

prompt polymorphic function pivoting columns from flat json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_c_flat.spec;
@@package.oa_dpc_ptf_c_flat.body;
@@view.oa_dpc_ptf_c_flat_v.sql;
@@view.oa_dpc_ptf_c_flat_vl.sql;
@@view.oa_dpc_ptf_c_flat_vxl.sql;

prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_ct_flat.spec;
@@package.oa_dpc_ptf_ct_flat.body;
@@view.oa_dpc_ptf_ct_flat_v.sql;
@@view.oa_dpc_ptf_ct_flat_vl.sql;
@@view.oa_dpc_ptf_ct_flat_vxl.sql;

prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.oa_dpc_ptf_rt_arrayagg.spec;
@@package.oa_dpc_ptf_rt_arrayagg.body;
@@view.oa_dpc_ptf_rt_arrayagg_v.sql;
@@view.oa_dpc_ptf_rt_arrayagg_vl.sql;
@@view.oa_dpc_ptf_rt_arrayagg_vxl.sql;


prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.oa_dpc_ptf_rt_flat.spec;
@@package.oa_dpc_ptf_rt_flat.body;
@@view.oa_dpc_ptf_rt_flat_v.sql;
@@view.oa_dpc_ptf_rt_flat_vl.sql;
@@view.oa_dpc_ptf_rt_flat_vxl.sql;

@@package.oa_dpc_ptf_rt_objectagg.spec;
@@package.oa_dpc_ptf_rt_objectagg.body;
@@view.oa_dpc_ptf_rt_objectagg_v.sql;
@@view.oa_dpc_ptf_rt_objectagg_vl.sql;
@@view.oa_dpc_ptf_rt_objectagg_vxl.sql;

@@package.oa_dpc_ptf_rt_xml.spec;
@@package.oa_dpc_ptf_rt_xml.body;
@@view.oa_dpc_ptf_rt_xml_v.sql;
@@view.oa_dpc_ptf_rt_xml_vl.sql;
@@view.oa_dpc_ptf_rt_xml_vxl.sql;

prompt creating table based pair values data and rowsource consolidation view
@@view.oa_dpc_etl_pair_values_generator_v.sql;
@@view.oa_dpc_etl_pair_values_source_v.sql;
prompt creating empty dynamic_pivot_pair_values table and backup table
prompt run dynamic_pivot_etl.reload_table_pair_value_source to create test data and backup table
@@table.oa_dpc_pair_values.sql;
@@view.oa_dpc_value_types_v.sql;

prompt etl views with consolidated rowsource for each item
@@view.oa_dpc_etl_item_row_arrayagg_v.sql;
@@view.oa_dpc_etl_item_row_objectagg_v.sql;
@@view.oa_dpc_etl_item_row_objectagg_flat_v.sql;
@@view.oa_dpc_etl_item_row_objects_v.sql;
@@view.oa_dpc_etl_item_row_xml_v.sql;


--??create table dynamic_pivot_rowsource

--packages and views to create dynamic tables (based on dynamic_pivot_pair_values table)
--etl polymorhic views use shared packages with poc polymorphic views
@@view.oa_dpc_etl_ptf_ct_arrayagg_v.sql;
@@view.oa_dpc_etl_ptf_rt_arrayagg_v.sql;
@@view.oa_dpc_etl_ptf_rt_objectagg_v.sql;
@@view.oa_dpc_etl_ptf_ct_flat_v.sql;
@@view.oa_dpc_etl_ptf_rt_flat_v.sql;
@@view.oa_dpc_etl_ptf_rt_xml_v.sql;

--etl pipelined view and package
@@package.oa_dpc_etl_pf_objects.spec;
@@package.oa_dpc_etl_pf_objects.body;
@@view.oa_dpc_etl_pf_objects_v.sql;
--etl using json_table only
@@view.oa_dpc_etl_json_table_v.sql;
--etl using xml_table only
@@view.oa_dpc_etl_xml_table_v.sql;
--etl using pivot
@@view.oa_dpc_etl_pivot_v.sql;

--dynamic tables with refreshable columns and backup tables
@@table.oa_dpc_items_ptf_ct_arrayagg.sql;
@@table.oa_dpc_items_ptf_rt_arrayagg.sql;
@@table.oa_dpc_items_ptf_rt_objectagg.sql;
@@table.oa_dpc_items_ptf_ct_flat.sql;
@@table.oa_dpc_items_ptf_rt_flat.sql;
@@table.oa_dpc_items_pf_objects.sql;
@@table.oa_dpc_items_json_table.sql;
@@table.oa_dpc_items_ptf_rt_xml.sql;
@@table.oa_dpc_items_xml_table.sql;
@@table.oa_dpc_items_pivot.sql;

@@view.oa_dpc_etl_table_rowcounts_v.sql;

@@package.oa_dpc_etl.spec;
@@package.oa_dpc_etl.body;

prompt creating packages for test framework and unit testing
@@package.oa_dpc_test_framework.spec;
@@package.oa_dpc_test_framework.body;

prompt default install script does not create test results table or comparison views
prompt running testing framework will create oa_dpc_test_results table if it does not exist
--@@table.oa_dpc_test_results.sql;
prompt create the oa_dpc_test_compare_codebase_v view to compare testing across different codebase versions
--@@view.oa_dpc_test_compare_codebase_v.sql;
--@@view.oa_dpc_test_compare_codebase_pivot_v.sql;

@@package.oa_dpc_poc_testing.spec;
@@package.oa_dpc_poc_testing.body;

@@package.oa_dpc_etl_testing.spec;
@@package.oa_dpc_etl_testing.body;

prompt all example objects created