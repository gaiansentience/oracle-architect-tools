set serveroutput on;
declare
  p_sides number;
  p_length number;
  l_circumradius number;
begin
  p_sides := 4;
  p_length := 12;

  l_circumradius := test_geometry.polygon_circumradius(
    p_sides => p_sides,
    p_length => p_length
  );

dbms_output.put_line('P_SIDES = ' || p_sides);
dbms_output.put_line('P_LENGTH = ' || p_length);
dbms_output.put_line('l_circumradius = ' || l_circumradius);

end;


--test data
/*

P_SIDES = 9
P_LENGTH = 10
l_circumradius = 14.6191

P_SIDES = 3
P_LENGTH = 12
l_circumradius = 6.9282

P_SIDES = 5
P_LENGTH = 12
l_circumradius = 10.2078


*/