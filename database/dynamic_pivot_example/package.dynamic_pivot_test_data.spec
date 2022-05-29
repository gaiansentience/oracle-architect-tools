create or replace package dynamic_pivot_test_data
as

    procedure start_timing;
    
    function stop_timing return varchar2;

    function get_json_data
    (
        p_iterations in number default 1
    ) return clob;
    
end dynamic_pivot_test_data;
