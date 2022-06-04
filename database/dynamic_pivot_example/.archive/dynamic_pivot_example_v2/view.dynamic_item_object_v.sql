create or replace view dynamic_item_object_v as
--use collect or multiset to cast as t_dynamic_item(item_id, item_name, item_type, collect(value_id, value_name, value_type, value_data) as dynamic_item_value_pairs_table)
with object_base as
(
select
    t.item_id
    ,min(t.item_name) as item_name
    ,min(t.item_type) as item_type
    ,t_dynamic_item(t.item_id, min(t.item_name), min(t.item_type), 
        cast(
            collect(
                t_dynamic_item_value_pair(t.value_id,t.value_name,t.value_type,t.value_data)
            )
        as t_dynamic_item_value_pair_table)
   ) as o_item
from dynamic_pivot_test_data_v t
group by
    t.item_id
)
select
o.item_id
,o.item_name
,o.item_type
,o.o_item
,o.o_item.get_json() as o_jdoc
,o.o_item.get_json_flat() as o_jdoc_flat
--,json_serialize(o.o_item.get_json() returning clob pretty) as o_jdoc_pretty
--,json_serialize(o.o_item.get_json_flat() returning clob pretty) as o_jdoc_flat_pretty
--,json_serialize(json_object(o.o_item) returning clob pretty) as object_to_json
from object_base o