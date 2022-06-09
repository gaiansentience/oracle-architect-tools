prompt drop views used for etl dynamic ctas

--views to create dynamic tables (based on dynamic_pivot_pair_values table)
--dynamically rewriting the etl source view based on current pair_value value_names
drop view oa_dpc_etl_json_table_v;
drop view oa_dpc_etl_xml_table_v;
drop view oa_dpc_etl_pivot_v;
--pipelined etl view
drop view oa_dpc_etl_pf_objects_v;
--polymorphic etl views
drop view oa_dpc_etl_ptf_rt_objectagg_v;
drop view oa_dpc_etl_ptf_ct_flat_v;
drop view oa_dpc_etl_ptf_rt_flat_v;
drop view oa_dpc_etl_ptf_rt_arrayagg_v;
drop view oa_dpc_etl_ptf_ct_arrayagg_v;
drop view oa_dpc_etl_ptf_rt_xml_v;
