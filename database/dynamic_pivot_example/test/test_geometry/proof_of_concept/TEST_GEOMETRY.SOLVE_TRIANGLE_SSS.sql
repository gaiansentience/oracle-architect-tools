set serveroutput on;
DECLARE
  P_SIDE_A NUMBER;
  P_SIDE_B NUMBER;
  P_SIDE_C NUMBER;
  P_ANGLE_A NUMBER;
  P_ANGLE_B NUMBER;
  P_ANGLE_C NUMBER;
BEGIN 
  P_SIDE_A := 3;
  P_SIDE_B := 6;
  P_SIDE_C := 8.9;

  TEST_GEOMETRY.SOLVE_TRIANGLE_SSS(
    P_SIDE_A => P_SIDE_A,
    P_SIDE_B => P_SIDE_B,
    P_SIDE_C => P_SIDE_C,
    P_ANGLE_A => P_ANGLE_A,
    P_ANGLE_B => P_ANGLE_B,
    P_ANGLE_C => P_ANGLE_C
  );

  dbms_output.put_line('p_angle_a = ' || p_angle_a);
  dbms_output.put_line('p_side_a = ' || p_side_a);
  dbms_output.put_line('p_angle_b = ' || p_angle_b);
  dbms_output.put_line('p_side_b = ' || p_side_b);
  dbms_output.put_line('p_angle_c = ' || p_angle_c);
  dbms_output.put_line('p_side_c = ' || p_side_c);
  
  
  --test cases
  /*
p_angle_a = 46.5675
p_side_a = 6
p_angle_b = 75.5225
p_side_b = 8
p_angle_c = 57.91
p_side_c = 7
  
  
p_angle_a = 19.0434
p_side_a = 3.5
p_angle_b = 28.3882
p_side_b = 5.1
p_angle_c = 132.5684
p_side_c = 7.9


p_angle_a = 28.1803
p_side_a = 7.4
p_angle_b = 47.7554
p_side_b = 11.6
p_angle_c = 104.0643
p_side_c = 15.2
  
  */

END;
