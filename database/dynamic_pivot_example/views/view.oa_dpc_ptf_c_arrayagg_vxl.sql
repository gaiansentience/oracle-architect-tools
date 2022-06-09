create or replace view oa_dpc_ptf_c_arrayagg_vxl as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
        --,j.o_jdoc_array as jdoc
    from 
        oa_dpc_poc_test_data_row_json_arrayagg_vxl j
        --oa_dpc_poc_test_data_row_objects_vxl j
)
select * 
from
    oa_dpc_ptf_c_arrayagg.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name from oa_dpc_poc_test_data_name_value_v')
