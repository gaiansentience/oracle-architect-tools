create or replace view oa_dpc_poc_test_data_row_objects_v as
with object_base as
(
    select
        t.item_id
        ,min(t.item_name) as item_name
        ,min(t.item_type) as item_type
        ,oa_dpc_t_row_item(t.item_id, min(t.item_name), min(t.item_type), 
            cast(
                collect(
                    oa_dpc_t_value_pair(t.value_name, t.value_data)
                )
            as oa_dpc_t_value_pair_table)
       ) as o_item
    from oa_dpc_poc_test_data_name_value_v t
    group by t.item_id
)
select
    o.item_id
    ,o.item_name
    ,o.item_type
    ,o.o_item
    ,o.o_item.get_json_array() as o_jdoc_array
    ,o.o_item.get_json_nested() as o_jdoc_nested
    ,o.o_item.get_json_flat() as o_jdoc_flat
    --,json_serialize(o.o_item.get_json_array() returning clob pretty) as o_jdoc_array_pretty
    --,json_serialize(o.o_item.get_json_nested() returning clob pretty) as o_jdoc_nested_pretty
    --,json_serialize(o.o_item.get_json_flat() returning clob pretty) as o_jdoc_flat_pretty
    --,json_serialize(json_object(o.o_item) returning clob pretty) as object_to_json
from object_base o