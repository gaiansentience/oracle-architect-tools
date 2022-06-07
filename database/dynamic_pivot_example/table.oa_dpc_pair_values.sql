create table oa_dpc_pair_values parallel 4 
as select 
    item_id
    ,item_name
    ,item_type
    ,value_id
    ,value_name
    ,value_type
    ,value_data    
from oa_dpc_etl_pair_values_source_v
where 1 = 0;

alter table oa_dpc_pair_values
    add constraint oa_dpc_pair_values_u_item_id_value_name 
    unique (item_id, value_name);
    
create table oa_dpc_pair_values_backup nologging compress basic 
as select * from oa_dpc_pair_values;