create table oa_dpc_test_results 
(
    test_id number generated always as identity
    ,codebase     varchar2(100)
    ,test_name    varchar2(100)
    ,test_set     varchar2(100)
    ,test_group   varchar2(1000)
    ,test_summary varchar2(4000)
    ,test_date    date
    ,start_time   timestamp
    ,stop_time    timestamp
    ,test_info    clob
    ,is_archived  varchar2(10) default 'NO'
)
