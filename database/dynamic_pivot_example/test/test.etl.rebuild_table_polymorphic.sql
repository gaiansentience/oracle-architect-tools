set serveroutput on;
begin

  dynamic_pivot_etl.rebuild_table_polymorphic(p_execute => true);

end;
