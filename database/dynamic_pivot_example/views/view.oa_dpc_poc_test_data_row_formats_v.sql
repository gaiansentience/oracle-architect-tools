create or replace view oa_dpc_poc_test_data_row_formats_v as
--compares input formats
select
    jaa.item_id
    ,jaa.item_type
    ,jaa.item_name
    ,json_serialize(jaa.jdoc pretty)  as jdoc_arraryagg
    ,json_serialize(joa.jdoc pretty)  as jdoc_objectagg_nested
    ,json_serialize(joaf.jdoc pretty)  as jdoc_objectagg_flat
    ,json_serialize(nto.o_jdoc_array pretty) as jdoc_pls_array
    ,json_serialize(nto.o_jdoc_nested pretty) as jdoc_pls_nested
    ,json_serialize(nto.o_jdoc_flat pretty) as jdoc_pls_flat
    ,nto.o_item as nested_table
    ,xmlserialize(content xmltype(x.xml_doc) as clob indent) as xml_doc
from
    oa_dpc_poc_test_data_row_json_arrayagg_v jaa
    ,oa_dpc_poc_test_data_row_json_objectagg_v joa
    ,oa_dpc_poc_test_data_row_json_objectagg_flat_v joaf
    ,oa_dpc_poc_test_data_row_objects_v nto
    ,oa_dpc_poc_test_data_row_xml_v x
where
    jaa.item_id = joa.item_id
    and jaa.item_id = nto.item_id
    and jaa.item_id = joaf.item_id
    and jaa.item_id = x.item_id
    and jaa.item_id = 9;