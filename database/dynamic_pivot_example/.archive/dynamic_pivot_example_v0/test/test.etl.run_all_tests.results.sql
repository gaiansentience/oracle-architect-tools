/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.32.08.300787000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.32.08.300823000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.7146 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 05.5208 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 07.6204 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 16.4988 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.32.58.683772000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.32.58.683795000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.3464 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 04.1709 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 07.6536 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 24.8798 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.33.55.999347000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.33.55.999371000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1296 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8980 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5801 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.5443 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.34.23.185254000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.34.23.185274000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2983 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.1697 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.5166 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.7927 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.34.59.093898000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.34.59.093918000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.2427 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.8572 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.4369 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 05.4154 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.35.29.011520000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.35.29.011544000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.36.01.703000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.36.01.703000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.6350 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 04.8350 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 06.7730 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.5960 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.36.44.128000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.36.44.128000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.3190 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.9300 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 06.8740 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 22.6280 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.37.33.895000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.37.33.895000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1360 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9260 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6390 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.7380 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.37.57.449000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.37.57.449000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2770 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0930 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.2500 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.5350 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.38.27.580000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.38.27.581000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.2370 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.5580 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.2490 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 05.0700 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.38.52.679000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 02-JUN-22 04.38.52.679000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

