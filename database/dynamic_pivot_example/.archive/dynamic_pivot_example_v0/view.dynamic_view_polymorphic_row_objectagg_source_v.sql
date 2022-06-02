create or replace view dynamic_view_polymorphic_row_objectagg_source_v as
with base as
(
    select 
        j.item_id
        ,j.item_name
        ,j.item_type
        ,j.jdoc
    from 
        dynamic_pivot_item_rowsource_objectagg_v j
)
select * 
from
    dynamic_view_polymorphic_row_objectagg.f(base, columns(item_id, item_name, item_type), columns(jdoc), 'select distinct value_name, value_type from dynamic_pivot_value_types_v')
