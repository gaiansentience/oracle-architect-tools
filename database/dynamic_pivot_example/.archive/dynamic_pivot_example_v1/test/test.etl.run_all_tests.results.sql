/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.10.30.614821000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.10.30.614848000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.5468 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.8077 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 05.3257 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 11.0935 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.11.11.305285000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.11.11.305306000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.3060 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.9177 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.5949 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 17.9696 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.11.57.854214000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.11.57.854244000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1762 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8790 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6356 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.5740 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.12.25.054542000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.12.25.054565000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2773 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.5061 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.4513 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.5417 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.12.56.054752000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.12.56.054774000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.1889 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9399 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.3618 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 03.0838 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.13.23.689392000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 19  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.13.23.689413000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.14.31.868000000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.14.31.868000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains all columns
 00.5000 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.3670 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 04.7550 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 10.0160 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.15.06.918000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.15.06.918000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using polymorphic function to pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2520 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.7070 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 05.1770 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 16.9800 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.15.48.504000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.15.48.504000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.1440 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.9240 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.6590 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 04.8120 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.16.12.542000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.16.12.542000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.2200 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.4730 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 02.4200 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.5620 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.16.39.706000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.16.39.707000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.1760 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.8690 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.3170 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 02.8870 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.17.01.297000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc refactored (version 1)  TESTING TIME 02-JUN-22 05.17.01.297000000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

