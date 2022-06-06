create or replace view oa_dpc_test_compare_codebase_v as
with base as
(
    select 
        codebase,
        test_name,
        test_set,
        test_group,
        test_summary,
        stop_time - start_time as test_duration
    from oa_dpc_test_results
    where 
        stop_time is not null
        and start_time is not null
), rank_in_codebase as
(
    select
        rank() over (partition by test_name, test_group, test_set, codebase order by test_duration asc) rank_in_codebase,
        codebase,
        test_name,
        test_set,
        test_group,
        test_duration,
        extract(minute from test_duration) * 60 + extract(hour from test_duration) as test_duration_seconds,
        test_summary
    from base
), ranks as
(
    select
        rank() over (partition by test_name, test_group, test_set order by test_duration asc) as rank_in_set,
        rank() over (partition by test_name, test_group order by test_duration asc) as rank_in_group,
        codebase,
        test_name,
        test_set,
        test_group,
        test_duration,
        test_duration_seconds,
        test_summary
    from rank_in_codebase
    where rank_in_codebase = 1
)
select
    rank_in_group,
    rank_in_set,
    codebase,
    test_name,
    test_set,
    test_group,
    test_duration,
    test_duration_seconds,
    test_summary
from ranks
order by 
    test_name,
    test_group, 
    test_set, 
    test_duration asc;