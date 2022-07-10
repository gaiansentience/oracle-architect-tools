create or replace view ptf_test_add_random3_v as
with base as
(
select
b.n,
cast(b.dt as date) dt,
--cast(b.ts as timestamp with time zone) ts,
b.n_squared,
b.n_cubed,
b.log_10_n,
b.rnd
from
ptf_test_data_source_v b
),
src as
(
select
b.n,
cast(b.dt as date) dt,
--cast(b.ts as timestamp) ts,
b.n_squared,
b.n_cubed,
b.log_10_n
--,b.rnd
from base b
)
select
*
from
ptf_add_random.f(src,3, -100,100);

