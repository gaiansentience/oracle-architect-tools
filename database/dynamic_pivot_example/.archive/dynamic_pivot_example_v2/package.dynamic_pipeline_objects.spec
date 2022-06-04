create or replace package dynamic_pipeline_objects
as

    type t_dynamic_items_rc is ref cursor return dynamic_item_object_v%rowtype;


    function get_shapes(
        p_dynamic_items_rc in t_dynamic_items_rc
    ) return dynamic_geometry_table pipelined
    parallel_enable (partition p_dynamic_items_rc by hash(item_id));


end dynamic_pipeline_objects;