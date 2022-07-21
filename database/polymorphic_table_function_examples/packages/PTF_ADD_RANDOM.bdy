create or replace PACKAGE BODY PTF_ADD_RANDOM AS

  function describe
  (
    p_table in out dbms_tf.table_t,
    p_rnd_cols in naturaln default 1,
    p_low in number default null,
    p_high in number default null
  )
    return dbms_tf.describe_t 
  is
      out_cols dbms_tf.columns_new_t := dbms_tf.columns_new_t();
  BEGIN
  
    --no read columns to validate for ptf supported datatypes
    
    --define new columns for random values and add to out cols
    for i in 1..p_rnd_cols loop
      out_cols(i) := dbms_tf.column_metadata_t(name => 'RANDOM_' || i, type => dbms_tf.type_number);
    end loop;

    RETURN dbms_tf.describe_t(new_columns => out_cols);

  END describe;

  procedure open 
  is
  BEGIN
    NULL;
  END open;

  procedure fetch_rows
  (
    p_rnd_cols in naturaln default 1,
    p_low in number default null,
    p_high in number default null  
  )
  is
    all_rows DBMS_TF.ROW_SET_T;
    new_col DBMS_TF.TAB_NUMBER_T;
    rows_fetched CONSTANT PLS_INTEGER := dbms_tf.get_env().row_count;
  BEGIN

    for c in 1..p_rnd_cols loop
      FOR row_index IN 1 .. rows_fetched LOOP 
	       new_col(row_index) := case 
                                      when p_low is null or p_high is null then dbms_random.value
                                      else dbms_random.value(p_low, p_high)
                                 end;
      END LOOP;
      DBMS_TF.PUT_COL(c, new_col);
    end loop;

  END fetch_rows;

  procedure close 
  is
  BEGIN
    NULL;
  END close;

END PTF_ADD_RANDOM;