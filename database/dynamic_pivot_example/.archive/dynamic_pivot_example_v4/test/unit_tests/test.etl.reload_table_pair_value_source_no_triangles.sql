set serveroutput on;
begin
    oa_dpc_etl.reload_table_pair_value_source(p_execute => false);
    
    delete from oa_dpc_pair_values where item_type = 'triangle';
    commit;
    
end;
