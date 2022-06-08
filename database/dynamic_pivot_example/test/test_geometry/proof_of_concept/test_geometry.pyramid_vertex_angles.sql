set serveroutput on;
declare
  p_base number;
  p_height number;
  p_sides number;  
  l_edge_height number;
  l_vertex_angle number;
begin
  p_base := 12;
  p_height := 15;
  p_sides := 5;
  
  l_edge_height := test_geometry.pyramid_edge_height(
    p_base => p_base,
    p_height => p_height,
    p_sides => p_sides
  );
    
  l_vertex_angle := test_geometry.pyramid_vertex_angles(
    p_base => p_base,
    p_edge_height => l_edge_height
    );

dbms_output.put_line('p_base = ' || p_base);
dbms_output.put_line('p_height = ' || p_height);
dbms_output.put_line('p_sides = ' || p_sides);
dbms_output.put_line('l_edge_height = ' || l_edge_height);
dbms_output.put_line('l_vertex_angle = ' || l_vertex_angle);


end;


--test data
/*

p_base = 12
p_height = 15
p_sides = 3
l_edge_height = 16.5227
l_vertex_angle = 42.5858


p_base = 12
p_height = 15
p_sides = 4
l_edge_height = 17.2337
l_vertex_angle = 40.749

p_base = 12
p_height = 15
p_sides = 5
l_edge_height = 18.1438
l_vertex_angle = 38.6214


*/