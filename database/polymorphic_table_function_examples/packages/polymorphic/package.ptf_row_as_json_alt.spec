create or replace package ptf_row_as_json_alt 
authid current_user
as 
    /*
    create or replace FUNCTION ROW_AS_JSON 
    (
    p_table in table,
    p_cols in columns default null
    ) RETURN TABLE
    PIPELINED ROW POLYMORPHIC
    using ptf_row_as_json;
    */
    
    function f
    (
        p_table in table,
        p_cols in columns default null,
        p_show_unused in varchar2 default 'YES',
        p_show_used in varchar2 default 'YES'
    ) return table
    pipelined row polymorphic;
    
    function describe
    (
        p_table in out dbms_tf.table_t,
        p_cols in dbms_tf.columns_t default null,
        p_show_unused in varchar2 default 'YES',
        p_show_used in varchar2 default 'YES'  
    ) return dbms_tf.describe_t;
    
    procedure open;
    
    procedure fetch_rows
    (
        p_show_unused in varchar2 default 'YES',
        p_show_used in varchar2 default 'YES'  
    );
    
    procedure close;

end ptf_row_as_json_alt;