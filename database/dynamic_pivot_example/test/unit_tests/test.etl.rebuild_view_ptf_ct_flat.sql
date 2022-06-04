set serveroutput on;
begin
--test.etl.rebuild_view_ptf_ct_flat
    --rebuild the view for polymorphic using typed column put and json_object flat source
    oa_dpc_etl.rebuild_etl_view_ptf_ct_flat(p_execute => false);

end;

/*


create or replace view oa_dpc_etl_ptf_ct_flat_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
        --,j.o_jdoc_flat as jdoc
    from 
        oa_dpc_etl_item_row_objectagg_flat_v j
        --oa_dpc_etl_item_row_objects_v j
)
select * 
from
    oa_dpc_ptf_ct_flat.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(jdoc), 
        'select distinct value_name, value_type from oa_dpc_value_types_v'
        )



PL/SQL procedure successfully completed.




*/