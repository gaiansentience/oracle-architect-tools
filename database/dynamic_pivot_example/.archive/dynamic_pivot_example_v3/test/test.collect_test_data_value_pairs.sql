--use collect or multiset to cast as t_dynamic_item(item_id, item_name, item_type, collect(value_id, value_name, value_type, value_data) as dynamic_item_value_pairs_table)
with object_base as
(
select
    t.item_id,
    t_dynamic_item(t.item_id, min(t.item_name), min(t.item_type), 
        cast(
            collect(
                t_dynamic_item_value_pair(t.value_id,t.value_name,t.value_type,t.value_data)
            )
        as t_dynamic_item_value_pair_table)
   ) as o_item
from dynamic_pivot_test_data_v t
--where item_id = 12
group by
    t.item_id
--    ,t.item_name
--    ,t.item_type
)
select
o.item_id,
o.o_item,
o.o_item.get_json() as o_jdoc
from object_base o
order by 
    o.item_id
    --,t.value_id;