create table oa_dpc_items_ptf_rt_objectagg nologging compress basic 
as select * from oa_dpc_etl_ptf_rt_objectagg_v;

alter table oa_dpc_items_ptf_rt_objectagg 
    add constraint oa_dpc_items_ptf_rt_objectagg_pk primary key (item_id);

create table oa_dpc_items_ptf_rt_objectagg_backup nologging compress basic 
as select * from oa_dpc_items_ptf_rt_objectagg;
