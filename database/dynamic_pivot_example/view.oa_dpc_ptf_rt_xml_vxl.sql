create or replace view oa_dpc_ptf_rt_xml_vxl as
with base as
(
    select 
        x.item_id
        ,x.item_name
        ,x.item_type
        ,x.xml_doc
    from 
        oa_dpc_poc_test_data_row_xml_vxl x
)
select * 
from
    oa_dpc_ptf_rt_xml.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(xml_doc), 
        'select distinct value_name, value_type from oa_dpc_poc_test_data_name_value_v'
        );
