 set serveroutput on;
begin     

    --oa_dpc_test_framework.set_tests_to_archived;
    for i in 1..10 loop
    oa_dpc_etl_testing.run_all_tests(); 
    end loop;
end; 