create or replace package dynamic_pipeline_objects
as

    type t_dynamic_items_rc is ref cursor return dynamic_item_object_v%rowtype;


    function get_shapes(
        p_dynamic_items_rc in t_dynamic_items_rc
    ) return dynamic_geometry_table pipelined
    parallel_enable (partition p_dynamic_items_cursor by hash(item_id));


end dynamic_pipeline_objects;
/

create or replace package body dynamic_pipeline_objects
as

    g_bulk_limit number := 100;

    function get_shapes(
        p_dynamic_items_rc in t_dynamic_items_rc
    ) return dynamic_geometry_table pipelined
    parallel_enable (partition p_dynamic_items_cursor by hash(item_id))
    is
        type t_items is table of dynamic_item_object_v%rowtype;
        l_items t_items;
        l_geometry dynamic_geometry;
    begin

        loop
        
            fetch p_dynamic_items_rc bulk collect into t_items limit g_bulk_limit;
            exit when t_items.count = 0;
    
            for i in 1..t_items.count loop
                --first pass just output a dynamic geometry item
                l_geometry := new dynamic_geometry(t_items(i).o_item.item_id, t_items(i).o_item.item_name, t_items(i).o_item.item_type);
                pipe row(l_geometry);
            end loop;
    
        end loop;

        close p_dynamic_items_rc;
        
        return;
    
    exception
        when no_data_needed then
            raise;
        when others then
            dbms_output.put_line(sqlerrm);
            raise;
    end get_shapes;

begin
    null;
end dynamic_pipeline_objects;
