set serveroutput on;
begin
    dynamic_pivot_etl.reload_table_pair_value_source(p_execute => true);
    
    delete from dynamic_pivot_pair_values where item_type = 'triangle';
    commit;
    
end;
