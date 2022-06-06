create or replace view oa_dpc_etl_ptf_rt_objectagg_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
        --,j.o_jdoc_nested as jdoc
    from 
        oa_dpc_etl_item_row_objectagg_v j
        --oa_dpc_etl_item_row_objects_v j
)
select * 
from
    oa_dpc_ptf_rt_objectagg.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(jdoc), 
        'select distinct value_name, value_type from oa_dpc_value_types_v'
        );
