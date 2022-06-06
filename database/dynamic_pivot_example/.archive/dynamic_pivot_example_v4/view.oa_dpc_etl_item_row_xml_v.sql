create or replace view oa_dpc_etl_item_row_xml_v as
with base as
(
    select
        item_id
        ,min(item_name) as item_name
        ,min(item_type) as item_type
        ,
        xmlelement("itemValues",
            xmlagg(
                xmlelement(evalname value_name,value_data)
            )
        ) as o_xml_doc
    from oa_dpc_pair_values
    group by item_id
)
select
    b.item_id
    ,b.item_name
    ,b.item_type
    ,b.o_xml_doc.getclobval() as xml_doc
    --,xmlserialize(content b.o_xml_doc as clob indent) as xml_doc_pretty
from base b