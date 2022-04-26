create or replace package ptf_pass_through AS 

/*
create or replace FUNCTION pass_through
(
  P_TABLE IN table 
) RETURN TABLE
PIPELINED ROW POLYMORPHIC
using PTF_pass_through;
*/

function f
(
  p_table in table 
) RETURN TABLE
PIPELINED ROW POLYMORPHIC
using PTF_pass_through;


function describe(p_table in out dbms_tf.table_t)
return dbms_tf.describe_t;

procedure open;

procedure fetch_rows;

procedure close;

END ptf_pass_through;