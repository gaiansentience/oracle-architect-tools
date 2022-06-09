prompt create views used for etl dynamic ctas

--etl pipelined view
@@view.oa_dpc_etl_pf_objects_v.sql;
--etl polymorhic views use shared packages with poc polymorphic views
@@view.oa_dpc_etl_ptf_ct_arrayagg_v.sql;
@@view.oa_dpc_etl_ptf_rt_arrayagg_v.sql;
@@view.oa_dpc_etl_ptf_rt_objectagg_v.sql;
@@view.oa_dpc_etl_ptf_ct_flat_v.sql;
@@view.oa_dpc_etl_ptf_rt_flat_v.sql;
@@view.oa_dpc_etl_ptf_rt_xml_v.sql;
--etl using json_table only
@@view.oa_dpc_etl_json_table_v.sql;
--etl using xml_table only
@@view.oa_dpc_etl_xml_table_v.sql;
--etl using pivot clause
@@view.oa_dpc_etl_pivot_v.sql;
