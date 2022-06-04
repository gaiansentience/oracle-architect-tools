set serveroutput on;
begin
    --rebuild the view dynamically generating the json_table columns clause
    oa_dpc_etl.rebuild_etl_view_json_table(p_execute => false);

end;


/*


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
    ,j.area as "area"
    ,j.circumference as "circumference"
    ,j.color as "color"
    ,j.equation as "equation"
    ,j.interiorAngles as "interiorAngles"
    ,j.length as "length"
    ,j.radius as "radius"
    ,j.shading as "shading"
    ,j.side as "side"
    ,j.sideLength as "sideLength"
    ,j.sides as "sides"
    ,j.slope as "slope"
    ,j.sumInteriorAngles as "sumInteriorAngles"
    ,j.width as "width"
    ,j.y_intercept as "y_intercept"
    --,rs.jdoc
    --,json_serialize(rs.jdoc returning clob pretty) as jdoc_pretty
from
    base rs,
    json_table(rs.jdoc
        columns
        (
            item_id number path '$.item_id'
            ,area number path '$.area'
            ,circumference number path '$.circumference'
            ,color varchar2 path '$.color'
            ,equation varchar2 path '$.equation'
            ,interiorAngles number path '$.interiorAngles'
            ,length number path '$.length'
            ,radius number path '$.radius'
            ,shading varchar2 path '$.shading'
            ,side number path '$.side'
            ,sideLength number path '$.sideLength'
            ,sides number path '$.sides'
            ,slope number path '$.slope'
            ,sumInteriorAngles number path '$.sumInteriorAngles'
            ,width number path '$.width'
            ,y_intercept number path '$.y_intercept'
        )
    ) j


PL/SQL procedure successfully completed.



*/