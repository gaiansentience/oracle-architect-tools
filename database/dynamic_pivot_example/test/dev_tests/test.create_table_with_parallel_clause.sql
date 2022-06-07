create table test nologging compress basic parallel 4 
as select * from oa_dpc_etl_pivot_v;

alter table test 
    add constraint test_pk primary key (item_id);

create table test_backup nologging compress basic 
as select * from test;


drop table test purge;