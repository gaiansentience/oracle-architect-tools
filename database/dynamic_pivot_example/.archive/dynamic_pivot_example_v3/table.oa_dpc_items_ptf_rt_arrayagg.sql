create table oa_dpc_items_ptf_rt_arrayagg nologging compress basic 
as select * from oa_dpc_etl_ptf_rt_arrayagg_v;

alter table oa_dpc_items_ptf_rt_arrayagg 
    add constraint oa_dpc_items_ptf_rt_arrayagg_pk primary key (item_id);

create table oa_dpc_items_ptf_rt_arrayagg_backup nologging compress basic 
as select * from oa_dpc_items_ptf_rt_arrayagg;
