/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.37.16.779392000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.37.16.779416000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.5184 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.8057 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 05.3374 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 11.0948 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.37.55.120275000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.37.55.120302000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2502 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.4101 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.2964 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 17.4764 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.38.41.339818000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.38.41.339836000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1317 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.2945 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.5703 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.5419 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.39.07.931209000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.39.07.931228000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2190 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.9282 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.4263 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.3860 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.39.38.084339000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.39.38.084360000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.1690 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9256 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.3972 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 03.0336 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.40.03.046607000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.40.03.046628000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.40.19.134000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.40.19.134000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.5000 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.3780 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 04.8310 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 10.1150 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.40.53.808000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.40.53.808000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2510 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.7710 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.2440 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 17.1430 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.41.35.451000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.41.35.451000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1370 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9370 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6530 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.7950 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.41.59.245000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.41.59.245000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2120 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.4320 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.4010 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.4930 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.42.25.993000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.42.25.993000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.1750 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8930 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.3460 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 02.9150 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.42.47.494000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 2)  TESTING TIME 04-JUN-22 01.42.47.494000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

