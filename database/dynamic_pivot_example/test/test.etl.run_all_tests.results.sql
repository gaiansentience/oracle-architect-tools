/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.56.55.137913000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.56.55.137938000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.3589 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.1354 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.2206 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.5331 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.57.35.386921000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.57.35.386943000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2691 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.2817 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6058 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.0746 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.58.07.696762000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.58.07.696781000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1521 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.0028 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5475 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.3366 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.58.37.915361000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.58.37.915380000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 00.7823 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 05.5707 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 10.1990 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 27.9866 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.59.42.879140000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 05.59.42.879164000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.4343 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 02.4880 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 03.7598 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 07.6835 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.00.18.385512000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.00.18.385538000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0852 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.2232 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.4364 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7362 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.00.40.456290000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.00.40.456311000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.4738 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.6085 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.0880 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.9695 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.01.16.479833000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.01.16.479855000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs to columns using pivot clause***
 00.2266 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.6617 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.6345 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.3798 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.01.39.910740000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.01.39.910760000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.03.18.249000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.03.18.249000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1490 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.9810 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 04.0110 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.0210 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.03.53.811000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.03.53.811000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.1200 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8620 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5180 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.4780 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.04.16.657000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.04.16.657000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1350 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9090 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6050 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.6730 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.04.39.949000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.04.39.949000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 00.7340 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 06.3040 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 10.8230 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 30.0290 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.05.43.974000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.05.43.974000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.4220 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 02.5040 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 03.6480 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 07.3940 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.06.13.973000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.06.13.973000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.0620 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.2010 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 00.3280 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 00.7840 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.06.31.422000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.06.31.422000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.6160 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.4710 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.3690 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 11.4750 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.07.08.255000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.07.08.255000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs to columns using pivot clause***
 00.1180 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.3860 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.7470 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.5880 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.07.34.034000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE rc tuning (version 5)  TESTING TIME 06-JUN-22 06.07.34.034000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

