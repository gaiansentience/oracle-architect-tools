/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.25.15.077789000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.25.15.077811000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.25.18.868914000 PM
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
 00.6787 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.25.19.600798000 PM
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
 05.1741 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.25.28.042338000 PM
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
 07.0592 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.25.38.619224000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.25.38.619679000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.25.38.619693000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 31-MAY-22 10.25.43.315082000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.3291 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 31-MAY-22 10.25.43.648380000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 04.1247 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 31-MAY-22 10.25.51.035566000 PM
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
 07.2703 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 31-MAY-22 10.26.01.451305000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.01.451746000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.01.451760000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using NESTED json for name|value pairs***
ROWSOURCE NESTED JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_objectagg has 3 columns.  Time is 31-MAY-22 10.26.06.427682000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_objectagg
 00.1403 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_objectagg has 6 columns.  Time is 31-MAY-22 10.26.06.619162000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_objectagg
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.8044 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_objectagg has 18 columns.  Time is 31-MAY-22 10.26.11.584536000 PM
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
 01.7593 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_objectagg has 24 columns.  Time is 31-MAY-22 10.26.16.495134000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.16.495568000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.16.495583000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 31-MAY-22 10.26.20.038128000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.2769 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 31-MAY-22 10.26.20.319280000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 32767]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.0840 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 31-MAY-22 10.26.26.133480000 PM
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
 03.2647 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 31-MAY-22 10.26.32.488298000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.32.488719000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.32.488732000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 31-MAY-22 10.26.36.362990000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 00.2418 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 31-MAY-22 10.26.36.608602000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.7433 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 31-MAY-22 10.26.41.777374000 PM
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
 02.2010 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 31-MAY-22 10.26.47.424361000 PM
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
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.47.424797000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.26.47.424811000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.28.21.471000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.28.21.471000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE PIPELINED NESTED TABLES TO OBJECT TYPE HIERARCHY
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.28.24.765000000 PM
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
 00.6390 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.28.25.509000000 PM
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
 04.8410 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.28.33.306000000 PM
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
 06.7260 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_pipelined has 24 columns.  Time is 31-MAY-22 10.28.42.955000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.28.42.960000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND COLUMNS PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.28.42.960000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER WITH COLUMNS PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic has 3 columns.  Time is 31-MAY-22 10.28.46.257000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic
 00.3160 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic has 6 columns.  Time is 31-MAY-22 10.28.46.588000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 03.8540 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic has 18 columns.  Time is 31-MAY-22 10.28.53.364000000 PM
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
 06.9400 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic has 24 columns.  Time is 31-MAY-22 10.29.03.251000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.03.256000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.03.256000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using NESTED json for name|value pairs***
ROWSOURCE NESTED JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_objectagg has 3 columns.  Time is 31-MAY-22 10.29.06.643000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_objectagg
 00.1450 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_objectagg has 6 columns.  Time is 31-MAY-22 10.29.06.837000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_objectagg
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.0080 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_objectagg has 18 columns.  Time is 31-MAY-22 10.29.10.754000000 PM
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
 01.7500 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_objectagg has 24 columns.  Time is 31-MAY-22 10.29.15.431000000 PM
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
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.15.432000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS AND ROWSET PUT
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.15.432000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER COLUMN VALUES SET WITH ROWSET PUT
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_polymorphic_row has 3 columns.  Time is 31-MAY-22 10.29.18.738000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_polymorphic_row
 00.2780 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_polymorphic_row has 6 columns.  Time is 31-MAY-22 10.29.19.021000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    y_intercept[NUMBER LENGTH: 22]
    slope[NUMBER LENGTH: 22]
    equation[VARCHAR2 LENGTH: 4000]
end column details for dynamic_columns_polymorphic_row
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.1300 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_polymorphic_row has 18 columns.  Time is 31-MAY-22 10.29.24.067000000 PM
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
 03.2930 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_polymorphic_row has 24 columns.  Time is 31-MAY-22 10.29.30.308000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.30.308000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS FROM ROW PIVOT  USING DYNAMIC JSON TABLE VIEW
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.30.308000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
ROWSOURCE FLAT JSON AND JSON TABLE
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
dynamic_columns_json_table has 3 columns.  Time is 31-MAY-22 10.29.33.661000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
end column details for dynamic_columns_json_table
 00.2360 seconds to pivot 6000 name|value pairs to 2000 rows.
dynamic_columns_json_table has 6 columns.  Time is 31-MAY-22 10.29.33.901000000 PM
    ITEM_ID[NUMBER LENGTH: 22]
    ITEM_NAME[VARCHAR2 LENGTH: 100]
    ITEM_TYPE[VARCHAR2 LENGTH: 100]
    equation[VARCHAR2 LENGTH: 4000]
    slope[NUMBER LENGTH: 22]
    y_intercept[NUMBER LENGTH: 22]
end column details for dynamic_columns_json_table
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.5560 seconds to pivot 63000 name|value pairs to 11000 rows.
dynamic_columns_json_table has 18 columns.  Time is 31-MAY-22 10.29.38.360000000 PM
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
 02.2390 seconds to pivot 83000 name|value pairs to 17000 rows.
dynamic_columns_json_table has 24 columns.  Time is 31-MAY-22 10.29.43.510000000 PM
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
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.43.510000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.29.43.510000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

