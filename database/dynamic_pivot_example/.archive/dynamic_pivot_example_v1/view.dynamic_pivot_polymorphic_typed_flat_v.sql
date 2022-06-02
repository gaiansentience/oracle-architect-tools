create or replace view dynamic_pivot_polymorphic_typed_flat_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.o_jdoc_flat as jdoc
    from 
        dynamic_item_object_v j
)
select * 
from
    dynamic_pivot_polymorphic_typed_flat.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(jdoc), 
        'select distinct value_name, value_type from dynamic_pivot_test_data_v'
        );
