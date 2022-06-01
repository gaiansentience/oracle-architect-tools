create or replace view dynamic_pivot_data_to_json_v_objectagg_xlarge as
with base as
(
select
    i.item_id
    ,min(i.item_name) as item_name
    ,min(i.item_type) as item_type
    ,json_object(
        'itemId'     value i.item_id,
        'itemName'   value min(i.item_name), 
        'itemType'   value min(i.item_type), 
        'itemValues' value
            json_objectagg(i.value_name value i.value_data returning clob),
        'itemValueDefinitions' value
            json_objectagg(i.value_name || 'ValueDefinition' value
                    json_object(
                        'valueId' value i.value_id, 
                        'valueType' value i.value_type)
                    )
    returning clob) as jdoc
from dynamic_pivot_test_data_xlarge_v i
group by 
    i.item_id
)
select
    b.item_id
    ,b.item_name
    ,b.item_type
    ,b.jdoc
    --,json_serialize(b.jdoc returning clob pretty) as jdoc_pretty
from base b;