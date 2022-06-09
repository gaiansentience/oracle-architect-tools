create or replace package oa_dpc_poc_pf_objects
as

    type t_dynamic_items_rc is ref cursor return oa_dpc_poc_test_data_row_objects_v%rowtype;

    function get_shapes(
        p_dynamic_items_rc in t_dynamic_items_rc
    ) return oa_dpc_t_geometry_table pipelined
    parallel_enable (partition p_dynamic_items_rc by hash(item_id));

end oa_dpc_poc_pf_objects;