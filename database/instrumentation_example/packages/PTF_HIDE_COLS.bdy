create or replace PACKAGE BODY PTF_hide_cols AS

  function describe
  (
    p_table in out dbms_tf.table_t,
    p_hide_cols in dbms_tf.columns_t default null
  )
  return dbms_tf.describe_t 
  is
  BEGIN

      for i in 1..p_table.column.count loop
        
        if NOT DBMS_TF.SUPPORTED_TYPE(p_table.column(i).DESCRIPTION.TYPE) then
            raise_application_error(-20100, 
                                    'Source contains unsupported datatype: ' 
                                    || p_table.column(i).description.type);        
        end if;
        
        --check to see if column is hidden with member of syntax
        --this works even if p_hide_cols is null
        if p_table.column(i).description.name member of p_hide_cols then
          --just hide the columns, for_read should be false unless set
          --p_table.column(i).for_read := false;
          p_table.column(i).pass_through := false;
        end if;

      end loop;

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

END PTF_hide_cols;