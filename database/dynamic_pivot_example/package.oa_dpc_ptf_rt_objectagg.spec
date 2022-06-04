create or replace package oa_dpc_ptf_rt_objectagg 
authid current_user
as
/*
create or replace function dynamic_pivot_typed_example 
(
    p_table          in out table,
    p_show_columns       in columns,
    p_json_source_column in columns,
    p_new_columns_query  in varchar2
) return table
pipelined row polymorphic
using oa_dpc_ptf_rt_objectagg;
*/

        /*
        --NEW COLUMNS QUERY MUST BE 
        --COLUMN_NAME (exactly matching the json value_name) 
        --AND COLUMN_TYPE (number or varchar2)
        select 
        distinct value_name, value_type
        from oa_dpc_poc_test_data_name_value_v
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

end oa_dpc_ptf_rt_objectagg;