create or replace view dynamic_pivot_test_data_large_v as
with base as
(
    select
        dynamic_pivot_test_data.get_json_data(100) as jdoc
    from dual
)
select
    j.item_id,
    j.item_name,
    j.item_type,
    j.value_id,
    j.value_name,
    j.value_type,
    j.value_data
    --,b.jdoc
from 
    base b,
    json_table(b.jdoc
        columns
        (
            nested path '$.items[*]'
            columns
            (
                item_id   number        path '$.itemId',
                item_name varchar2(100) path '$.itemName',
                item_type varchar2(100) path '$.itemType',
                nested                  path '$.itemValuePairs[*]'
                columns
                (
                    value_id   number         path '$.valueId',
                    value_name varchar2(100)  path '$.valueName',
                    value_type varchar2(100)  path '$.valueType',
                    value_data varchar2(4000) path '$.valueData'
                )
            )
       )
    ) j