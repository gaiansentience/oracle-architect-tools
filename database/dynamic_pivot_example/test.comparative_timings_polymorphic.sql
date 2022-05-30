set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_polymorphic;

end; 


/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.03.09.912713000 PM AMERICA/DENVER
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROWSOURCE HIERARCHICAL JSON VARCHAR ONLY
00,017 records in  00.0862 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  03.0196 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  30.5842 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0818 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.0354 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  30.5022 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROWSOURCE FLAT JSON VARCHAR ONLY
00,017 records in  00.0261 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9630 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.6859 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0277 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9634 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.7003 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.04.38.588818000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS*****     *****/


/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 05.04.56.627000000 PM AMERICA/DENVER
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROWSOURCE HIERARCHICAL JSON VARCHAR ONLY
00,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  03.1400 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  31.5870 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.1440 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  31.4810 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROWSOURCE FLAT JSON VARCHAR ONLY
00,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9300 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.3210 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9270 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.3770 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 05.06.26.761000000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS*****     *****/
