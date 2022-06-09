prompt drop tables created by etl dynamic ctas processes

--dynamic tables with refreshable columns and backup tables
drop table oa_dpc_items_ptf_ct_arrayagg_backup purge;
drop table oa_dpc_items_ptf_ct_arrayagg purge;
drop table oa_dpc_items_ptf_rt_arrayagg_backup purge;
drop table oa_dpc_items_ptf_rt_arrayagg purge;
drop table oa_dpc_items_ptf_rt_objectagg_backup purge;
drop table oa_dpc_items_ptf_rt_objectagg purge;
drop table oa_dpc_items_ptf_ct_flat_backup purge;
drop table oa_dpc_items_ptf_ct_flat purge;
drop table oa_dpc_items_ptf_rt_flat_backup purge;
drop table oa_dpc_items_ptf_rt_flat purge;
drop table oa_dpc_items_pf_objects_backup purge;
drop table oa_dpc_items_pf_objects purge;
drop table oa_dpc_items_json_table_backup purge;
drop table oa_dpc_items_json_table purge;
drop table oa_dpc_items_ptf_rt_xml purge;
drop table oa_dpc_items_ptf_rt_xml_backup purge;
drop table oa_dpc_items_xml_table_backup purge;
drop table oa_dpc_items_xml_table purge;
drop table oa_dpc_items_pivot_backup purge;
drop table oa_dpc_items_pivot purge;

prompt dropped tables created by etl dynamic ctas processes
