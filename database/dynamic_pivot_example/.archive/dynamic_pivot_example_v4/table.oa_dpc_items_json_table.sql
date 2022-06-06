create table oa_dpc_items_json_table nologging compress basic 
as select * from oa_dpc_etl_json_table_v;

alter table oa_dpc_items_json_table 
    add constraint oa_dpc_items_json_table_pk primary key (item_id);

create table oa_dpc_items_json_table_backup nologging compress basic 
as select * from oa_dpc_items_json_table;
