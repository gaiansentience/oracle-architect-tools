create or replace PACKAGE BODY PTF_pass_through AS

  function describe(
    p_table in out dbms_tf.table_t)
    return dbms_tf.describe_t 
  is
  BEGIN
    --simple passthrough sets no columns for read or pass
    --even supposed to handle unsupported datatypes
    
    --no new columns to return
    return null;    

  END describe;

  procedure open 
  is
  BEGIN
    NULL;
  END open;

  procedure fetch_rows 
  is
 BEGIN 
  null;
  END fetch_rows;

  procedure close 
  is
  BEGIN
    NULL;
  END close;

END PTF_pass_through;