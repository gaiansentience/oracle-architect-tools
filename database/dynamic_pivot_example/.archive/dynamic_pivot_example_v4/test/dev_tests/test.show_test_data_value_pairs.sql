select
    t.item_id,
    t.item_name,
    t.item_type,
    t.value_id,
    t.value_name,
    t.value_type,
    t.value_data
from 
    --dynamic_pivot_test_data_v t
    dynamic_pivot_test_data_large_v t
order by 
    t.item_id, 
    t.value_id;