create or replace view oa_dpc_etl_json_table_v as
with base as
(
    select
        s.item_id,
        s.item_name,
        s.item_type,
        s.jdoc
        --s.o_jdoc_flat as jdoc
    from
        oa_dpc_etl_item_row_objectagg_flat_v s
        --oa_dpc_etl_item_row_objects_v s
)
select
    rs.item_id
    ,rs.item_name
    ,rs.item_type
    ,j.a_degrees as "a_degrees"
    ,j.a_side as "a_side"
    ,j.area as "area"
    ,j.color as "color"
    ,j.equation as "equation"
    --,rs.jdoc
    --,json_serialize(rs.jdoc returning clob pretty) as jdoc_pretty
from
    base rs,
    json_table(rs.jdoc
        columns
        (
            a_degrees number path '$.a_degrees',
            a_side number path '$.a_side',
            area number path '$.area',
            color varchar2(4000) path '$.color',
            equation varchar2(4000) path '$.equation'
        )
    ) j;