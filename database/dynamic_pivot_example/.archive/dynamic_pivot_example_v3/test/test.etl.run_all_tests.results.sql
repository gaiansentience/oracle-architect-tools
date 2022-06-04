/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.53.28.676100000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.53.28.676126000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1470 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0920 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.2295 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.1228 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.54.07.497634000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.54.07.497651000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1075 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.1541 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.4356 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.1393 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.54.33.629458000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.54.33.629476000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1235 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8560 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5599 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.4959 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.55.00.172376000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.55.00.172393000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.5321 seconds to pivot 6000 name|value pairs to 2000 rows with 57 columns
 03.0177 seconds to pivot 63000 name|value pairs to 11000 rows with 57 columns
 04.5368 seconds to pivot 83000 name|value pairs to 17000 rows with 57 columns
 08.9852 seconds to pivot 190000 name|value pairs to 34000 rows with 57 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.55.37.204620000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.55.37.204642000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0608 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.2294 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3727 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.8856 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.55.57.513182000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.55.57.513202000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.57.08.186000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.57.08.186000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1470 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.9730 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.0490 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 13.8830 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.57.43.862000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.57.43.862000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1170 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8190 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.4840 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.4440 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.58.06.851000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.58.06.851000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1330 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9140 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6260 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.7200 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.58.30.398000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.58.30.398000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.5230 seconds to pivot 6000 name|value pairs to 2000 rows with 57 columns
 02.9670 seconds to pivot 63000 name|value pairs to 11000 rows with 57 columns
 04.4330 seconds to pivot 83000 name|value pairs to 17000 rows with 57 columns
 08.8230 seconds to pivot 190000 name|value pairs to 34000 rows with 57 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.59.03.383000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.59.03.384000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0620 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.1980 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3490 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7680 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.59.20.849000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 3)  TESTING TIME 04-JUN-22 01.59.20.849000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

