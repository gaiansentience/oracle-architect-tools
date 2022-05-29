prompt dropping example objects
drop view dynamic_pivot_polymorphic_large_v;
drop view dynamic_pivot_polymorphic_typed_large_v;
drop view dynamic_pivot_pipeline_objects_large_v;
drop view dynamic_item_object_large_v;
drop view dynamic_pivot_data_to_json_large_v;
drop view dynamic_pivot_test_data_large_v;

drop view dynamic_pivot_polymorphic_v;
drop package dynamic_pivot_polymorphic;

drop view dynamic_pivot_polymorphic_typed_v;
drop package dynamic_pivot_polymorphic_typed;

drop view dynamic_pivot_pipeline_objects_v;
drop package dynamic_pipeline_objects;
@@drop_types_dynamic_geometry.sql;

drop view dynamic_item_object_v;
@@drop_types_dynamic_item.sql;

drop view dynamic_pivot_data_to_json_v;

drop view dynamic_pivot_test_data_v;
drop package dynamic_pivot_test_data;
prompt example objects dropped