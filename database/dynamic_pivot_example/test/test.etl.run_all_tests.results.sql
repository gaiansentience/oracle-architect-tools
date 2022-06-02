/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.14.43.598000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.14.43.598000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 10.14.46.924000000 PM
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
 00.5050 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 10.14.47.433000000 PM
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
 03.4190 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 10.14.53.888000000 PM
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
 04.8160 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 10.15.01.656000000 PM
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
 10.1740 seconds to pivot 190000 name|value pairs to 34000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 01-JUN-22 10.15.18.333000000 PM
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
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.15.18.333000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.15.18.333000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 01-JUN-22 10.15.21.998000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.2440 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 01-JUN-22 10.15.22.246000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.7760 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 01-JUN-22 10.15.27.988000000 PM
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
 05.3010 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 01-JUN-22 10.15.36.250000000 PM
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
 17.5950 seconds to pivot 190000 name|value pairs to 34000 rows.
dynamic_columns_polymorphic has 41 columns.  Time is 01-JUN-22 10.16.00.277000000 PM
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
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.16.00.278000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.16.00.278000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using NESTED json for name|value pairs***
ROWSOURCE NESTED JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_objectagg has 3 columns.  Time is 01-JUN-22 10.16.03.947000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_objectagg
 00.1410 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_objectagg has 6 columns.  Time is 01-JUN-22 10.16.04.093000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_objectagg
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.9490 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_objectagg has 18 columns.  Time is 01-JUN-22 10.16.08.029000000 PM
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
 01.6720 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_objectagg has 24 columns.  Time is 01-JUN-22 10.16.12.656000000 PM
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
 04.8590 seconds to pivot 190000 name|value pairs to 34000 rows.
dynamic_columns_polymorphic_objectagg has 41 columns.  Time is 01-JUN-22 10.16.23.974000000 PM
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
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.16.23.974000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.16.23.974000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 01-JUN-22 10.16.27.642000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.2150 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 01-JUN-22 10.16.27.862000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.4660 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 01-JUN-22 10.16.32.353000000 PM
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
 02.4360 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 01-JUN-22 10.16.37.749000000 PM
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
 06.6540 seconds to pivot 190000 name|value pairs to 34000 rows.
dynamic_columns_polymorphic_row has 41 columns.  Time is 01-JUN-22 10.16.50.838000000 PM
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
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.16.50.839000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.16.50.839000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 01-JUN-22 10.16.54.524000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 00.1720 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 01-JUN-22 10.16.54.701000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.8890 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 01-JUN-22 10.16.58.531000000 PM
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
 01.3370 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 01-JUN-22 10.17.02.862000000 PM
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
 02.8930 seconds to pivot 190000 name|value pairs to 34000 rows.
dynamic_columns_json_table has 41 columns.  Time is 01-JUN-22 10.17.12.202000000 PM
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
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.17.12.202000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.17.12.202000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

