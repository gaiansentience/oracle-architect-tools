/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.46.48.922475000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.46.48.922506000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.46.53.981599000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
 00.6737 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.46.54.706459000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 05.1446 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.47.03.074067000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 07.0713 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.47.13.218569000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
reset test data to full dataset: all 2d shapes and 3d solids
 13.1667 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.47.31.947099000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.47.31.947502000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.47.31.947515000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 01-JUN-22 05.47.36.348764000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.3206 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 01-JUN-22 05.47.36.673937000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 04.0592 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 01-JUN-22 05.47.43.891279000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 07.3377 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 01-JUN-22 05.47.54.268716000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 32767]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic
reset test data to full dataset: all 2d shapes and 3d solids
 20.1395 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_polymorphic has 41 columns.  Time is 01-JUN-22 05.48.22.103197000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    depth[NUMBER LENGTH: 22]
    curvedArea[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 32767]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    composition[VARCHAR2 LENGTH: 32767]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
    height[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
end column details for dynamic_columns_polymorphic
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.48.22.103709000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.48.22.103834000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using NESTED json for name|value pairs***
ROWSOURCE NESTED JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_objectagg has 3 columns.  Time is 01-JUN-22 05.48.26.822233000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_objectagg
 00.1327 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_objectagg has 6 columns.  Time is 01-JUN-22 05.48.27.006340000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_objectagg
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.9486 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_objectagg has 18 columns.  Time is 01-JUN-22 05.48.31.164642000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_objectagg
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 01.7630 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_objectagg has 24 columns.  Time is 01-JUN-22 05.48.36.392363000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 32767]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_objectagg
reset test data to full dataset: all 2d shapes and 3d solids
 03.9383 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_polymorphic_objectagg has 41 columns.  Time is 01-JUN-22 05.48.47.721842000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    depth[NUMBER LENGTH: 22]
    curvedArea[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 32767]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    composition[VARCHAR2 LENGTH: 32767]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
    height[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
end column details for dynamic_columns_polymorphic_objectagg
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.48.47.722331000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.48.47.722345000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 01-JUN-22 05.48.51.945696000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.2706 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 01-JUN-22 05.48.52.220905000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.0059 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 01-JUN-22 05.48.57.407793000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_row
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 03.6369 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 01-JUN-22 05.49.04.081019000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 32767]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_row
reset test data to full dataset: all 2d shapes and 3d solids
 07.0994 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_polymorphic_row has 41 columns.  Time is 01-JUN-22 05.49.18.710422000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 32767]
    depth[NUMBER LENGTH: 22]
    curvedArea[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 32767]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    composition[VARCHAR2 LENGTH: 32767]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
    height[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
end column details for dynamic_columns_polymorphic_row
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.49.18.710949000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.49.18.710963000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 01-JUN-22 05.49.23.172021000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 00.2348 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 01-JUN-22 05.49.23.411598000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.1949 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 01-JUN-22 05.49.28.676077000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    interiorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    sideLength[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 02.3177 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 01-JUN-22 05.49.33.960297000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    equation[VARCHAR2 LENGTH: 4000]
    interiorAngles[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data to full dataset: all 2d shapes and 3d solids
 04.3226 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_json_table has 41 columns.  Time is 01-JUN-22 05.49.43.623792000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    composition[VARCHAR2 LENGTH: 4000]
    curvedArea[NUMBER LENGTH: 22]
    depth[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    height[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    side[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.49.43.624417000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 01-JUN-22 05.49.43.624430000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.52.36.420000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.52.36.420000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.52.40.021000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
 00.6370 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.52.40.767000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 04.8680 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.52.48.564000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 06.7060 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.52.58.140000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
reset test data to full dataset: all 2d shapes and 3d solids
 12.3330 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 05.53.16.131000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 100]
    shading[VARCHAR2 LENGTH: 100]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    yIntercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_pipelined
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.53.16.136000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.53.16.136000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 01-JUN-22 05.53.19.629000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.3170 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 01-JUN-22 05.53.19.961000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 03.9140 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 01-JUN-22 05.53.26.730000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 06.9710 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 01-JUN-22 05.53.36.599000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data to full dataset: all 2d shapes and 3d solids
 19.2990 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_polymorphic has 41 columns.  Time is 01-JUN-22 05.54.01.245000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    depth[NUMBER LENGTH: 22]
    curvedArea[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    composition[VARCHAR2 LENGTH: 4000]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    height[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
end column details for dynamic_columns_polymorphic
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.54.01.250000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.54.01.250000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using NESTED json for name|value pairs***
ROWSOURCE NESTED JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_objectagg has 3 columns.  Time is 01-JUN-22 05.54.04.809000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_objectagg
 00.1470 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_objectagg has 6 columns.  Time is 01-JUN-22 05.54.05.006000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_objectagg
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.0180 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_objectagg has 18 columns.  Time is 01-JUN-22 05.54.08.906000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_objectagg
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 01.7510 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_objectagg has 24 columns.  Time is 01-JUN-22 05.54.13.556000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_objectagg
reset test data to full dataset: all 2d shapes and 3d solids
 04.2720 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_polymorphic_objectagg has 41 columns.  Time is 01-JUN-22 05.54.23.146000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    depth[NUMBER LENGTH: 22]
    curvedArea[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    composition[VARCHAR2 LENGTH: 4000]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    height[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
end column details for dynamic_columns_polymorphic_objectagg
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.54.23.146000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.54.23.146000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 01-JUN-22 05.54.26.630000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.2780 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 01-JUN-22 05.54.26.913000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.1150 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 01-JUN-22 05.54.31.917000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_row
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 03.3530 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 01-JUN-22 05.54.38.175000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    radius[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_row
reset test data to full dataset: all 2d shapes and 3d solids
 07.2230 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_polymorphic_row has 41 columns.  Time is 01-JUN-22 05.54.50.791000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    area[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    depth[NUMBER LENGTH: 22]
    curvedArea[NUMBER LENGTH: 22]
    a_degrees[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    circumference[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    side[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    composition[VARCHAR2 LENGTH: 4000]
    b_side[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    height[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
end column details for dynamic_columns_polymorphic_row
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.54.50.792000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.54.50.792000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 01-JUN-22 05.54.54.350000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 00.2450 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 01-JUN-22 05.54.54.601000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.5700 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 01-JUN-22 05.54.59.056000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    interiorAngles[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    sideLength[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 02.2430 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 01-JUN-22 05.55.04.192000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    equation[VARCHAR2 LENGTH: 4000]
    interiorAngles[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    side[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data to full dataset: all 2d shapes and 3d solids
 04.2890 seconds to pivot 161000 name|value pairs to 29000 rows.
dynamic_columns_json_table has 41 columns.  Time is 01-JUN-22 05.55.13.873000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    b_degrees[NUMBER LENGTH: 22]
    b_side[NUMBER LENGTH: 22]
    base[NUMBER LENGTH: 22]
    baseArea[NUMBER LENGTH: 22]
    baseCircumference[NUMBER LENGTH: 22]
    baseLength[NUMBER LENGTH: 22]
    basePerimeter[NUMBER LENGTH: 22]
    baseSides[NUMBER LENGTH: 22]
    c_degrees[NUMBER LENGTH: 22]
    c_side[NUMBER LENGTH: 22]
    circumference[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    composition[VARCHAR2 LENGTH: 4000]
    curvedArea[NUMBER LENGTH: 22]
    depth[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
    height[NUMBER LENGTH: 22]
    interiorAngles[NUMBER LENGTH: 22]
    lateralArea[NUMBER LENGTH: 22]
    length[NUMBER LENGTH: 22]
    radius[NUMBER LENGTH: 22]
    shading[VARCHAR2 LENGTH: 4000]
    side[NUMBER LENGTH: 22]
    sideArea[NUMBER LENGTH: 22]
    sideLength[NUMBER LENGTH: 22]
    sides[NUMBER LENGTH: 22]
    slantHeight[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    sumInteriorAngles[NUMBER LENGTH: 22]
    surfaceArea[NUMBER LENGTH: 22]
    totalSideArea[NUMBER LENGTH: 22]
    totalSurfaceArea[NUMBER LENGTH: 22]
    volume[NUMBER LENGTH: 22]
    width[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.55.13.874000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 05.55.13.874000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

