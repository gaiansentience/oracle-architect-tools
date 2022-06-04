create table dynamic_columns_json_table nologging compress basic 
as select * from dynamic_view_json_table_source_v;

alter table dynamic_columns_json_table 
    add constraint dynamic_columns_json_table_pk primary key (item_id);

create table dynamic_columns_json_table_backup nologging compress basic 
as select * from dynamic_columns_json_table;
