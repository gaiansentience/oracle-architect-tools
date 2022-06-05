/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.41.58.900905000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.41.58.900931000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1549 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0289 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.2108 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.4581 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.42.37.802702000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.42.37.802723000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1088 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.7917 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.4231 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.1649 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.43.03.898700000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.43.03.898722000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1281 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.3224 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5936 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.4768 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.43.30.944786000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.43.30.944810000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.5336 seconds to pivot 6000 name|value pairs to 2000 rows with 57 columns
 03.0771 seconds to pivot 63000 name|value pairs to 11000 rows with 57 columns
 04.6343 seconds to pivot 83000 name|value pairs to 17000 rows with 57 columns
 09.1570 seconds to pivot 190000 name|value pairs to 34000 rows with 57 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.44.08.026787000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.44.08.026808000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0622 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.2263 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3700 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.8701 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.44.28.101137000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.44.28.101155000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.45.09.453000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.45.09.453000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1450 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.9530 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.9860 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 13.8090 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.45.45.074000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.45.45.074000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1160 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8140 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.4880 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.4630 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.46.08.105000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.46.08.105000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1340 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9110 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6330 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.8070 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.46.31.747000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.46.31.747000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.5270 seconds to pivot 6000 name|value pairs to 2000 rows with 57 columns
 03.0070 seconds to pivot 63000 name|value pairs to 11000 rows with 57 columns
 04.4240 seconds to pivot 83000 name|value pairs to 17000 rows with 57 columns
 08.7810 seconds to pivot 190000 name|value pairs to 34000 rows with 57 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.47.04.774000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.47.04.774000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0600 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.2070 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3250 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7690 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.47.22.263000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.47.22.263000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

