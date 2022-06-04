create or replace view dynamic_pivot_polymorphic_typed_objectagg_rows_v_large as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
    from 
        dynamic_pivot_data_to_json_v_objectagg_large j
)
select * 
from
    dynamic_pivot_polymorphic_typed_objectagg_row.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name, value_type from dynamic_pivot_test_data_v')
