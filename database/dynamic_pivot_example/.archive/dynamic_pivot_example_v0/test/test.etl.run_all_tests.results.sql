/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.04.14.470674000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.04.14.470699000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.6957 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 05.3634 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 07.4403 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 15.8904 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.05.04.502405000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.05.04.502426000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.3169 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 04.1790 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 07.4197 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 25.1937 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.06.03.950712000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.06.03.950734000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1294 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.8783 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5544 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.3276 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.06.32.106226000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.06.32.106243000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2817 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.1256 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.7937 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.5593 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.07.06.076446000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.07.06.076467000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.2350 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.7702 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.5263 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 05.1767 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.07.35.215754000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.07.35.215774000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.07.52.459000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.07.52.459000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.6500 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 04.8440 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 06.7250 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 14.4410 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.08.35.167000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.08.35.167000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.3220 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.8840 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 07.0940 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 23.2340 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.09.25.893000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.09.25.893000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1380 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9310 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6310 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.7110 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.09.49.426000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.09.49.426000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2800 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.1940 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.3240 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.5550 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.10.19.950000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.10.19.950000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.2390 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.6370 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.2800 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 05.1100 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.10.45.430000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc initial (version 0)  TESTING TIME 04-JUN-22 01.10.45.430000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

