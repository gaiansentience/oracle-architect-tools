create or replace view dynamic_pivot_data_to_json_large_v as
select
    i.item_id
    ,min(i.item_name) as item_name
    ,min(i.item_type) as item_type
    ,json_serialize(
    json_object(
        'itemId'     value i.item_id,
        'itemName'   value min(i.item_name), 
        'itemType'   value min(i.item_type), 
        'itemValues' value
            (select 
                json_arrayagg(
                    json_object(
                        x.value_name value x.value_data,
                        x.value_name || 'ValueDefinition' value    
                                json_object(
                                    'valueId'   value x.value_id,
                                    'valueType' value x.value_type
                                )
                    )
                returning clob) 
            from dynamic_pivot_test_data_large_v x 
            where x.item_id = i.item_id) 
    returning clob)
returning clob pretty) as jdoc
from dynamic_pivot_test_data_large_v i
group by 
    i.item_id;