prompt dropping example objects
drop package dynamic_pivot_unit_testing;

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
prompt example objects dropped