create or replace PACKAGE PTF_ROW_AS_JSON AS 
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
  p_cols in columns default null
) return table
pipelined row polymorphic;

function describe(
  p_table in out dbms_tf.table_t,
  p_cols in dbms_tf.columns_t default null
)
return dbms_tf.describe_t;

procedure open;

procedure fetch_rows;

procedure close;

END PTF_ROW_AS_JSON;