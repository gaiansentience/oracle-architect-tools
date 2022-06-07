drop table test purge;

create table test nologging compress basic parallel 4 
as select /*+ parallel(4)*/ * from oa_dpc_etl_json_table_v;



/*
create table test(item_id number,item_name varchar2(100),item_type varchar2(100),"a_degrees" number,"b_degrees" number,"color" varchar2(4000)) nologging compress basic parallel 4 
as select 
item_id,item_name,item_type,"a_degrees","b_degrees","color" from oa_dpc_etl_json_table_v;

--cant generate explain plan without specifying datatypes in ctas table definition
--cant specify datatypes in ctas statement (tested on oracle 19 and 21)
--ctas works fine with create table x parallel 4 as select * from source
Error starting at line : 3 in command -
create table test(item_id number,item_name varchar2(100),item_type varchar2(100),"a_degrees" number,"b_degrees" number,"color" varchar2(4000)) nologging compress basic parallel 4 
as select 
item_id,item_name,item_type,"a_degrees","b_degrees","color" from oa_dpc_etl_json_table_v
Error report -
ORA-01773: may not specify column datatypes in this CREATE TABLE
01773. 00000 -  "may not specify column datatypes in this CREATE TABLE"
*Cause:    Column data types or virtual columns were specified in a SELECT
           statement used to create and load a table directly.
*Action:   Remove the column data types and virtual columns.
           The data types of the SELECT list expressions are automatically
           used as the column data types.


*/