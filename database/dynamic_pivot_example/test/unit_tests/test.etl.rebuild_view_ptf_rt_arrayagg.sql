set serveroutput on;
begin
--test.etl.rebuild_view_ptf_rt_arrayagg
    --rebuild the view for polymorphic using typed rowset put and json_arrayagg hierarchical source
    oa_dpc_etl.rebuild_etl_view_ptf_rt_arrayagg(p_execute => false);

end;

/*


create or replace view oa_dpc_etl_ptf_rt_arrayagg_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
        --,j.o_jdoc_array as jdoc
    from 
        oa_dpc_etl_item_row_arrayagg_v j
        --oa_dpc_etl_item_row_objects_v j
)
select * 
from
    oa_dpc_ptf_rt_arrayagg.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(jdoc), 
        'select distinct value_name, value_type from oa_dpc_value_types_v'
        )



PL/SQL procedure successfully completed.



*/