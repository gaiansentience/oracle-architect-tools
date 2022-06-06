/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.52.57.341653000 PM AMERICA/DENVER
     STARTING TEST SET
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.52.57.341686000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.4406 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 03.5578 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 07.0077 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 22.5839 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC COLUMNS PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.53.59.091267000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.53.59.091295000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using flat json for name|value pairs***
 00.4017 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 02.0028 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.3456 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.0733 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.54.41.362337000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.54.41.362367000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using nested json for name|value pairs***
 00.4178 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 01.9095 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.2611 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 08.3397 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.55.22.888121000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.55.22.888152000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***polymorphic pivot row name|value pairs to columns using xml for name|value pairs***
 01.0605 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 08.8872 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 15.2857 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 42.3403 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.56.58.181043000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.56.58.181071000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
rowsource not currently dynamic, contains only columns for 2d shapes
 00.7446 seconds to pivot 6000 name|value pairs to 2000 rows with 24 columns
 03.6555 seconds to pivot 63000 name|value pairs to 11000 rows with 24 columns
 05.3462 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 10.4192 seconds to pivot 190000 name|value pairs to 34000 rows with 24 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT PIPELINED OBJECT TYPES AND SUBTYPES ROWSOURCE NESTED TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.57.45.911794000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.57.45.911840000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from flat json to columns using json table***
 00.2369 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 00.6877 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 01.0878 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 01.9002 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW JSON TABLE VIEW ROWSOURCE FLAT JSON
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.58.17.936750000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.58.17.936778000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs from xml to columns using xml table***
 00.9270 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 05.2092 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 07.8922 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 17.5432 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW XML TABLE VIEW ROWSOURCE XML
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.59.17.911839000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 01.59.17.911876000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***dynamically creating source view to pivot row name|value pairs to columns using pivot clause***
 00.2728 seconds to pivot 6000 name|value pairs to 2000 rows with 6 columns
 25.8680 seconds to pivot 63000 name|value pairs to 11000 rows with 18 columns
 03.2376 seconds to pivot 83000 name|value pairs to 17000 rows with 24 columns
 06.8691 seconds to pivot 190000 name|value pairs to 34000 rows with 41 columns
----------------------------------------------------------------------------------------------------
     DYNAMIC TABLE COLUMNS PIVOT DYNAMIC VIEW PIVOT CLAUSE ROWSOURCE PAIR VALUES TABLE
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 02.00.22.906078000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
/*****
----------------------------------------------------------------------------------------------------
DYNAMIC TABLE COLUMNS FROM ROW PIVOT COMPARISON: RUN ALL TESTS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 06-JUN-22 02.00.22.906103000 PM AMERICA/DENVER
     FINISHED TEST SET
----------------------------------------------------------------------------------------------------
*****/


PL/SQL procedure successfully completed.

