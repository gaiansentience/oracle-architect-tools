prompt creating objects for dynamic pivot comparison example
--create table for timing, tracing and logging
--create package for timing, tracing and logging

@packages\create_packages_test_data_generation.sql;

@types\create_types.sql;

@views\create_views_test_data_pair_values_rowsource.sql;

@packages\create_packages_dynamic_pivot.sql;

@views\create_views_poc_dynamic_pivot.sql;

prompt creating etl table based pair values data
@views\view.oa_dpc_etl_pair_values_generator_v.sql;
@views\view.oa_dpc_etl_pair_values_source_v.sql;
prompt creating empty dynamic_pivot_pair_values table and backup table
prompt run dynamic_pivot_etl.reload_table_pair_value_source to create test data and backup table
@tables\table.oa_dpc_pair_values.sql;
prompt view for distinct pair value attributes and datatypes
@views\view.oa_dpc_value_types_v.sql;

@views\create_views_etl_item_rowsource.sql;

--etl packages and views to create dynamic tables (based on dynamic_pivot_pair_values table)
--etl pipelined package
@packages\package.oa_dpc_etl_pf_objects.spec;
@packages\package.oa_dpc_etl_pf_objects.body;
@views\create_views_etl_ctas.sql;
@tables\create_tables_etl_ctas.sql;

@views\view.oa_dpc_etl_table_rowcounts_v.sql;

@packages\package.oa_dpc_etl.spec;
@packages\package.oa_dpc_etl.body;

@packages\create_packages_unit_testing.sql;

prompt default install script does not create test results table or comparison views
prompt running testing framework will create oa_dpc_test_results table if it does not exist
--@tables\table.oa_dpc_test_results.sql;
prompt create the oa_dpc_test_compare_codebase_v view to compare testing across different codebase versions
--@views\view.oa_dpc_test_compare_codebase_v.sql;
--@views\view.oa_dpc_test_compare_codebase_pivot_v.sql;

prompt all example objects created