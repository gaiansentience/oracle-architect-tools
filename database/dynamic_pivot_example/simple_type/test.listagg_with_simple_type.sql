with base as
(
select level as n
from dual connect by level <= 10
), base_object as
(
select
n,
t_pml('key'||n,n).element() as thething
from base
)
select
--n,
listagg(thething)as allthings
from
base_object;

select
item_id,
listagg(t_pml(value_name,value_data).element()) as stuff
from oa_dpc_poc_test_data_name_value_v group by item_id