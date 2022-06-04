create or replace package dynamic_pivot_etl_unit_testing
authid current_user
as

    procedure test_json_table;
    
    procedure test_pipelined;
    
    procedure test_polymorphic;
    
    procedure test_polymorphic_objectagg;
    
    procedure test_polymorphic_row;
    
    procedure run_all_tests(p_show_columns in boolean default false);

end dynamic_pivot_etl_unit_testing;
