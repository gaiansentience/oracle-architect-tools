create or replace view a_simple_type_dynamic_etl_v as
with base as
(
select
item_id,
item_name,
item_type,
t_pml(simple_doc) as o_doc
from
a_simple_type_etl_rowsource_v
)
select
b.item_id
,b.item_name
,b.item_type
,b.o_doc
,b.o_doc.get_string('color') as "color"
,b.o_doc.get_number('area') as "area"
,b.o_doc.get_number('radius') as "radius"
,b.o_doc.get_number('circumference') as "circumference"
,b.o_doc.get_number('sides') as "sides"
,b.o_doc.get_number('sideLength') as "sideLength"
from base b