set serveroutput on;
declare
begin

    oa_dpc_poc_testing.test_pipelined;
    
end;



/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.38.56.956384000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0386 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6264 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  06.0916 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0281 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6496 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.6014 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.39.11.005666000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.40.45.625000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs to object hierarchy***
rowsource nested tables pipelined to object type hierarchy (avoids json completely)
000,017 records in  00.0330 seconds from oa_dpc_poc_pf_objects_v
001,700 records in  00.6210 seconds from oa_dpc_poc_pf_objects_vl
017,000 records in  05.9960 seconds from oa_dpc_poc_pf_objects_vxl
rowsource flat json pipelined to object type hierarchy
000,017 records in  00.0280 seconds from oa_dpc_poc_pf_json_v
001,700 records in  00.6590 seconds from oa_dpc_poc_pf_json_vl
017,000 records in  06.4180 seconds from oa_dpc_poc_pf_json_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH PIPELINED TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.40.59.392000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

