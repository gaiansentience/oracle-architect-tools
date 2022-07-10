create or replace view ptf_test_row_as_json1_v as
with src as
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
)
select
*
from
ptf_row_as_json.f(src,columns(n,n_squared))
--ptf_row_as_json.f(src)

