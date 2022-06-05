create table oa_dpc_items_ptf_rt_xml nologging compress basic 
as select * from oa_dpc_etl_ptf_rt_xml_v;

alter table oa_dpc_items_ptf_rt_xml
    add constraint oa_dpc_items_ptf_rt_xml_pk primary key (item_id);

create table oa_dpc_items_ptf_rt_xml_backup nologging compress basic 
as select * from oa_dpc_items_ptf_rt_xml;
