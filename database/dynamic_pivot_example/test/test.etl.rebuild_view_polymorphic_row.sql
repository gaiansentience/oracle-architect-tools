set serveroutput on;
begin

  dynamic_pivot_etl.rebuild_view_polymorphic_row(p_execute => true);

end;
