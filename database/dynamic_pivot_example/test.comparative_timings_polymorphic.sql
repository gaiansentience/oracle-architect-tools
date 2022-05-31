set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_polymorphic;

end; 

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.27.37.114027000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
000,017 records in  00.0853 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.0371 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  31.4801 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.0876 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.0779 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  30.1239 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
000,017 records in  00.0289 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9293 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.9043 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.0264 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9685 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.8489 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.29.06.712613000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.29.17.151000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
000,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.1570 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  36.4620 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1630 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  31.6410 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
000,017 records in  00.0300 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9280 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.3550 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
000,017 records in  00.0300 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9350 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.4040 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.30.52.426000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

