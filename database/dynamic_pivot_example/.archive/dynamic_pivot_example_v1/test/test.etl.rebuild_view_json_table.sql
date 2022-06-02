set serveroutput on;
begin

  dynamic_pivot_etl.rebuild_view_json_table(p_execute => true);

end;
