set serveroutput on;
declare 
begin

    oa_dpc_test_framework.set_tests_to_archived;
    
    oa_dpc_test_data_generator.set_load_3d_shapes(false);    
    oa_dpc_poc_testing.run_all_tests; 
    
    
end; 