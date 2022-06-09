create or replace view a_simple_type_ptf_vl as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,to_clob(j.simple_doc) as simple_doc
--        ,cast(j.simple_doc as clob) as simple_doc
    from 
        a_test_data_simple_type_vl j
)
select * 
from
    a_simple_type_ptf.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(simple_doc), 
        'select distinct value_name, value_type from oa_dpc_poc_test_data_name_value_v')
