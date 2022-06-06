/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.47.51.410117000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.47.51.410144000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1855 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0031 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.1038 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.4723 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.48.31.398759000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.48.31.398782000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1485 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.7586 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.7259 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.1082 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.48.57.758764000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.48.57.758784000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.2011 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8404 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5059 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.2790 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.49.23.915873000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.49.23.915893000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 00.6629 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 05.5229 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 10.2860 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 27.8956 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.50.26.390603000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.50.26.390625000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.8390 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 02.5560 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 03.6216 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 07.4476 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.51.00.389786000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.51.00.389807000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0771 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.1991 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.6614 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7269 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.51.21.848903000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.51.21.848929000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.4520 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.8222 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.9540 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.8996 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.51.56.567556000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.51.56.567579000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs to columns using pivot clause***
 00.0652 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.1590 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.2919 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.4187 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.52.16.736946000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.52.16.736965000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.55.10.082000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.55.10.082000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1650 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0010 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.0070 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 13.9570 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.55.46.444000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.55.46.444000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1220 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8280 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.4870 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.3870 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.56.09.531000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.56.09.531000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1410 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9160 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6060 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.6190 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.56.32.801000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.56.32.801000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 00.7440 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 06.3260 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 10.7280 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 29.8490 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.57.36.587000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.57.36.587000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.4360 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 02.5820 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 03.6960 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 07.5140 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.58.07.889000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.58.07.889000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0670 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.1980 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3320 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7600 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.58.25.408000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.58.25.408000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.6170 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.4890 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.3580 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 11.4680 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.59.02.474000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.59.02.474000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs to columns using pivot clause***
 00.1190 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.2310 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6460 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.6300 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.59.28.262000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 12.59.28.262000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

