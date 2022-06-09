set serveroutput on;
declare
  p_base number;
  p_height number;
  p_sides number;  
  l_circumradius number;
  l_edge_height number;
  l_edge_angle number;
begin
  p_base := 12;
  p_height := 15;
  p_sides := 5;
  
  
  l_edge_height := test_geometry.pyramid_edge_height(
    p_base => p_base,
    p_height => p_height,
    p_sides => p_sides
  );

  l_circumradius := test_geometry.polygon_circumradius(p_sides=> p_sides, p_length=>p_base);
    
  l_edge_angle := test_geometry.pyramid_edge_angles(
    p_height => p_height,
    p_circumradius => l_circumradius,
    p_edge_height => l_edge_height
  );


dbms_output.put_line('p_base = ' || p_base);
dbms_output.put_line('p_height = ' || p_height);
dbms_output.put_line('p_sides = ' || p_sides);
dbms_output.put_line('l_circumradius = ' || l_circumradius);
dbms_output.put_line('l_edge_height = ' || l_edge_height);
dbms_output.put_line('l_edge_angle = ' || l_edge_angle);


end;


--test data
/*

p_base = 12
p_height = 15
p_sides = 3
l_circumradius = 6.9282
l_edge_height = 16.5227
l_edge_angle = 65.2088

p_base = 12
p_height = 15
p_sides = 4
l_circumradius = 8.4853
l_edge_height = 17.2337
l_edge_angle = 60.5037

p_base = 12
p_height = 15
p_sides = 5
l_circumradius = 10.2078
l_edge_height = 18.1438
l_edge_angle = 55.7642

*/