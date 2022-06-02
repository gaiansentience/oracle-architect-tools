create or replace package dynamic_pivot_test_data
as

    procedure set_load_3d_shapes
    (
        p_load_3d in boolean default false
    );
    

    function get_json_data
    (
        p_iterations in number default 1
    ) return clob;
    
end dynamic_pivot_test_data;
