--with the jdoc commented out, minus shows both views are identical
--including the jdoc element (which is a clob) raises inconsistent datatypes error
select
item_id
,item_name
,item_type
--,jdoc
,length(jdoc) as length_jdoc
--,cast(jdoc as clob) jclob
from dynamic_pivot_data_to_json_v
minus
select
item_id
,item_name
,item_type
--,jdoc
,length(jdoc) as length_jdoc
--,cast(jdoc as clob) jclob
from dynamic_pivot_data_to_json_v_alt