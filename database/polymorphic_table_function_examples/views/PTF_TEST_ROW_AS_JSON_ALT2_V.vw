CREATE OR REPLACE VIEW PTF_TEST_ROW_AS_JSON_ALT2_V AS 
  with src as
(
select
b.n,
cast(b.dt as date) dt,
--cast(b.ts as timestamp) ts,
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
ptf_row_as_json_alt.f(src,columns(n,dt,n_squared,n_cubed),'NO','YES');

