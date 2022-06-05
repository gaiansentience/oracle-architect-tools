create or replace view oa_dpc_etl_table_rowcounts_v as
select 
    count(*) as row_count
    , 'oa_dpc_items_json_table' as row_source
from oa_dpc_items_json_table
union all
select 
    count(*)
    , 'oa_dpc_items_pf_objects' 
from oa_dpc_items_pf_objects
union all
select 
    count(*)
    , 'oa_dpc_items_ptf_ct_arrayagg' 
from oa_dpc_items_ptf_ct_arrayagg
union all
select 
    count(*)
    , 'oa_dpc_items_ptf_rt_arrayagg' 
from oa_dpc_items_ptf_rt_arrayagg
union all
select 
    count(*)
    , 'oa_dpc_items_ptf_rt_flat' 
from oa_dpc_items_ptf_rt_flat
union all
select 
    count(*)
    , 'oa_dpc_items_ptf_rt_objectagg' 
from oa_dpc_items_ptf_rt_objectagg
union all
select 
    count(*)
    , 'oa_dpc_items_ptf_rt_xml' 
from oa_dpc_items_ptf_rt_xml
union all
select 
    count(*)
    , 'oa_dpc_items_xml_table' 
from oa_dpc_items_xml_table
union all
select 
    count(*)
    , 'oa_dpc_pair_values' 
from oa_dpc_pair_values
