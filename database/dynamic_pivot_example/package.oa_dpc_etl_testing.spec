create or replace package oa_dpc_etl_testing
authid current_user
as

    procedure test_json_table;
    
    procedure test_pipelined_objects;
    
    procedure test_polymorphic_ct_arrayagg;

    procedure test_polymorphic_rt_arrayagg;
    
    procedure test_polymorphic_ct_flat;

    procedure test_polymorphic_rt_flat;

    procedure test_polymorphic_rt_objectagg;
        
    procedure run_all_tests(p_show_columns in boolean default false);

end oa_dpc_etl_testing;
