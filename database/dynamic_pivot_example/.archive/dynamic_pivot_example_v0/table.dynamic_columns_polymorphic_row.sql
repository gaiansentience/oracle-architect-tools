create table dynamic_columns_polymorphic_row nologging compress basic 
as select * from dynamic_view_polymorphic_row_source_v;

alter table dynamic_columns_polymorphic_row 
    add constraint dynamic_columns_polymorphic_row_pk primary key (item_id);

create table dynamic_columns_polymorphic_row_backup nologging compress basic 
as select * from dynamic_columns_polymorphic_row;
