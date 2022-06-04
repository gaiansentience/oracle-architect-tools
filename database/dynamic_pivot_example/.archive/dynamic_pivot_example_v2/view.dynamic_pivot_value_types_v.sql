--a materialized view with distinct value_name, value_type would help the dynamic column lookups
---just create a view for now
create or replace view dynamic_pivot_value_types_v as
select
    value_name
    --use varchar2 if the column has been defined with more than one datatype
    ,case 
        when max(value_type) <> min(value_type) then 'varchar2' 
        else max(value_type) 
    end as value_type
    ,count(*) as occurrences
from dynamic_pivot_pair_values
group by
    value_name;


