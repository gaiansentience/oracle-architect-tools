set serveroutput on;
begin
    --rebuild the view dynamically generating the json_table columns clause
    oa_dpc_etl.rebuild_etl_view_pivot(p_execute => false);

end;


/*



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
    ,p.a_degrees                      as "a_degrees"
    ,p.a_side                         as "a_side"
    ,p.area                           as "area"
    ,p.b_degrees                      as "b_degrees"
    ,p.b_side                         as "b_side"
    ,p.base                           as "base"
    ,p.baseArea                       as "baseArea"
    ,p.baseCircumference              as "baseCircumference"
    ,p.baseLength                     as "baseLength"
    ,p.basePerimeter                  as "basePerimeter"
    ,p.baseSides                      as "baseSides"
    ,p.c_degrees                      as "c_degrees"
    ,p.c_side                         as "c_side"
    ,p.circumference                  as "circumference"
    ,p.color                          as "color"
    ,p.composition                    as "composition"
    ,p.curvedArea                     as "curvedArea"
    ,p.depth                          as "depth"
    ,p.equation                       as "equation"
    ,p.height                         as "height"
    ,p.interiorAngles                 as "interiorAngles"
    ,p.lateralArea                    as "lateralArea"
    ,p.length                         as "length"
    ,p.radius                         as "radius"
    ,p.shading                        as "shading"
    ,p.side                           as "side"
    ,p.sideArea                       as "sideArea"
    ,p.sideLength                     as "sideLength"
    ,p.sides                          as "sides"
    ,p.slantHeight                    as "slantHeight"
    ,p.slope                          as "slope"
    ,p.sumInteriorAngles              as "sumInteriorAngles"
    ,p.surfaceArea                    as "surfaceArea"
    ,p.totalSideArea                  as "totalSideArea"
    ,p.totalSurfaceArea               as "totalSurfaceArea"
    ,p.volume                         as "volume"
    ,p.width                          as "width"
    ,p.y_intercept                    as "y_intercept"
    
from
    base b
    pivot
    (
        max(value_data) for
        value_name in
        (
            'dummy_item_id' as dummy_item_id
            ,'a_degrees'                    as a_degrees
            ,'a_side'                       as a_side
            ,'area'                         as area
            ,'b_degrees'                    as b_degrees
            ,'b_side'                       as b_side
            ,'base'                         as base
            ,'baseArea'                     as baseArea
            ,'baseCircumference'            as baseCircumference
            ,'baseLength'                   as baseLength
            ,'basePerimeter'                as basePerimeter
            ,'baseSides'                    as baseSides
            ,'c_degrees'                    as c_degrees
            ,'c_side'                       as c_side
            ,'circumference'                as circumference
            ,'color'                        as color
            ,'composition'                  as composition
            ,'curvedArea'                   as curvedArea
            ,'depth'                        as depth
            ,'equation'                     as equation
            ,'height'                       as height
            ,'interiorAngles'               as interiorAngles
            ,'lateralArea'                  as lateralArea
            ,'length'                       as length
            ,'radius'                       as radius
            ,'shading'                      as shading
            ,'side'                         as side
            ,'sideArea'                     as sideArea
            ,'sideLength'                   as sideLength
            ,'sides'                        as sides
            ,'slantHeight'                  as slantHeight
            ,'slope'                        as slope
            ,'sumInteriorAngles'            as sumInteriorAngles
            ,'surfaceArea'                  as surfaceArea
            ,'totalSideArea'                as totalSideArea
            ,'totalSurfaceArea'             as totalSurfaceArea
            ,'volume'                       as volume
            ,'width'                        as width
            ,'y_intercept'                  as y_intercept
        )
    ) p


PL/SQL procedure successfully completed.




*/