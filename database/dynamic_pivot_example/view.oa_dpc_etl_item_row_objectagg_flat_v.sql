create or replace view oa_dpc_etl_item_row_objectagg_flat_v as
with base as
(
    select
        i.item_id
        ,min(i.item_name) as item_name
        ,min(i.item_type) as item_type
        ,json_objectagg(i.value_name value i.value_data returning clob) as jdoc
    from oa_dpc_pair_values i
    group by i.item_id
)
select
    b.item_id
    ,b.item_name
    ,b.item_type
    ,b.jdoc
    --,json_serialize(b.jdoc returning clob pretty) as jdoc_pretty
from base b;