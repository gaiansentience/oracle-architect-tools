/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.05.06.053546000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.05.06.053572000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1856 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0698 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.3358 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.2736 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.05.47.019175000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.05.47.019196000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1487 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.7521 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.4152 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.0282 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.06.12.326790000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.06.12.326811000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1723 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8476 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5657 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.3217 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.06.38.002827000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.06.38.002849000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 00.6284 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 05.4690 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 09.3034 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 27.5011 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.07.40.172996000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.07.40.173016000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.5604 seconds to pivot 6000 name|value pairs to 2000 rows with 57 columns
 02.9613 seconds to pivot 63000 name|value pairs to 11000 rows with 57 columns
 04.2547 seconds to pivot 83000 name|value pairs to 17000 rows with 57 columns
 08.6979 seconds to pivot 190000 name|value pairs to 34000 rows with 57 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.08.15.952107000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.08.15.952129000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0742 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.1999 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3345 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7600 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.08.35.400086000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.08.35.400108000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.4704 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.5466 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.8576 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.9955 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.09.09.916676000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.09.09.916698000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.11.27.159000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.11.27.160000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1550 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0530 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.0070 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.3490 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.12.03.960000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.12.03.960000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1260 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8440 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5010 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.4380 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.12.27.139000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.12.27.139000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1620 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9300 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6310 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.7320 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.12.50.758000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.12.50.758000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 00.7490 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 06.4010 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 10.7810 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 30.1580 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.13.55.153000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.13.55.153000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.5330 seconds to pivot 6000 name|value pairs to 2000 rows with 57 columns
 02.9890 seconds to pivot 63000 name|value pairs to 11000 rows with 57 columns
 04.5040 seconds to pivot 83000 name|value pairs to 17000 rows with 57 columns
 08.9510 seconds to pivot 190000 name|value pairs to 34000 rows with 57 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.14.29.419000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.14.29.419000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0700 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.2050 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3390 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7690 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.14.47.130000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.14.47.130000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.6320 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.5340 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.4230 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 11.6160 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.15.24.647000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 05.15.24.647000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

