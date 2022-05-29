create or replace view dynamic_pivot_polymorphic_xlarge_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        --,j.jdoc
        ,j.o_jdoc as jdoc
    from 
        --the to_json views use sql json methods to format jdoc
        --fails with null method dispatch error on large dataset
        --dynamic_pivot_data_to_json_v j    
        --dynamic_pivot_data_to_json_large_v j
        --the item_object views use plsql json methods to format o_jdoc
        --dynamic_item_object_v j
        dynamic_item_object_xlarge_v j
)
select * 
from
    dynamic_pivot_polymorphic.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name from dynamic_pivot_test_data_v')
