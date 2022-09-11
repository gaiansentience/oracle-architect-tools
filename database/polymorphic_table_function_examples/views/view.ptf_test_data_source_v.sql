set serveroutput on;
declare
    l_count number;
    l_ddl varchar2(4000);
begin

    select count(*) 
    into l_count
    from user_objects o
    where 
        o.object_type = 'VIEW' 
        and o.object_name = 'PTF_TEST_DATA_SOURCE_V';

    if l_count = 0 then

        l_ddl := q'[
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
    from dual 
    connect by level <= 100
)
select *
from src
]';

        execute immediate l_ddl;
        
        dbms_output.put_line('created view ptf_test_data_source_v');
    
    else
        dbms_output.put_line('view ptf_test_data_source_v already exists');
    end if;
    
end;
/