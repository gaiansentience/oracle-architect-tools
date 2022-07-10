create or replace PACKAGE BODY PTF_ADD_USER_DATE AS

  function describe
  (
    p_table in out dbms_tf.table_t
  )
    return dbms_tf.describe_t 
  is
      out_cols dbms_tf.columns_new_t := dbms_tf.columns_new_t();
  BEGIN

    --no read columns to validate for ptf supported datatypes

    --define new columns for user and date and add to out cols
    
    out_cols(1) := dbms_tf.column_metadata_t(name => 'QUERY_USER', type => dbms_tf.type_varchar2);
    out_cols(2) := dbms_tf.column_metadata_t(name => 'QUERY_DATE', type => dbms_tf.type_date);
    

    RETURN dbms_tf.describe_t(new_columns => out_cols);

  END describe;

  procedure open 
  is
  BEGIN
    NULL;
  END open;

  procedure fetch_rows
  is
    all_rows DBMS_TF.ROW_SET_T;
    user_col DBMS_TF.TAB_VARCHAR2_T;
    date_col DBMS_TF.TAB_DATE_T;
    rows_fetched CONSTANT PLS_INTEGER := dbms_tf.get_env().row_count;
  BEGIN

    
      FOR row_index IN 1 .. rows_fetched LOOP 
	       user_col(row_index) := user;
           date_col(row_index) := sysdate;
      END LOOP;
      DBMS_TF.PUT_COL(1, user_col);
      DBMS_TF.PUT_COL(2, date_col);
    

  END fetch_rows;

  procedure close 
  is
  BEGIN
    NULL;
  END close;

END PTF_ADD_USER_DATE;