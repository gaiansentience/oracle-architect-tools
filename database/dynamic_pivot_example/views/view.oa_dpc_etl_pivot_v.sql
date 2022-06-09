create or replace view oa_dpc_etl_pivot_v as
with base as
(
    select 
        pv.item_id
        ,pv.item_name
        ,pv.item_type
        ,pv.value_name
        ,pv.value_data
    from oa_dpc_pair_values pv
)
select
    p.item_id
    ,p.item_name
    ,p.item_type
    ,p.c_degrees as "c_degrees"
    ,p.a_side    as "a_side"
    ,p.b_side    as "b_side"
    ,p.side      as "side"
    ,p.length    as "length"
    ,p.width     as "width"
    ,p.radius    as "radius"
    ,p.area      as "area"
    ,p.color     as "color"
from
    base b
    pivot
    (
        max(value_data) for
        value_name in
        (
            'dummy_item_id'    as dummy_item_id
            ,'c_degrees'       as c_degrees
            ,'a_side'          as a_side
            ,'b_side'          as b_side
            ,'side'            as side
            ,'length'          as length
            ,'width'           as width
            ,'radius'          as radius
            ,'area'            as area
            ,'color'           as color            
        )
    ) p