set serveroutput on;
begin

  oa_dpc_etl.rebuild_table_items_ptf_rt_xml(p_execute => false);

end;


/*



create or replace view oa_dpc_etl_ptf_rt_xml_v as
with base as
(
    select 
        x.item_id
        ,x.item_name
        ,x.item_type
        ,x.xml_doc
    from 
        oa_dpc_etl_item_row_xml_v x
)
select * 
from
    oa_dpc_ptf_rt_xml.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(xml_doc), 
        'select distinct value_name, value_type from oa_dpc_value_types_v'
        )        

drop table oa_dpc_items_ptf_rt_xml_backup purge
create table oa_dpc_items_ptf_rt_xml_backup nologging compress basic as select * from oa_dpc_items_ptf_rt_xml
drop table oa_dpc_items_ptf_rt_xml purge
create table oa_dpc_items_ptf_rt_xml nologging compress basic as select * from oa_dpc_etl_ptf_rt_xml_v
alter table oa_dpc_items_ptf_rt_xml add constraint oa_dpc_items_ptf_rt_xml_pk primary key (item_id)


PL/SQL procedure successfully completed.




*/