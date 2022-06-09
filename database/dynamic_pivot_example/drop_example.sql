prompt dropping example objects

prompt do not drop views for comparing codebases
--drop view oa_dpc_test_compare_codebase_pivot_v;
--drop view oa_dpc_test_compare_codebase_v;
--drop table oa_dpc_test_results purge;

@packages\drop_packages_unit_testing.sql;

drop package oa_dpc_etl;
drop view oa_dpc_etl_table_rowcounts_v;

@tables\drop_tables_etl_ctas.sql;
@views\drop_views_etl_ctas.sql;

--pipelined etl package
drop package oa_dpc_etl_pf_objects;
@views\drop_views_etl_item_rowsource.sql

prompt etl pair value source data
drop view oa_dpc_value_types_v;
drop table oa_dpc_pair_values_backup purge;
drop table oa_dpc_pair_values purge;
drop view oa_dpc_etl_pair_values_source_v;
drop view oa_dpc_etl_pair_values_generator_v;

prompt dropping proof of concept and shared objects
@views\drop_views_poc_dynamic_pivot.sql;
@packages\drop_packages_dynamic_pivot.sql;
@views\drop_views_test_data_pair_values_rowsource.sql;

@types\drop_types.sql;

@packages\drop_packages_test_data_generation.sql;

--drop package for timing, tracing and logging
--drop table for timing, tracing and logging

prompt example objects dropped