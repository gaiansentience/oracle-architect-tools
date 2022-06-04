set serveroutput on;
begin

  oa_dpc_etl.rebuild_table_items_ptf_rt_objectagg(p_execute => false);

end;


/*


create or replace view oa_dpc_etl_ptf_rt_objectagg_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
        --,j.o_jdoc_nested as jdoc
    from 
        oa_dpc_etl_item_row_objectagg_v j
        --oa_dpc_etl_item_row_objects_v j
)
select * 
from
    oa_dpc_ptf_rt_objectagg.f(
        base, 
        columns(item_id, item_name, item_type), 
        columns(jdoc), 
        'select distinct value_name, value_type from oa_dpc_value_types_v'
        )        

drop table oa_dpc_items_ptf_rt_objectagg_backup purge
create table oa_dpc_items_ptf_rt_objectagg_backup nologging compress basic as select * from oa_dpc_items_ptf_rt_objectagg
drop table oa_dpc_items_ptf_rt_objectagg purge
create table oa_dpc_items_ptf_rt_objectagg nologging compress basic as select * from oa_dpc_etl_ptf_rt_objectagg_v
alter table oa_dpc_items_ptf_rt_objectagg add constraint oa_dpc_items_ptf_rt_objectagg_pk primary key (item_id)


PL/SQL procedure successfully completed.



*/