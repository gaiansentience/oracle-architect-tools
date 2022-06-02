create or replace view dynamic_view_json_table_source_v as
select
    rs.item_id
    ,rs.item_name
    ,rs.item_type
    ,j.a_degrees as "a_degrees"
    ,j.a_side as "a_side"
    ,j.area as "area"
    ,j.color as "color"
    ,j.equation as "equation"
    --,rs.o_jdoc_flat
    --,json_serialize(rs.o_jdoc_flat returning clob pretty) as jdoc_flat_pretty
from
    dynamic_pivot_item_rowsource_v rs,
    json_table(rs.o_jdoc_flat
        columns
        (
            a_degrees number path '$.a_degrees',
            a_side number path '$.a_side',
            area number path '$.area',
            color varchar2(4000) path '$.color',
            equation varchar2(4000) path '$.equation'
        )
    ) j;