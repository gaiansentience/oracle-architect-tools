/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.24.07.743192000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.24.07.743219000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.5390 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.7812 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 05.2984 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 11.2042 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.24.46.952128000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.24.46.952147000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2535 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.8519 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.4584 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 17.6207 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.25.32.353361000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.25.32.353379000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1272 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9025 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6228 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.5703 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.25.58.541608000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.25.58.541627000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2129 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.4736 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.4694 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.4550 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.26.28.715673000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.26.28.715691000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.1756 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9123 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.3661 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 03.0346 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.26.53.160226000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.26.53.160246000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.27.06.187000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.27.06.187000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.5010 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.4570 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 04.8260 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 10.0590 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.27.40.735000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.27.40.735000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2500 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.7620 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.2530 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 17.2400 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.28.22.385000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.28.22.385000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1400 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9300 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6380 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.7720 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.28.45.983000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.28.45.983000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2340 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.4430 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.3830 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.4400 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.29.12.590000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.29.12.590000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.1720 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8900 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.3500 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 02.8660 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.29.33.963000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 04-JUN-22 01.29.33.963000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

