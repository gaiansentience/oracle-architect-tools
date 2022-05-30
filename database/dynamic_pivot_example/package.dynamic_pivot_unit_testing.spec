create or replace package dynamic_pivot_unit_testing
authid current_user
as

    procedure testing_banner
    (
        p_start in boolean default true, 
        p_heading in varchar2 default 'UNIT TESTING'
    );

    procedure start_timing;
    
    function stop_timing return varchar2;
    
    procedure test_option_with_rowcount_timing
    (
        p_source in varchar2, 
        p_comment in varchar2
    );
    
    procedure test_initial_data_generation;
    
    procedure test_pipelined;
    
    procedure test_polymorphic;
    
    procedure run_all_tests;

end dynamic_pivot_unit_testing;
