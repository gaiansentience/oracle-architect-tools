create or replace view a_test_data_simple_type_vl as 
  with object_base as
(
    select
        t.item_id
        ,t.item_name
        ,t.item_type
        ,t_pml(t.value_name, t.value_data).element() as simple_ml
    from 
    oa_dpc_poc_test_data_name_value_vl t
)
select
    o.item_id
    ,min(o.item_name) as item_name
    ,min(o.item_type) as item_type
    ,listagg(simple_ml) as simple_doc
from object_base o
group by 
o.item_id;

