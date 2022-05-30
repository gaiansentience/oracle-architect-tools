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

prompt creating dynamic name|value nested table type objects
@@create_types_dynamic_item.sql;
prompt creating object views to consolidate test data name|value pairs as json using plsql and as nested tables using objects
@@view.dynamic_item_object_v.sql;
@@view.dynamic_item_object_large_v.sql;
@@view.dynamic_item_object_xlarge_v.sql;

prompt creating dynamic geometry object hierarchy
@@create_types_dynamic_geometry.sql;
prompt creating pipeline package and views to return nested table name|value pairs as dynamic_geometry subtypes
@@package.dynamic_pipeline_objects.spec;
@@package.dynamic_pipeline_objects.body;
@@view.dynamic_pivot_pipeline_objects_v.sql;
@@view.dynamic_pivot_pipeline_objects_large_v.sql;
@@view.dynamic_pivot_pipeline_objects_xlarge_v.sql;
prompt creating pipeline package and views to return flat json name|value pairs as dynamic_geometry subtypes
@@package.dynamic_pipeline_objects_json.spec;
@@package.dynamic_pipeline_objects_json.body;
@@view.dynamic_pivot_pipeline_objects_json_v.sql;
@@view.dynamic_pivot_pipeline_objects_json_large_v.sql;
@@view.dynamic_pivot_pipeline_objects_json_xlarge_v.sql;

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

@@package.dynamic_pivot_unit_testing.spec;
@@package.dynamic_pivot_unit_testing.body;

prompt example objects created