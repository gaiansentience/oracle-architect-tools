with base as
(
select t_pml('key'|| level, level).element() as element_ml
from dual 
connect by level <= 10
) 
select listagg(element_ml)as simple_ml_doc
from base;

select
item_id,
listagg(t_pml(value_name,value_data).element()) as simple_ml_doc
from oa_dpc_poc_test_data_name_value_v 
group by item_id;

select
item_id,
listagg(t_pml(value_name,value_data).element()) as simple_ml_doc
from oa_dpc_pair_values group by item_id;