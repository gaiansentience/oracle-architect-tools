set serveroutput on;
declare 
begin

     --dynamic_pivot_test_framework.set_tests_to_archived;
    dynamic_pivot_test_data.set_load_3d_shapes(false);    
    dynamic_pivot_unit_testing.run_all_tests; 
    
    
end; 