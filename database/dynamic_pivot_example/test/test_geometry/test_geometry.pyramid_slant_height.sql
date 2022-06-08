set serveroutput on;
declare
  p_base number;
  p_height number;
  p_sides number;
  l_slant_height number;
begin
  p_base := 12;
  p_height := 15;
  p_sides := 4;

  l_slant_height := oa_geometry.pyramid_slant_height(
    p_base => p_base,
    p_height => p_height,
    p_sides => p_sides
  );

dbms_output.put_line('P_BASE = ' || p_base);
dbms_output.put_line('P_HEIGHT = ' || p_height);
dbms_output.put_line('P_SIDES = ' || p_sides);
dbms_output.put_line('l_slant_height = ' || l_slant_height);

end;


--test data
/*

P_BASE = 12
P_HEIGHT = 15
P_SIDES = 4
l_slant_height = 16.1555

P_BASE = 12
P_HEIGHT = 15
P_SIDES = 3
l_slant_height = 15.3948

P_BASE = 6
P_HEIGHT = 4
P_SIDES = 4
l_slant_height = 5

P_BASE = 12
P_HEIGHT = 15
P_SIDES = 5
l_slant_height = 17.1231

*/