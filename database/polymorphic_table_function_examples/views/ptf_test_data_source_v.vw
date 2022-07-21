create or replace view ptf_test_data_source_v  as
with src as
(
select
level n,
sysdate + level dt,
systimestamp + numtodsinterval(level,'Day') ts,
--numtodsinterval(level,'Day') ds_int,
power(level,2) n_squared,
power(level,3) n_cubed,
log(10,level) log_10_n,
dbms_random.value(1,100) rnd
from
dual connect by level <= 100
)
select
*
from
src
