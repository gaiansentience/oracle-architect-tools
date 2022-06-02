create table dynamic_columns_polymorphic nologging compress basic 
as select * from dynamic_view_polymorphic_source_v;

alter table dynamic_columns_polymorphic 
    add constraint dynamic_columns_polymorphic_pk primary key (item_id);

create table dynamic_columns_polymorphic_backup nologging compress basic 
as select * from dynamic_columns_polymorphic;
