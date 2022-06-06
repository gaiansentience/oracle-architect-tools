set serveroutput on;
begin
--test.etl.rebuild_view_ptf_rt_xml
    --rebuild the view for polymorphic using typed rowset put and xmlagg source
    oa_dpc_etl.rebuild_etl_view_ptf_rt_xml(p_execute => false);

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



PL/SQL procedure successfully completed.



*/