create or replace package ptf_add_user_date 
authid current_user
as 
    --add a variable number of columns populated with random values
    --optionally specify high/low range for the values
    /*
    create or replace FUNCTION ADD_RANDOM 
    (
      p_table in table,
      p_rnd_cols in naturaln default 1,
      p_low in number default null,
      p_high in number default null
    ) RETURN TABLE
    PIPELINED ROW POLYMORPHIC
    using PTF_ADD_RANDOM;
    */
    
    function f
    (
        p_table in table
    ) return table
    pipelined row polymorphic;
    
    function describe(
        p_table in out dbms_tf.table_t
    )
    return dbms_tf.describe_t;
    
    procedure open;
    
    procedure fetch_rows;
    
    procedure close;

end ptf_add_user_date;