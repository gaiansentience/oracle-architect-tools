create table oa_dpc_items_xml_table nologging compress basic 
as select * from oa_dpc_etl_xml_table_v;

alter table oa_dpc_items_xml_table 
    add constraint oa_dpc_items_xml_table_pk primary key (item_id);

create table oa_dpc_items_xml_table_backup nologging compress basic 
as select * from oa_dpc_items_xml_table;
