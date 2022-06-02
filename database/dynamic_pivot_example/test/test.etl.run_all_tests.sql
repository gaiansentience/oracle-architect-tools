 set serveroutput on;
begin    

    --dynamic_pivot_test_framework.set_tests_to_archived;
    dynamic_pivot_etl_unit_testing.run_all_tests(); 
    
end; 