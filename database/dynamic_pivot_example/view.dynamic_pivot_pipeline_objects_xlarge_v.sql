create or replace view dynamic_pivot_pipeline_objects_xlarge_v as
with object_treat_base as
(
select 
    value(t) as record_object
    ,value(t).item_id as item_id
    ,value(t).item_name as item_name
    ,value(t).item_type as item_type
    ,value(t).item_json as item_json
    ,case 
        when value(t) is of type (dynamic_geometry_square) then 'SQUARE'
        when value(t) is of type (dynamic_geometry_circle) then 'CIRCLE'
        when value(t) is of type (dynamic_geometry_polygon) then 'POLYGON'
        when value(t) is of type (dynamic_geometry_line) then 'LINE'
        when value(t) is of type (dynamic_geometry_triangle) then 'TRIANGLE'
        else 'GENERIC DYNAMIC_GEOMETRY'
    end as record_type
    ,treat(value(t) as dynamic_geometry_square) as square
    ,treat(value(t) as dynamic_geometry_circle) as circle
    ,treat(value(t) as dynamic_geometry_polygon) as polygon
    ,treat(value(t) as dynamic_geometry_line) as line
    ,treat(value(t) as dynamic_geometry_triangle) as triangle
from 
    dynamic_pipeline_objects.get_shapes(
        cursor(
            select o.* from dynamic_item_object_xlarge_v o
            )
        ) t
)
select
b.item_id
,b.item_name
,b.item_type
--,b.record_object
--,b.record_type
--,b.item_json
,case 
    when b.record_type = 'SQUARE' then b.square.area
    when b.record_type = 'CIRCLE' then b.circle.area
    when b.record_type = 'POLYGON' then b.polygon.area
    when b.record_type = 'TRIANGLE' then b.triangle.area
end as "area"
,case
    when b.record_type = 'CIRCLE' then b.circle.color
end as "color"
,case
    when b.record_type = 'POLYGON' then b.polygon.shading
end as "shading"
,b.square.side as "side"
--,b.square.area as square_area
,b.triangle.a_degrees as "a_degrees"
,b.triangle.b_degrees as "b_degrees"
,b.triangle.c_degrees as "c_degrees"
,b.triangle.a_side as "a_side"
,b.triangle.b_side as "b_side"
,b.triangle.c_side as "c_side"
--,b.triangle.area as triangle_area
,b.polygon.sides as "sides"
,b.polygon.side_length as "sideLength"
,b.polygon.interior_angles as "interiorAngles"
,b.polygon.sum_interior_angles as "sumInteriorAngles"
--,b.polygon.area as polygon_area
--,b.polygon.shading as polygon_shading
,b.circle.radius as "radius"
,b.circle.circumference as "circumference"
--,b.circle.area as circle_area
--,b.circle.color as circle_color
,b.line.y_intercept as "yIntercept"
,b.line.slope as "slope"
,b.line.equation as "equation"
from object_treat_base b