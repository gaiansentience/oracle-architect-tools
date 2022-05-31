set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_polymorphic;

end; 

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.37.09.787434000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0807 seconds from dynamic_pivot_polymorphic_v
001,700 records in  02.9372 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  30.3633 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0836 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  02.9589 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  29.8713 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9384 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.6286 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0270 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9422 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.4651 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0229 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5495 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.5287 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 10.38.43.213285000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.39.14.444000000 AM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0890 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.2050 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  32.0340 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1530 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  31.7310 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9330 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.3690 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9480 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.5310 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0250 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5670 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.6880 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.40.51.860000000 AM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


