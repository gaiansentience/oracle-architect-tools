prompt creating test data generator objects
@@package.dynamic_pivot_test_data.spec;
@@package.dynamic_pivot_test_data.body;

@@view.dynamic_pivot_test_data_v.sql;
@@view.dynamic_pivot_test_data_large_v.sql;
@@view.dynamic_pivot_test_data_xlarge_v.sql;
prompt created test data with polymorphic contents as name value pairs

prompt views to consolidate test data name|value pairs as json using sql
@@view.dynamic_pivot_data_to_json_v.sql;
@@view.dynamic_pivot_data_to_json_large_v.sql;
@@view.dynamic_pivot_data_to_json_xlarge_v.sql;

prompt creating dynamic item object types and views to consolidate test data name|value pairs as json using plsql and as nested tables using objects
@@create_types_dynamic_item.sql;
@@view.dynamic_item_object_v.sql;
@@view.dynamic_item_object_large_v.sql;
@@view.dynamic_item_object_xlarge_v.sql;

prompt creating dynamic pipeline function with dynamic geometry object hierarchy from nested tables
@@create_types_dynamic_geometry.sql;
@@package.dynamic_pipeline_objects.spec;
@@package.dynamic_pipeline_objects.body;
@@view.dynamic_pivot_pipeline_objects_v.sql;
@@view.dynamic_pivot_pipeline_objects_large_v.sql;
@@view.dynamic_pivot_pipeline_objects_xlarge_v.sql;

prompt creating dynamic pivot using polymorphic row functions
prompt polymorphic function pivoting columns from hierarchical json rowsource - all data as varchar
@@package.dynamic_pivot_polymorphic.spec;
@@package.dynamic_pivot_polymorphic.body;
@@view.dynamic_pivot_polymorphic_v.sql;
@@view.dynamic_pivot_polymorphic_large_v.sql;
@@view.dynamic_pivot_polymorphic_xlarge_v.sql;

prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
@@package.dynamic_pivot_polymorphic_typed.spec;
@@package.dynamic_pivot_polymorphic_typed.body;
@@view.dynamic_pivot_polymorphic_typed_v.sql;
@@view.dynamic_pivot_polymorphic_typed_large_v.sql;
@@view.dynamic_pivot_polymorphic_typed_xlarge_v.sql;

prompt polymorphic function pivoting columns from flat json rowsource - all data as varchar
@@package.dynamic_pivot_polymorphic_flat.spec;
@@package.dynamic_pivot_polymorphic_flat.body;
@@view.dynamic_pivot_polymorphic_flat_v.sql;
@@view.dynamic_pivot_polymorphic_large_flat_v.sql;
@@view.dynamic_pivot_polymorphic_xlarge_flat_v.sql;

prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
@@package.dynamic_pivot_polymorphic_typed_flat.spec;
@@package.dynamic_pivot_polymorphic_typed_flat.body;
@@view.dynamic_pivot_polymorphic_typed_flat_v.sql;
@@view.dynamic_pivot_polymorphic_typed_large_flat_v.sql;
@@view.dynamic_pivot_polymorphic_typed_xlarge_flat_v.sql;

prompt example objects created