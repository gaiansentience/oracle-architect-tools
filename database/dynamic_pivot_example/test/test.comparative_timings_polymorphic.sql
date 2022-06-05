set serveroutput on;
declare
begin

    oa_dpc_poc_testing.test_polymorphic;

end; 


/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.33.45.695711000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0390 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.3805 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  24.3447 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0192 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6483 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.4486 seconds from oa_dpc_ptf_c_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0468 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.6097 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  25.9574 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0180 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6440 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.4361 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0318 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  01.8733 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  18.9103 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0180 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3759 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.6886 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0169 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.3878 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  03.8576 seconds from oa_dpc_ptf_rt_objectagg_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.35.24.492638000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.35.49.157000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0400 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.6270 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  26.2610 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0200 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6410 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.3930 seconds from oa_dpc_ptf_c_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0480 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.7770 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  27.7640 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0210 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6500 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.4720 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0360 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  02.0780 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  20.7690 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0180 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3990 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.9470 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0190 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.4130 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  04.1050 seconds from oa_dpc_ptf_rt_objectagg_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 04-JUN-22 02.37.34.697000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

