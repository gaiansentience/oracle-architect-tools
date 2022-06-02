create or replace package dynamic_view_pipelined
as

    type t_dynamic_items_rc is ref cursor return dynamic_pivot_item_rowsource_v%rowtype;


    function get_shapes(
        p_dynamic_items_rc in t_dynamic_items_rc
    ) return dynamic_geometry_table pipelined
    parallel_enable (partition p_dynamic_items_rc by hash(item_id));


end dynamic_view_pipelined;