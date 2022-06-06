create table oa_dpc_items_ptf_rt_flat nologging compress basic 
as select * from oa_dpc_etl_ptf_rt_flat_v;

alter table oa_dpc_items_ptf_rt_flat 
    add constraint oa_dpc_items_ptf_rt_flat_pk primary key (item_id);

create table oa_dpc_items_ptf_rt_flat_backup nologging compress basic 
as select * from oa_dpc_items_ptf_rt_flat;
