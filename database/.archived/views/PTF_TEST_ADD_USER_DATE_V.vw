CREATE OR REPLACE VIEW PTF_TEST_ADD_USER_DATE_V  AS 
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
ptf_add_user_date.f(src);

