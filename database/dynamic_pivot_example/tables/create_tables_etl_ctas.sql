prompt create initial dynamic columns tables (will be recreated by etl dynamic ctas processes)

--dynamic tables with refreshable columns and backup tables
@@table.oa_dpc_items_ptf_ct_arrayagg.sql;
@@table.oa_dpc_items_ptf_rt_arrayagg.sql;
@@table.oa_dpc_items_ptf_rt_objectagg.sql;
@@table.oa_dpc_items_ptf_ct_flat.sql;
@@table.oa_dpc_items_ptf_rt_flat.sql;
@@table.oa_dpc_items_pf_objects.sql;
@@table.oa_dpc_items_json_table.sql;
@@table.oa_dpc_items_ptf_rt_xml.sql;
@@table.oa_dpc_items_xml_table.sql;
@@table.oa_dpc_items_pivot.sql;

prompt created initial dynamic columns tables (will be recreated by etl dynamic ctas processes)
