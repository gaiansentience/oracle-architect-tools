create or replace view dynamic_pivot_polymorphic_typed_large_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        --,j.jdoc
        ,j.o_jdoc as jdoc
    from 
        --the to_json views format jdoc with sql methods
        --fails with null method dispatch error on large dataset
        --dynamic_pivot_data_to_json_large_v j
        --the item_object views format o_jdoc with plsql methods
        --dynamic_item_object_v j
        dynamic_item_object_large_v j
)
select * 
from
    dynamic_pivot_polymorphic_typed.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name, value_type from dynamic_pivot_test_data_v')
