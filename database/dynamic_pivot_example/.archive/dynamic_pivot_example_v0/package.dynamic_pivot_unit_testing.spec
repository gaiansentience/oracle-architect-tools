create or replace package dynamic_pivot_unit_testing
authid current_user
as
    
    procedure test_initial_data_generation;
    
    procedure test_pipelined;
    
    procedure test_polymorphic;
    
    procedure run_all_tests;

end dynamic_pivot_unit_testing;
