create or replace package dynamic_pivot_etl
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
        p_execute in boolean default false
    );

    --recreate polymorphic view with current columns
    procedure rebuild_view_polymorphic
    (
        p_execute in boolean default false
    );

    --recreate polymorphic table from fresh polymorphic view
    procedure rebuild_table_polymorphic
    (
        p_execute in boolean default false
    );

    --recreate polymorphic view with current columns
    procedure rebuild_view_polymorphic_row
    (
        p_execute in boolean default false
    );


    --recreate polymorphic table from fresh polymorphic view
    procedure rebuild_table_polymorphic_row
    (
        p_execute in boolean default false
    );

    --recreate json_table view with current columns
    procedure rebuild_view_json_table
    (
        p_execute in boolean default false
    );


    --recreate polymorphic table from fresh polymorphic view
    procedure rebuild_table_json_table
    (
        p_execute in boolean default false
    );

    --recreate pipelined table from current pipelined view
    procedure rebuild_table_pipelined
    (
        p_execute in boolean default false
    );

end dynamic_pivot_etl;