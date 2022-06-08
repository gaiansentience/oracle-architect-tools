set serveroutput on;
declare
  p_base number;
  p_a_degrees number;
  p_b_degrees number;
  l_height number;
begin
  p_base := 8;
  p_a_degrees := 60;
  p_b_degrees := 60;

  l_height := oa_geometry.triangle_height(
    p_base => p_base,
    p_a_degrees => p_a_degrees,
    p_b_degrees => p_b_degrees
  );

dbms_output.put_line('p_base = ' || p_base);
dbms_output.put_line('p_a_degrees = ' || p_a_degrees);
dbms_output.put_line('p_b_degrees = ' || p_b_degrees);
dbms_output.put_line('l_height = ' || l_height);

end;

--test data
/*

p_base = 8
p_a_degrees = 60
p_b_degrees = 60
l_height = 6.9282




*/