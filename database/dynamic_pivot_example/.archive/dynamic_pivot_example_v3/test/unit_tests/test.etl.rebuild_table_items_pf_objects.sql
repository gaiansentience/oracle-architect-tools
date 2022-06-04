set serveroutput on;
begin

    oa_dpc_etl.rebuild_table_items_pf_objects(p_execute => false);

end;


/*

drop table oa_dpc_items_pf_objects_backup purge
create table oa_dpc_items_pf_objects_backup nologging compress basic as select * from oa_dpc_items_pf_objects
drop table oa_dpc_items_pf_objects purge
create table oa_dpc_items_pf_objects nologging compress basic as select * from oa_dpc_etl_pf_objects_v
alter table oa_dpc_items_pf_objects add constraint oa_dpc_items_pf_objects_pk primary key (item_id)


PL/SQL procedure successfully completed.



*/