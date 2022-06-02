create or replace package dynamic_pivot_polymorphic_flat 
authid current_user
as
/*
create or replace function dynamic_pivot_example 
(
    p_table          in out table,
    p_show_columns       in columns,
    p_json_source_column in columns,
    p_new_columns_query  in varchar2
) return table
pipelined row polymorphic
using dynamic_pivot_polymorphic;
*/

        /*
        --NEW COLUMNS QUERY MUST BE 
        --COLUMN_NAME (exactly matching the json value_name) 
        select distinct value_name 
        from dynamic_pivot_test_data_v;
        */


    function f
    (
        p_table          in out table,
        p_show_columns       in columns,
        p_json_source_column in columns,
        p_new_columns_query  in varchar2
    ) return table
    pipelined row polymorphic;

    function describe(
        p_table          in out dbms_tf.table_t,
        p_show_columns       in dbms_tf.columns_t,
        p_json_source_column in dbms_tf.columns_t,
        p_new_columns_query  in varchar2
    ) return dbms_tf.describe_t;

    procedure open;

    procedure fetch_rows
    (
        p_new_columns_query  in varchar2
    );

    procedure close;

end dynamic_pivot_polymorphic_flat;