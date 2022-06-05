select
    rank_in_group,
    rank_in_set,
    codebase,
    test_name,
    test_set,
    test_group,
    test_duration,
    test_summary
from oa_dpc_test_compare_codebase_v
where 1 = 1
    and test_name = 'etl_pivot_to_dynamic_columns'
    --and test_name = 'timing_rowcounts'
    and test_group = 'full dataset'
     --and test_set = 'DYNAMIC TABLE COLUMNS PIVOT POLYMORPHIC ROWSET PUT ROWSOURCE NESTED JSON'
     --and test_set like 'GENERATE TEST DATA: NAME|VALUE PAIRS%'
     --and test_set like 'CONSOLIDATE TEST DATA: NAME|VALUE PAIRS%'
order by 
    test_name,
    test_group, 
    test_set, 
    test_duration asc

