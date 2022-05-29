prompt creating test data generator objects
@@package.dynamic_pivot_test_data.spec;
@@package.dynamic_pivot_test_data.body;
@@view.dynamic_pivot_test_data_v.sql;
@@view.dynamic_pivot_data_to_json_v.sql;
prompt created test data with polymorphic contents as name value pairs
prompt creating dynamic item object types and view
@@create_types_dynamic_item.sql;
@@view.dynamic_item_object_v.sql;
prompt creating dynamic pipeline function with dynamic geometry object hierarchy
@@create_types_dynamic_geometry.sql;
@@package.dynamic_pipeline_objects.spec;
@@package.dynamic_pipeline_objects.body;
@@view.dynamic_pivot_pipeline_objects_v.sql;
prompt creating dynamic pivot using polymorphic table function
@@package.dynamic_pivot_polymorphic.spec;
@@package.dynamic_pivot_polymorphic.body;
@@view.dynamic_pivot_polymorphic_v.sql;
@@package.dynamic_pivot_polymorphic_typed.spec;
@@package.dynamic_pivot_polymorphic_typed.body;
@@view.dynamic_pivot_polymorphic_typed_v.sql;
prompt creating large data sources for load tests
@@view.dynamic_pivot_test_data_large_v.sql;
@@view.dynamic_pivot_data_to_json_large_v.sql;
@@view.dynamic_item_object_large_v.sql;
@@view.dynamic_pivot_pipeline_objects_large_v.sql;
@@view.dynamic_pivot_polymorphic_large_v.sql;
@@view.dynamic_pivot_polymorphic_typed_large_v.sql;
prompt example objects created