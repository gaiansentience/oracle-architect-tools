create or replace view oa_dpc_etl_xml_table_v as
with base as
(
    select
        x.item_id,
        x.item_name,
        x.item_type,
        x.xml_doc
    from
        oa_dpc_etl_item_row_xml_v x
)
select
    b.item_id
    ,b.item_name
    ,b.item_type
    ,x.a_degrees as "a_degrees"
    ,x.a_side    as "a_side"
    ,x.area      as "area"
    ,x.color     as "color"
    ,x.equation  as "equation"    
    --,b.xml_doc
    --,xmlserialize(content xmltype(b.xml_doc) as clob indent) as xml_doc_pretty
from 
    base b,
    xmltable('/itemValues' passing xmltype(b.xml_doc)
        columns
            item_id    number         path 'item_id'
            ,a_degrees number         path 'a_degrees'
            ,a_side    number         path 'a_side'
            ,area      number         path 'area'
            ,color     varchar2(4000) path 'color'
            ,equation  varchar2(4000) path 'equation'
        ) x;