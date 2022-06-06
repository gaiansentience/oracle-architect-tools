create table oa_dpc_items_pivot nologging compress basic 
as select * from oa_dpc_etl_pivot_v;

alter table oa_dpc_items_pivot
    add constraint oa_dpc_items_pivot_pk primary key (item_id);

create table oa_dpc_items_pivot_backup nologging compress basic 
as select * from oa_dpc_items_pivot;
