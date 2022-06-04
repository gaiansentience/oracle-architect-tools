set serveroutput on;
begin
    oa_dpc_etl.reload_table_pair_value_source(p_execute => false, p_load_3d_shapes => true);
end;
