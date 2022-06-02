create or replace view dynamic_pivot_polymorphic_xlarge_flat_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        --,j.jdoc
        ,j.o_jdoc_flat as jdoc
    from 
        --dynamic_pivot_data_to_json_v j
        --jdoc and o_jdoc are the same format in both views
        --o_jdoc_flat stores the value pairs without using json array
        --data to json uses sql methods to format json
        --item object uses plsql to format json
        --dynamic_item_object_v j
        dynamic_item_object_xlarge_v j
)
select * 
from
    dynamic_pivot_polymorphic_flat.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name from dynamic_pivot_test_data_v')
