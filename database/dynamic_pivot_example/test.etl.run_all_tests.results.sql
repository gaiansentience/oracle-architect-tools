/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.07.46.158190000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.07.46.158220000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.07.51.673931000 PM
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
 00.7031 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.07.52.382190000 PM
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
 06.7867 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.08.02.250177000 PM
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
 07.1675 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.08.12.797063000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.08.12.797503000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.08.12.797537000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 31-MAY-22 05.08.17.385368000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.3491 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 31-MAY-22 05.08.17.739114000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 04.5045 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 31-MAY-22 05.08.25.669298000 PM
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
 07.3808 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 31-MAY-22 05.08.36.181182000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.08.36.181585000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.08.36.181598000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 31-MAY-22 05.08.41.899047000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.3190 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 31-MAY-22 05.08.42.222353000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.6608 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 31-MAY-22 05.08.48.051036000 PM
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
 03.4017 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 31-MAY-22 05.08.54.744970000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.08.54.745441000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.08.54.745456000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 31-MAY-22 05.08.58.590892000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 01.9482 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 31-MAY-22 05.09.00.543276000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.0233 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 31-MAY-22 05.09.06.116678000 PM
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
 02.3851 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 31-MAY-22 05.09.11.656459000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.09.11.656881000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 05.09.11.656893000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.10.27.254000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.10.27.254000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.10.30.824000000 PM
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
 00.6400 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.10.31.470000000 PM
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
 04.8190 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.10.39.216000000 PM
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
 06.8320 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 05.10.49.018000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.10.49.018000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.10.49.018000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 31-MAY-22 05.10.52.547000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.3210 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 31-MAY-22 05.10.52.874000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 03.9730 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 31-MAY-22 05.10.59.810000000 PM
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
 07.1470 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 31-MAY-22 05.11.09.946000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.11.09.946000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.11.09.946000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 31-MAY-22 05.11.13.523000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.2810 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 31-MAY-22 05.11.13.810000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.0870 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 31-MAY-22 05.11.18.894000000 PM
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
 03.2730 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 31-MAY-22 05.11.25.157000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.11.25.157000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.11.25.157000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 31-MAY-22 05.11.28.714000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 00.2400 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 31-MAY-22 05.11.28.958000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.5480 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 31-MAY-22 05.11.33.561000000 PM
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
 02.2240 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 31-MAY-22 05.11.38.733000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.11.38.733000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 05.11.38.733000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

