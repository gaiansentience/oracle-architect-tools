set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_polymorphic;

end; 

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 09.56.04.771079000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0888 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.1783 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  32.2236 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0834 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1933 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  32.4841 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0305 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  01.0354 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  10.1768 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0288 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  01.0144 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  10.1699 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE NESTED (VIA JSON_OBJECTAGG) JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (2 json_object parses per row)
000,017 records in  00.0195 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4264 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.2264 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0266 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.6063 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.9693 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  TESTING TIME 31-MAY-22 09.57.49.753378000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 09.59.08.452000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json using array json for name|value pairs
convert hierarchical row json name|value pairs to columns polymorphic (USES json_array_t)
ROWSOURCE HIERARCHICAL JSON COLUMNS TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0860 seconds from dynamic_pivot_polymorphic_v
001,700 records in  03.1540 seconds from dynamic_pivot_polymorphic_large_v
017,000 records in  31.7520 seconds from dynamic_pivot_polymorphic_xlarge_v
ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0860 seconds from dynamic_pivot_polymorphic_typed_v
001,700 records in  03.1750 seconds from dynamic_pivot_polymorphic_typed_large_v
017,000 records in  32.7660 seconds from dynamic_pivot_polymorphic_typed_xlarge_v
using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
convert flat row json name|value pairs to columns polymorphic (AVOIDS json_array_t)
ROWSOURCE FLAT JSON TYPED AS VARCHAR ONLY
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_flat_v
001,700 records in  00.9420 seconds from dynamic_pivot_polymorphic_large_flat_v
017,000 records in  09.3890 seconds from dynamic_pivot_polymorphic_xlarge_flat_v
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL ROWS FOR A COLUMN THEN UPDATES COLUMN VALUES AND MOVES TO THE NEXT COLUMN
000,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_typed_flat_v
001,700 records in  00.9290 seconds from dynamic_pivot_polymorphic_typed_large_flat_v
017,000 records in  09.3080 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v
ROWSOURCE NESTED (VIA JSON_OBJECTAGG) JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (2 json_object parses per row)
000,017 records in  00.0190 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v
001,700 records in  00.4490 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_large
017,000 records in  04.2920 seconds from dynamic_pivot_polymorphic_typed_objectagg_rows_v_xlarge
ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
SETS ALL COLUMNS FOR EACH ROW THEN UPDATES ROWSET (only 1 json_object parse per row)
000,017 records in  00.0260 seconds from dynamic_pivot_polymorphic_typed_flat_rows_v
001,700 records in  00.5700 seconds from dynamic_pivot_polymorphic_typed_large_flat_rows_v
017,000 records in  05.6950 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_rows_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  TESTING TIME 31-MAY-22 10.00.51.148000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

