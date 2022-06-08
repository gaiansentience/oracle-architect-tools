set serveroutput on;
declare
  p_base number;
  p_height number;
  p_sides number;
  l_edge_height number;
begin
  p_base := 12;
  p_height := 15;
  p_sides := 3;

  l_edge_height := test_geometry.pyramid_edge_height(
    p_base => p_base,
    p_height => p_height,
    p_sides => p_sides
  );

dbms_output.put_line('P_BASE = ' || p_base);
dbms_output.put_line('P_HEIGHT = ' || p_height);
dbms_output.put_line('P_SIDES = ' || p_sides);
dbms_output.put_line('l_edge_height = ' || l_edge_height);

end;


--test data
/*

P_BASE = 12
P_HEIGHT = 15
P_SIDES = 3
l_edge_height = 16.5227

P_BASE = 12
P_HEIGHT = 15
P_SIDES = 5
l_edge_height = 18.1438


P_BASE = 12
P_HEIGHT = 15
P_SIDES = 7
l_edge_height = 20.4017

P_BASE = 12
P_HEIGHT = 15
P_SIDES = 4
l_edge_height = 17.2337

*/