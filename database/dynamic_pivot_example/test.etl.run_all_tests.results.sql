/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.47.42.924046000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.47.42.924070000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 03.47.48.565760000 PM
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
 05.1842 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 03.47.56.894961000 PM
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
 07.1573 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 03.48.07.106202000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.07.153096000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.07.153116000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 6 columns.  Time is 31-MAY-22 03.48.10.566091000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 04.5520 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 31-MAY-22 03.48.18.175062000 PM
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
 07.3371 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 31-MAY-22 03.48.28.619360000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.28.619770000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.28.619795000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 31-MAY-22 03.48.32.186725000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.0398 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 31-MAY-22 03.48.37.320401000 PM
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
 03.2836 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 31-MAY-22 03.48.43.750675000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.43.751111000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.43.751125000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 8 columns.  Time is 31-MAY-22 03.48.47.485024000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.5311 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 31-MAY-22 03.48.52.057417000 PM
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
 02.2347 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 31-MAY-22 03.48.57.327676000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.57.328101000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 03.48.57.328113000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.58.31.338000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.58.31.338000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 03.58.34.675000000 PM
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
 04.8290 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 03.58.42.381000000 PM
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
 06.7040 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 03.58.51.979000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.58.51.980000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.58.51.980000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 6 columns.  Time is 31-MAY-22 03.58.55.435000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 03.9470 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 31-MAY-22 03.59.02.299000000 PM
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
 07.0780 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 31-MAY-22 03.59.12.320000000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.59.12.320000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.59.12.320000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 31-MAY-22 03.59.15.856000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.0760 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 31-MAY-22 03.59.20.883000000 PM
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
 03.2780 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 31-MAY-22 03.59.27.124000000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.59.27.125000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.59.27.125000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 8 columns.  Time is 31-MAY-22 03.59.30.707000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    a_degrees[NUMBER LENGTH: 22]
    a_side[NUMBER LENGTH: 22]
    area[NUMBER LENGTH: 22]
    color[VARCHAR2 LENGTH: 4000]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.5350 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 31-MAY-22 03.59.35.195000000 PM
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
 02.2560 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 31-MAY-22 03.59.40.409000000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.59.40.409000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 03.59.40.409000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

