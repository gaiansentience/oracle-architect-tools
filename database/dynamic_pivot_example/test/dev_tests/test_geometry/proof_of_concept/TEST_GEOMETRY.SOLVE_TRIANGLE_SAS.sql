set serveroutput on;
DECLARE
  P_SIDE_A NUMBER;
  P_ANGLE_C NUMBER;
  P_SIDE_B NUMBER;
  P_ANGLE_A NUMBER;
  P_ANGLE_B NUMBER;
  P_SIDE_C NUMBER;
BEGIN
  P_SIDE_A := 2.6;
  P_ANGLE_C := 117;
  P_SIDE_B := 6.9;

  TEST_GEOMETRY.SOLVE_TRIANGLE_SAS(
    P_SIDE_A => P_SIDE_A,
    P_ANGLE_C => P_ANGLE_C,
    P_SIDE_B => P_SIDE_B,
    P_ANGLE_A => P_ANGLE_A,
    P_ANGLE_B => P_ANGLE_B,
    P_SIDE_C => P_SIDE_C
  );
  
  dbms_output.put_line('p_angle_a = ' || p_angle_a);
  dbms_output.put_line('p_side_a = ' || p_side_a);
  dbms_output.put_line('p_angle_b = ' || p_angle_b);
  dbms_output.put_line('p_side_b = ' || p_side_b);
  dbms_output.put_line('p_angle_c = ' || p_angle_c);
  dbms_output.put_line('p_side_c = ' || p_side_c);

END;

--test cases
/*

p_angle_a = 45.4117
p_side_a = 5
p_angle_b = 85.588
p_side_b = 7
p_angle_c = 49
p_side_c = 5.2987

p_angle_a = 15.9974
p_side_a = 2.6
p_angle_b = 47.0026
p_side_b = 6.9
p_angle_c = 117
p_side_c = 8.4059


*/