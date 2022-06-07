
--  CREATE OR REPLACE FORCE EDITIONABLE VIEW "DEV"."OA_DPC_ETL_PF_OBJECTS_V" ("ITEM_ID", "ITEM_NAME", "ITEM_TYPE", "area", "color", "shading", "side", "length", "width", "a_degrees", "b_degrees", "c_degrees", "a_side", "b_side", "c_side", "sides", "sideLength", "interiorAngles", "sumInteriorAngles", "radius", "circumference", "yIntercept", "slope", "equation") DEFAULT COLLATION "USING_NLS_COMP"  AS 
EXPLAIN PLAN FOR
  with pipelined_source as
(
    select /*+ parallel(t,4)*/
        value(t) as record_object
    from
        oa_dpc_etl_pf_objects.get_shapes(
            cursor(
                select /*+ parallel(o,4)*/ o.* from oa_dpc_etl_item_row_objects_v o
                )
        ) t
), object_treat_base as
(
select /*+ parallel(p,4)*/
    p.record_object
    ,p.record_object.item_id   as item_id
    ,p.record_object.item_name as item_name
    ,p.record_object.item_type as item_type
    ,p.record_object.item_json as item_json    
    ,case 
        when p.record_object is of type (oa_dpc_t_geometry_square)    then 'SQUARE'
        when p.record_object is of type (oa_dpc_t_geometry_rectangle) then 'RECTANGLE'
        when p.record_object is of type (oa_dpc_t_geometry_circle)    then 'CIRCLE'
        when p.record_object is of type (oa_dpc_t_geometry_polygon)   then 'POLYGON'
        when p.record_object is of type (oa_dpc_t_geometry_line)      then 'LINE'
        when p.record_object is of type (oa_dpc_t_geometry_triangle)  then 'TRIANGLE'
        else 'GENERIC DYNAMIC_GEOMETRY'
    end as record_type
    ,treat(p.record_object as oa_dpc_t_geometry_square)    as square
    ,treat(p.record_object as oa_dpc_t_geometry_rectangle) as rectangle
    ,treat(p.record_object as oa_dpc_t_geometry_circle)    as circle
    ,treat(p.record_object as oa_dpc_t_geometry_polygon)   as polygon
    ,treat(p.record_object as oa_dpc_t_geometry_line)      as line
    ,treat(p.record_object as oa_dpc_t_geometry_triangle)  as triangle
from 
    pipelined_source p
)
select /*+ parallel(b,4)*/
b.item_id
,b.item_name
,b.item_type
--hide the record object values so table does not show virtual columns for all attributes of the object hierarchy
--,b.record_object
--,b.record_type
--hide these when compiling the view (item_json is an attribute of the parent geometry type)
--,b.item_json
--end of hide columns
,case 
    when b.record_type = 'SQUARE' then b.square.area
    when b.record_type = 'RECTANGLE' then b.rectangle.area
    when b.record_type = 'CIRCLE' then b.circle.area
    when b.record_type = 'POLYGON' then b.polygon.area
    when b.record_type = 'TRIANGLE' then b.triangle.area
end as "area"
,case
    when b.record_type = 'RECTANGLE' then b.rectangle.color
    when b.record_type = 'CIRCLE' then b.circle.color
end as "color"
,case
    when b.record_type = 'POLYGON' then b.polygon.shading
end as "shading"
--,b.square
,b.square.side   as "side"
--,b.square.area as square_area
--,b.rectangle
,b.rectangle.length  as "length"
,b.rectangle.width   as "width"
--,b.rectangle.area  as rectangle_area
--,b.rectangle.color as rectangle_color
--,b.triangle
,b.triangle.a_degrees as "a_degrees"
,b.triangle.b_degrees as "b_degrees"
,b.triangle.c_degrees as "c_degrees"
,b.triangle.a_side    as "a_side"
,b.triangle.b_side    as "b_side"
,b.triangle.c_side    as "c_side"
--,b.triangle.area    as triangle_area
--,b.polygon
,b.polygon.sides               as "sides"
,b.polygon.side_length         as "sideLength"
,b.polygon.interior_angles     as "interiorAngles"
,b.polygon.sum_interior_angles as "sumInteriorAngles"
--,b.polygon.area              as polygon_area
--,b.polygon.shading           as polygon_shading
--,b.circle
,b.circle.radius        as "radius"
,b.circle.circumference as "circumference"
--,b.circle.area        as circle_area
--,b.circle.color       as circle_color
--,b.line
,b.line.y_intercept as "yIntercept"
,b.line.slope       as "slope"
,b.line.equation    as "equation"
from object_treat_base b;

SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);



/*

--pipelined function is parallel enabled
--input cursor is parallel
--each view select is parallel
--optimizer is ignoring parallel hints

Plan hash value: 2828649715
 
----------------------------------------------------------------------------------------------------------------
| Id  | Operation                         | Name               | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
----------------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT                  |                    |  8168 | 16336 |       |     8   (0)| 00:00:01 |
|   1 |  COLLECTION ITERATOR PICKLER FETCH| GET_SHAPES         |  8168 | 16336 |       |     8   (0)| 00:00:01 |
|   2 |   VIEW                            |                    | 34056 |  5021K|       |   569   (1)| 00:00:01 |
|   3 |    SORT GROUP BY                  |                    | 34056 |  1496K|    10M|   569   (1)| 00:00:01 |
|   4 |     TABLE ACCESS FULL             | OA_DPC_PAIR_VALUES |   190K|  8349K|       |   125   (0)| 00:00:01 |
----------------------------------------------------------------------------------------------------------------
 
Hint Report (identified by operation id / Query Block Name / Object Alias):
Total hints for statement: 2 (U - Unused (2))
---------------------------------------------------------------------------
 
   0 -  SEL$98633BB0 / P@SEL$6
         U -  parallel(p,4)
 
   1 -  SEL$F0098980 / B@SEL$7
         U -  parallel(b,4)

*/
