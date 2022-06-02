/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.52.12.708150000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.52.12.708176000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.5276 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 03.7719 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 05.3162 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 11.0458 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.52.52.207770000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT USING POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.52.52.207791000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.2505 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.9015 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 05.6406 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 17.9230 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT USING POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.53.37.290473000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.53.37.290493000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.1296 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.8930 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 01.6469 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 04.6285 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.54.04.719472000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.54.04.719493000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.2227 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.4613 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 02.5868 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 06.5759 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.54.35.760966000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.54.35.760987000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.1804 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.9418 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 01.4159 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 03.0666 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.55.00.744040000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.55.00.744058000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.56.31.815000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.56.31.815000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.4950 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 03.3730 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 04.7730 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 10.0050 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.57.05.977000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT USING POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.57.05.977000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.2490 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 02.7310 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 05.2050 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 16.9060 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT USING POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.57.46.994000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.57.46.994000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.1380 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.9400 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 01.6450 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 04.7920 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.58.10.549000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.58.10.549000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.2120 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 01.4200 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 02.4020 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 06.4000 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.58.37.039000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.58.37.039000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
reset test data with no pair values for triangle, regular polygon, circle, square or rectangle
 00.1730 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
reset test data: add pair values for triangle and regular polygon; delete pair values for circle, square and rectangle
 00.8760 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
reset test data to full dataset: add pair values for triangle and regular polygon; add pair values for circle, square and rectangle
 01.3460 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
reset test data to full dataset: all 2d shapes and 3d solids
 02.8600 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT  USING DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.58.58.253000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 02.58.58.253000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

