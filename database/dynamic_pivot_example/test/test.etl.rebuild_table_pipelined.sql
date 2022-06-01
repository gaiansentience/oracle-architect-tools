set serveroutput on;
begin

    dynamic_pivot_etl.rebuild_table_pipelined(p_execute => true);

end;
