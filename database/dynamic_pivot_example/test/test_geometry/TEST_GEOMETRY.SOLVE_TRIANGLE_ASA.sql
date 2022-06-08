set serveroutput on;
DECLARE
  P_ANGLE_A NUMBER;
  P_SIDE_C NUMBER;
  P_ANGLE_B NUMBER;
  P_ANGLE_C NUMBER;
  P_SIDE_A NUMBER;
  P_SIDE_B NUMBER;
BEGIN
  P_ANGLE_A := 87;
  P_SIDE_C := 18.9;
  P_ANGLE_B := 42;

  oa_GEOMETRY.SOLVE_TRIANGLE_ASA(
    P_ANGLE_A => P_ANGLE_A,
    P_SIDE_C => P_SIDE_C,
    P_ANGLE_B => P_ANGLE_B,
    P_ANGLE_C => P_ANGLE_C,
    P_SIDE_A => P_SIDE_A,
    P_SIDE_B => P_SIDE_B
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
p_angle_a = 76
p_side_a = 9.2931
p_angle_b = 34
p_side_b = 5.3557
p_angle_c = 70
p_side_c = 9

p_angle_a = 87
p_side_a = 24.2864
p_angle_b = 42
p_side_b = 16.2731
p_angle_c = 51
p_side_c = 18.9

*/