set serveroutput on;
begin

  oa_dpc_etl.rebuild_table_items_json_table(p_execute => false);

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
    ,j.a_degrees                      as "a_degrees"
    ,j.a_side                         as "a_side"
    ,j.area                           as "area"
    ,j.b_degrees                      as "b_degrees"
    ,j.b_side                         as "b_side"
    ,j.base                           as "base"
    ,j.baseArea                       as "baseArea"
    ,j.baseCircumference              as "baseCircumference"
    ,j.baseLength                     as "baseLength"
    ,j.basePerimeter                  as "basePerimeter"
    ,j.baseSides                      as "baseSides"
    ,j.c_degrees                      as "c_degrees"
    ,j.c_side                         as "c_side"
    ,j.circumference                  as "circumference"
    ,j.color                          as "color"
    ,j.composition                    as "composition"
    ,j.curvedArea                     as "curvedArea"
    ,j.depth                          as "depth"
    ,j.equation                       as "equation"
    ,j.height                         as "height"
    ,j.interiorAngles                 as "interiorAngles"
    ,j.lateralArea                    as "lateralArea"
    ,j.length                         as "length"
    ,j.radius                         as "radius"
    ,j.shading                        as "shading"
    ,j.side                           as "side"
    ,j.sideArea                       as "sideArea"
    ,j.sideLength                     as "sideLength"
    ,j.sides                          as "sides"
    ,j.slantHeight                    as "slantHeight"
    ,j.slope                          as "slope"
    ,j.sumInteriorAngles              as "sumInteriorAngles"
    ,j.surfaceArea                    as "surfaceArea"
    ,j.totalSideArea                  as "totalSideArea"
    ,j.totalSurfaceArea               as "totalSurfaceArea"
    ,j.volume                         as "volume"
    ,j.width                          as "width"
    ,j.y_intercept                    as "y_intercept"
    --,rs.jdoc
    --,json_serialize(rs.jdoc returning clob pretty) as jdoc_pretty
from
    base rs,
    json_table(rs.jdoc
        columns
        (
            item_id number path '$.item_id'
            ,a_degrees                     number path '$.a_degrees'
            ,a_side                        number path '$.a_side'
            ,area                          number path '$.area'
            ,b_degrees                     number path '$.b_degrees'
            ,b_side                        number path '$.b_side'
            ,base                          number path '$.base'
            ,baseArea                      number path '$.baseArea'
            ,baseCircumference             number path '$.baseCircumference'
            ,baseLength                    number path '$.baseLength'
            ,basePerimeter                 number path '$.basePerimeter'
            ,baseSides                     number path '$.baseSides'
            ,c_degrees                     number path '$.c_degrees'
            ,c_side                        number path '$.c_side'
            ,circumference                 number path '$.circumference'
            ,color                         varchar2(4000) path '$.color'
            ,composition                   varchar2(4000) path '$.composition'
            ,curvedArea                    number path '$.curvedArea'
            ,depth                         number path '$.depth'
            ,equation                      varchar2(4000) path '$.equation'
            ,height                        number path '$.height'
            ,interiorAngles                number path '$.interiorAngles'
            ,lateralArea                   number path '$.lateralArea'
            ,length                        number path '$.length'
            ,radius                        number path '$.radius'
            ,shading                       varchar2(4000) path '$.shading'
            ,side                          number path '$.side'
            ,sideArea                      number path '$.sideArea'
            ,sideLength                    number path '$.sideLength'
            ,sides                         number path '$.sides'
            ,slantHeight                   number path '$.slantHeight'
            ,slope                         number path '$.slope'
            ,sumInteriorAngles             number path '$.sumInteriorAngles'
            ,surfaceArea                   number path '$.surfaceArea'
            ,totalSideArea                 number path '$.totalSideArea'
            ,totalSurfaceArea              number path '$.totalSurfaceArea'
            ,volume                        number path '$.volume'
            ,width                         number path '$.width'
            ,y_intercept                   number path '$.y_intercept'
        )
    ) j
drop table oa_dpc_items_json_table_backup purge
create table oa_dpc_items_json_table_backup nologging compress basic as select * from oa_dpc_items_json_table
drop table oa_dpc_items_json_table purge
create table oa_dpc_items_json_table nologging compress basic as select * from oa_dpc_etl_json_table_v
alter table oa_dpc_items_json_table add constraint oa_dpc_items_json_table_pk primary key (item_id)


PL/SQL procedure successfully completed.




*/