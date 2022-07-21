create or replace PACKAGE BODY PTF_ROW_AS_JSON_ALT AS

  function describe
  (
    p_table in out dbms_tf.table_t,
    p_cols in dbms_tf.columns_t default null,
    p_show_unused in varchar2 default 'YES',
    p_show_used in varchar2 default 'YES'
  )
    return dbms_tf.describe_t 
  is
      new_col dbms_tf.column_metadata_t;
      out_cols dbms_tf.columns_new_t := dbms_tf.columns_new_t();
  BEGIN

    for i in 1..p_table.column.count loop

        --only read the column if it is in the included set
        if p_cols is null or p_table.column(i).description.name member of p_cols then
          --only need to validate supported types for read/new columns
          if NOT DBMS_TF.SUPPORTED_TYPE(p_table.column(i).DESCRIPTION.TYPE) then
            raise_application_error(-20100, 
                                    'Source contains unsupported datatype: ' 
                                    || p_table.column(i).description.type);
          end if;

          p_table.column(i).for_read := true;
          
          if p_show_used = 'YES' then
            p_table.column(i).pass_through := true;
          else
            --by default hide the column if it is in the output json content
            p_table.column(i).pass_through := false;
          end if;
        else
            if p_show_unused = 'YES' then
              p_table.column(i).pass_through := true;
            else
              --hide unused columns and dont read them
              p_table.column(i).pass_through := false;
            end if;
            p_table.column(i).for_read := false;
        end if;

    end loop;

    --define new column for document contents and add to out cols
    new_col := dbms_tf.column_metadata_t(name => 'DOCUMENT', type => dbms_tf.type_varchar2);
    out_cols(1) := new_col;

    RETURN dbms_tf.describe_t(new_columns => out_cols);

  END describe;

  procedure open 
  is
  BEGIN
    NULL;
  END open;

  procedure fetch_rows
  (
    p_show_unused in varchar2 default 'YES',
    p_show_used in varchar2 default 'YES'  
  )
  is
    all_rows DBMS_TF.ROW_SET_T;
    new_col DBMS_TF.TAB_VARCHAR2_T;
    rows_fetched PLS_INTEGER;
  BEGIN
      --get the currently fetched rows
      DBMS_TF.GET_ROW_SET(all_rows, row_count => rows_fetched);
      FOR row_index IN 1 .. rows_fetched LOOP 
          --build the json string output for each row
	       new_col(row_index) := DBMS_TF.ROW_TO_CHAR(all_rows, row_index, dbms_tf.format_json); 
      END LOOP;

      DBMS_TF.PUT_COL(1, new_col);

  END fetch_rows;

  procedure close 
  is
  BEGIN
    NULL;
  END close;

END PTF_ROW_AS_JSON_ALT;