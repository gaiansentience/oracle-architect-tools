create or replace view oa_dpc_test_compare_codebase_pivot_v as
with base as (
    select
        test_name
        ,test_set
        ,test_group
        ,v0
        ,v1
        ,v2
        ,v3
        ,v4
        ,v5
        --,codebase,
        --,test_duration
    from
        oa_dpc_test_compare_codebase_v 
        pivot (
            max ( test_duration )
            for codebase
            in ( 
                'rc tuning (version 5)'      as v5
                ,'poc tuning (version 4)'     as v4 
                ,'poc refactored (version 3)' as v3 
                ,'poc refactored (version 2)' as v2 
                ,'poc refactored (version 1)' as v1 
                ,'poc initial (version 0)'    as v0 
                )
        )
)
select
    test_name
    ,test_set
    ,test_group
    ,min(v0) as v0
    ,min(v1) as v1
    ,min(v2) as v2
    ,min(v3) as v3
    ,min(v4) as v4
    ,min(v5) as v5
from
    base
group by
    test_name
    ,test_set
    ,test_group
order by
    test_name
    ,test_set
    ,test_group