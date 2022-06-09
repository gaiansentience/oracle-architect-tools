declare
  p_sides number;
  p_length number;
  l_area number;
begin
  p_sides := 5;
  p_length := 5;

  l_area := oa_geometry.polygon_area(
    p_sides => p_sides,
    p_length => p_length
  );

dbms_output.put_line('P_SIDES = ' || p_sides);
dbms_output.put_line('P_LENGTH = ' || p_length);
dbms_output.put_line('l_area = ' || l_area);

end;

--test results
/*
P_SIDES = 3
P_LENGTH = 5
l_area = 10.8253

P_SIDES = 4
P_LENGTH = 5
l_area = 25

P_SIDES = 5
P_LENGTH = 5
l_area = 43.012

*/