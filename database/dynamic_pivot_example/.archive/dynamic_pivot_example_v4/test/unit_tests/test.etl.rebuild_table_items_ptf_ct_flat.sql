set serveroutput on;
begin

  oa_dpc_etl.rebuild_table_items_ptf_ct_flat(p_execute => false);

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

drop table oa_dpc_items_ptf_ct_flat_backup purge
create table oa_dpc_items_ptf_ct_flat_backup nologging compress basic as select * from oa_dpc_items_ptf_ct_flat
drop table oa_dpc_items_ptf_ct_flat purge
create table oa_dpc_items_ptf_ct_flat nologging compress basic as select * from oa_dpc_etl_ptf_ct_flat_v
alter table oa_dpc_items_ptf_ct_flat add constraint oa_dpc_items_ptf_ct_flat_pk primary key (item_id)


PL/SQL procedure successfully completed.



*/