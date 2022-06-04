create table dynamic_columns_polymorphic_objectagg nologging compress basic 
as select * from dynamic_view_polymorphic_row_objectagg_source_v;

alter table dynamic_columns_polymorphic_objectagg 
    add constraint dynamic_columns_polymorphic_objectagg_pk primary key (item_id);

create table dynamic_columns_polymorphic_objectagg_backup nologging compress basic 
as select * from dynamic_columns_polymorphic_objectagg;
