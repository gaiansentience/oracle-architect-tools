set serveroutput on;
begin
    oa_dpc_etl.create_table_pair_value_source(p_create_empty => false, p_execute => true);
end;


/*
--with create_empty set to false

drop table oa_dpc_pair_values_backup purge
create table oa_dpc_pair_values_backup nologging compress basic as select * from oa_dpc_pair_values
drop table oa_dpc_pair_values purge
create table oa_dpc_pair_values nologging compress basic as select 
ITEM_ID
,ITEM_NAME
,ITEM_TYPE
,VALUE_ID
,VALUE_NAME
,VALUE_TYPE
,VALUE_DATA
 from oa_dpc_etl_pair_values_source_v where 1 = 0
alter table oa_dpc_pair_values add constraint oa_dpc_pair_values_u_item_id_value_name unique (item_id, value_name)


--with create_empty set to true

drop table oa_dpc_pair_values_backup purge
create table oa_dpc_pair_values_backup nologging compress basic as select * from oa_dpc_pair_values
drop table oa_dpc_pair_values purge
create table oa_dpc_pair_values nologging compress basic as select 
ITEM_ID
,ITEM_NAME
,ITEM_TYPE
,VALUE_ID
,VALUE_NAME
,VALUE_TYPE
,VALUE_DATA
 from oa_dpc_etl_pair_values_source_v
alter table oa_dpc_pair_values add constraint oa_dpc_pair_values_u_item_id_value_name unique (item_id, value_name)

*/