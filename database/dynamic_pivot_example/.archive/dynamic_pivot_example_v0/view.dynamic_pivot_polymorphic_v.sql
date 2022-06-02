create or replace view dynamic_pivot_polymorphic_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
    from 
        dynamic_pivot_data_to_json_v j
)
select * 
from
    dynamic_pivot_polymorphic.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name from dynamic_pivot_test_data_v')
