create or replace view oa_dpc_etl_pair_values_source_v as
select
    item_id
    ,item_name
    ,item_type
    ,value_id
    ,value_name
    ,value_type
    ,value_data
from 
    oa_dpc_etl_pair_values_generator_v;