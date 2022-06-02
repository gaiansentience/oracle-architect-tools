create table dynamic_pivot_pair_values as
select 
    item_id
    ,item_name
    ,item_type
    ,value_id
    ,value_name
    ,value_type
    ,value_data    
from dynamic_pivot_pair_values_source_v
where 1 = 0;

alter table dynamic_pivot_pair_values
    add constraint dynamic_pivot_pair_values_u_item_id_value_name 
    unique (item_id, value_name);
    
create table dynamic_pivot_pair_values_backup nologging compress basic 
as select * from dynamic_pivot_pair_values;