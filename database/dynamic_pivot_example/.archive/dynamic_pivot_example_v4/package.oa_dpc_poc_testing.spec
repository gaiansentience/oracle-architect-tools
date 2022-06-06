create or replace package oa_dpc_poc_testing
authid current_user
as
    
    procedure test_initial_data_generation;
    
    procedure test_pipelined;
    
    procedure test_polymorphic;
    
    procedure run_all_tests;

end oa_dpc_poc_testing;
