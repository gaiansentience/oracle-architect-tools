prompt dropping example objects

drop package dynamic_pivot_unit_testing;
drop package dynamic_pivot_etl_unit_testing;
drop package dynamic_pivot_test_framework;

drop package dynamic_pivot_etl;

--dynamic tables with refreshable columns and backup tables
drop table dynamic_columns_polymorphic_backup;
drop table dynamic_columns_polymorphic;
--drop backup tables
drop table dynamic_columns_pipelined_backup purge;
drop table dynamic_columns_pipelined purge;

--views to create dynamic tables (based on dynamic_pivot_pair_values table)
drop view dynamic_view_polymorphic_source_v;
drop package dynamic_view_polymorphic;

drop view dynamic_view_pipelined_source_v;
drop package dynamic_view_pipelined;

--??drop table dynamic_pivot_rowsource

drop view dynamic_pivot_item_rowsource_v;
drop view dynamic_pivot_value_types_v;
drop table dynamic_pivot_pair_values_backup purge;
drop table dynamic_pivot_pair_values purge;
drop view dynamic_pivot_pair_values_source_v;


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

drop view dynamic_pivot_pipeline_objects_v;
drop view dynamic_pivot_pipeline_objects_large_v;
drop view dynamic_pivot_pipeline_objects_xlarge_v;
drop package dynamic_pipeline_objects;

--views for pipeline using json
drop view dynamic_pivot_pipeline_objects_json_v;
drop view dynamic_pivot_pipeline_objects_json_large_v;
drop view dynamic_pivot_pipeline_objects_json_xlarge_v;
drop package dynamic_pipeline_objects_json;
--types shared by pipelined packages and object views
@@drop_types_dynamic_geometry.sql;

drop view dynamic_pivot_data_to_json_v;
drop view dynamic_pivot_data_to_json_large_v;
drop view dynamic_pivot_data_to_json_xlarge_v;

drop view dynamic_item_object_v;
drop view dynamic_item_object_large_v;
drop view dynamic_item_object_xlarge_v;
@@drop_types_dynamic_item.sql;

drop view dynamic_pivot_test_data_v;
drop view dynamic_pivot_test_data_large_v;
drop view dynamic_pivot_test_data_xlarge_v;

drop package dynamic_pivot_test_data;

--drop package for timing, tracing and logging
--drop table for timing, tracing and logging

prompt example objects dropped