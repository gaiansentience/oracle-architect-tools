set serveroutput on;
declare
  p_base number;
  p_height number;
  p_sides number;  
  l_inradius number;
  l_slant_height number;
  l_slant_angle number;
begin
  p_base := 12;
  p_height := 15;
  p_sides := 5;
  
  
  l_slant_height := oa_geometry.pyramid_slant_height(
    p_base => p_base,
    p_height => p_height,
    p_sides => p_sides
  );

  l_inradius := oa_geometry.polygon_inradius(p_sides=> p_sides, p_length=>p_base);
    
  l_slant_angle := oa_geometry.pyramid_slant_angles(
    p_height => p_height,
    p_inradius => l_inradius,
    p_slant_height => l_slant_height
  );

--base angle calculated is slant_angle
dbms_output.put_line('p_base = ' || p_base);
dbms_output.put_line('p_height = ' || p_height);
dbms_output.put_line('p_sides = ' || p_sides);
dbms_output.put_line('l_inradius = ' || l_inradius);
dbms_output.put_line('l_slant_height = ' || l_slant_height);
dbms_output.put_line('l_slant_angle = ' || l_slant_angle);


end;


--test data
/*

p_base = 12
p_height = 15
p_sides = 3
l_inradius = 3.4641
l_slant_height = 15.3948
l_slant_angle = 76.9962

p_base = 12
p_height = 15
p_sides = 4
l_inradius = 6
l_slant_height = 16.1555
l_slant_angle = 68.1986

p_base = 12
p_height = 15
p_sides = 5
l_inradius = 8.2583
l_slant_height = 17.1231
l_slant_angle = 61.1647

*/