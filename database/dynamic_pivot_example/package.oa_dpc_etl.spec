create or replace package oa_dpc_etl
authid current_user
as

    procedure create_table_pair_value_source
    (
        p_create_empty in boolean default false,
        p_execute in boolean default false
    );

    --reload pair value source data from generator view
    procedure reload_table_pair_value_source
    (
        p_execute in boolean default false,
        p_load_3d_shapes in boolean default false
    );

    procedure rebuild_etl_view_ptf_ct_arrayagg (p_execute in boolean default false);

    procedure rebuild_table_items_ptf_ct_arrayagg (p_execute in boolean default false);


    procedure rebuild_etl_view_ptf_rt_arrayagg (p_execute in boolean default false);

    procedure rebuild_table_items_ptf_rt_arrayagg (p_execute in boolean default false);


    procedure rebuild_etl_view_ptf_ct_flat (p_execute in boolean default false);

    procedure rebuild_table_items_ptf_ct_flat (p_execute in boolean default false);


    procedure rebuild_etl_view_ptf_rt_flat (p_execute in boolean default false);

    procedure rebuild_table_items_ptf_rt_flat (p_execute in boolean default false);


    procedure rebuild_etl_view_ptf_rt_objectagg (p_execute in boolean default false);

    procedure rebuild_table_items_ptf_rt_objectagg (p_execute in boolean default false);


    procedure rebuild_etl_view_json_table (p_execute in boolean default false);

    procedure rebuild_table_items_json_table (p_execute in boolean default false);


    procedure rebuild_etl_view_pf_objects (p_execute in boolean default false);

    procedure rebuild_table_items_pf_objects (p_execute in boolean default false);

    
    procedure rebuild_all_tables
    (
        p_execute in boolean default false,
        p_load_3d_shapes in boolean default false    
    );

end oa_dpc_etl;