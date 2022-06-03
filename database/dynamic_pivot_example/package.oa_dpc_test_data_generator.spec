create or replace package oa_dpc_test_data_generator
as

    procedure set_load_3d_shapes
    (
        p_load_3d in boolean default false
    );
    

    function get_json_data
    (
        p_iterations in number default 1
    ) return clob;
    
end oa_dpc_test_data_generator;
