create or replace PACKAGE PTF_hide_cols 
authid current_user
AS 
/*
create or replace FUNCTION hide_cols
(
  P_TABLE IN table,
  p_hide_cols in columns default null
) RETURN TABLE
PIPELINED ROW POLYMORPHIC
using PTF_hide_cols;
*/

--FUNCTION hide_cols
--simple name is better inside package where package name provides context
function f
(
  P_TABLE IN table,
  p_hide_cols in columns default null
) RETURN TABLE
PIPELINED ROW POLYMORPHIC;
--using clause optional when function is defined in package
--using PTF_hide_cols;

function describe
(
p_table in out dbms_tf.table_t,
p_hide_cols in dbms_tf.columns_t default null
)
return dbms_tf.describe_t;

procedure open;

procedure fetch_rows;

procedure close;

END PTF_hide_cols;