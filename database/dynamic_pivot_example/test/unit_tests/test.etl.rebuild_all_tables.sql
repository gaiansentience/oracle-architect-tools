set serveroutput on;
begin

  oa_dpc_etl.rebuild_all_tables(p_execute => true, p_load_3d_shapes => false);

end;
