set serveroutput on;
begin

  oa_dpc_etl.rebuild_table_items_xml_table(p_execute => false);

end;



/*


create or replace view oa_dpc_etl_xml_table_v as
with base as
(
    select
        x.item_id,
        x.item_name,
        x.item_type,
        x.xml_doc
    from
        oa_dpc_etl_item_row_xml_v x
)
select
    b.item_id
    ,b.item_name
    ,b.item_type
    ,x.a_degrees                      as "a_degrees"
    ,x.a_side                         as "a_side"
    ,x.area                           as "area"
    ,x.b_degrees                      as "b_degrees"
    ,x.b_side                         as "b_side"
    ,x.base                           as "base"
    ,x.baseArea                       as "baseArea"
    ,x.baseCircumference              as "baseCircumference"
    ,x.baseLength                     as "baseLength"
    ,x.basePerimeter                  as "basePerimeter"
    ,x.baseSides                      as "baseSides"
    ,x.c_degrees                      as "c_degrees"
    ,x.c_side                         as "c_side"
    ,x.circumference                  as "circumference"
    ,x.color                          as "color"
    ,x.composition                    as "composition"
    ,x.curvedArea                     as "curvedArea"
    ,x.depth                          as "depth"
    ,x.equation                       as "equation"
    ,x.height                         as "height"
    ,x.interiorAngles                 as "interiorAngles"
    ,x.lateralArea                    as "lateralArea"
    ,x.length                         as "length"
    ,x.radius                         as "radius"
    ,x.shading                        as "shading"
    ,x.side                           as "side"
    ,x.sideArea                       as "sideArea"
    ,x.sideLength                     as "sideLength"
    ,x.sides                          as "sides"
    ,x.slantHeight                    as "slantHeight"
    ,x.slope                          as "slope"
    ,x.sumInteriorAngles              as "sumInteriorAngles"
    ,x.surfaceArea                    as "surfaceArea"
    ,x.totalSideArea                  as "totalSideArea"
    ,x.totalSurfaceArea               as "totalSurfaceArea"
    ,x.volume                         as "volume"
    ,x.width                          as "width"
    ,x.y_intercept                    as "y_intercept"
    --,b.xml_doc
    --,xmlserialize(content xmltype(b.xml_doc) as clob indent) as xml_doc_pretty
from 
    base b,
    xmltable('/itemValues' passing xmltype(b.xml_doc)
        columns
            item_id   number         path 'item_id'
            ,a_degrees                     number path 'a_degrees'
            ,a_side                        number path 'a_side'
            ,area                          number path 'area'
            ,b_degrees                     number path 'b_degrees'
            ,b_side                        number path 'b_side'
            ,base                          number path 'base'
            ,baseArea                      number path 'baseArea'
            ,baseCircumference             number path 'baseCircumference'
            ,baseLength                    number path 'baseLength'
            ,basePerimeter                 number path 'basePerimeter'
            ,baseSides                     number path 'baseSides'
            ,c_degrees                     number path 'c_degrees'
            ,c_side                        number path 'c_side'
            ,circumference                 number path 'circumference'
            ,color                         varchar2(4000) path 'color'
            ,composition                   varchar2(4000) path 'composition'
            ,curvedArea                    number path 'curvedArea'
            ,depth                         number path 'depth'
            ,equation                      varchar2(4000) path 'equation'
            ,height                        number path 'height'
            ,interiorAngles                number path 'interiorAngles'
            ,lateralArea                   number path 'lateralArea'
            ,length                        number path 'length'
            ,radius                        number path 'radius'
            ,shading                       varchar2(4000) path 'shading'
            ,side                          number path 'side'
            ,sideArea                      number path 'sideArea'
            ,sideLength                    number path 'sideLength'
            ,sides                         number path 'sides'
            ,slantHeight                   number path 'slantHeight'
            ,slope                         number path 'slope'
            ,sumInteriorAngles             number path 'sumInteriorAngles'
            ,surfaceArea                   number path 'surfaceArea'
            ,totalSideArea                 number path 'totalSideArea'
            ,totalSurfaceArea              number path 'totalSurfaceArea'
            ,volume                        number path 'volume'
            ,width                         number path 'width'
            ,y_intercept                   number path 'y_intercept'
    ) x
drop table oa_dpc_items_xml_table_backup purge
create table oa_dpc_items_xml_table_backup nologging compress basic as select * from oa_dpc_items_xml_table
drop table oa_dpc_items_xml_table purge
create table oa_dpc_items_xml_table nologging compress basic as select * from oa_dpc_etl_xml_table_v
alter table oa_dpc_items_xml_table add constraint oa_dpc_items_xml_table_pk primary key (item_id)


PL/SQL procedure successfully completed.



*/