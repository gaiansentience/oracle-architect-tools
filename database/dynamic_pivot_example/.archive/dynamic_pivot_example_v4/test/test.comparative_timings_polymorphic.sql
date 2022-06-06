set serveroutput on;
declare
begin

    oa_dpc_poc_testing.test_polymorphic;

end; 


/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.19.13.367866000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0256 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.3729 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  23.8387 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0276 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.5222 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  25.9625 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0217 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  01.8695 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  18.7787 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0065 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.3636 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  03.7292 seconds from oa_dpc_ptf_rt_objectagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0090 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6476 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.5521 seconds from oa_dpc_ptf_c_flat_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0081 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6461 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.6301 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0065 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3570 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.7037 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource xml (with xmlelelement and xmlagg) polymorphic put rowset to varchar|number
000,017 records in  00.0150 seconds from oa_dpc_ptf_rt_xml_v
001,700 records in  01.1743 seconds from oa_dpc_ptf_rt_xml_vl
017,000 records in  12.1853 seconds from oa_dpc_ptf_rt_xml_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 19  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.21.04.874106000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.37.20.430000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
using polymorphic function to pivot row name|value pairs from json rowsource
rowsource hierarchical json (uses json array_t) polymorphic put columns to varchar only
000,017 records in  00.0440 seconds from oa_dpc_ptf_c_arrayagg_v
001,700 records in  02.6570 seconds from oa_dpc_ptf_c_arrayagg_vl
017,000 records in  25.9220 seconds from oa_dpc_ptf_c_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put columns to varchar|number
000,017 records in  00.0490 seconds from oa_dpc_ptf_ct_arrayagg_v
001,700 records in  02.7510 seconds from oa_dpc_ptf_ct_arrayagg_vl
017,000 records in  27.4550 seconds from oa_dpc_ptf_ct_arrayagg_vxl
rowsource hierarchical json (uses json_array_t) polymorphic put rowset to varchar|number (traversing array elements per column for each row)
000,017 records in  00.0360 seconds from oa_dpc_ptf_rt_arrayagg_v
001,700 records in  02.0250 seconds from oa_dpc_ptf_rt_arrayagg_vl
017,000 records in  20.3210 seconds from oa_dpc_ptf_rt_arrayagg_vxl
rowsource nested json (with json_objectagg) polymorphic put rowset to varchar|number (2 json_object parses per row)
000,017 records in  00.0200 seconds from oa_dpc_ptf_rt_objectagg_v
001,700 records in  00.4210 seconds from oa_dpc_ptf_rt_objectagg_vl
017,000 records in  04.0880 seconds from oa_dpc_ptf_rt_objectagg_vxl
rowsource flat json polymorphic put columns to varchar only
000,017 records in  00.0190 seconds from oa_dpc_ptf_c_flat_v
001,700 records in  00.6450 seconds from oa_dpc_ptf_c_flat_vl
017,000 records in  06.3540 seconds from oa_dpc_ptf_c_flat_vxl
rowsource flat json polymorphic put columns to varchar|number
000,017 records in  00.0200 seconds from oa_dpc_ptf_ct_flat_v
001,700 records in  00.6370 seconds from oa_dpc_ptf_ct_flat_vl
017,000 records in  06.4480 seconds from oa_dpc_ptf_ct_flat_vxl
rowsource flat json polymorphic put rowset to varchar|number (1 json_object parse per row
000,017 records in  00.0170 seconds from oa_dpc_ptf_rt_flat_v
001,700 records in  00.3870 seconds from oa_dpc_ptf_rt_flat_vl
017,000 records in  03.8680 seconds from oa_dpc_ptf_rt_flat_vxl
rowsource xml (with xmlelelement and xmlagg) polymorphic put rowset to varchar|number
000,017 records in  00.0320 seconds from oa_dpc_ptf_rt_xml_v
001,700 records in  01.3080 seconds from oa_dpc_ptf_rt_xml_vl
017,000 records in  13.2110 seconds from oa_dpc_ptf_rt_xml_vxl
----------------------------------------------------------------------------------------------------
     ROW PIVOT WITH POLYMORPHIC TABLE FUNCTIONS
     ORACLE VERSION 21  CODEBASE poc tuning (version 4)  TESTING TIME 05-JUN-22 02.39.19.221000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/


