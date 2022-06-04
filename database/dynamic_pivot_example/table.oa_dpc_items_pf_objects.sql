create table oa_dpc_items_pf_objects nologging compress basic 
as select * from oa_dpc_etl_pf_objects_v;

alter table oa_dpc_items_pf_objects 
    add constraint oa_dpc_items_pf_objects_pk primary key (item_id);

create table oa_dpc_items_pf_objects_backup nologging compress basic 
as select * from oa_dpc_items_pf_objects;
