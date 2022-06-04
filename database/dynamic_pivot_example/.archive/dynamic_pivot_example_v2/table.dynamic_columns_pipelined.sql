create table dynamic_columns_pipelined nologging compress basic 
as select * from dynamic_view_pipelined_source_v;

alter table dynamic_columns_pipelined 
    add constraint dynamic_columns_pipelined_pk primary key (item_id);
    
create table dynamic_columns_pipelined_backup nologging compress basic 
as select * from dynamic_columns_pipelined;    

