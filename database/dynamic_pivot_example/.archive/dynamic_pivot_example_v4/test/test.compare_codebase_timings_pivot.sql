set serveroutput on;
set linesize 1000 pagesize 20
column v0 format A22;
column v1 format A22;
column v2 format A22;
column v3 format A22;
column v4 format A22;


begin
    dbms_output.put_line('*********** Start Codebase Test Results Summary for Oracle Version ' || dbms_db_version.version || '************');
end;
/

select
--test_name
test_set
--,test_group
,v0
,v1
,v2
,v3
,v4
from oa_dpc_test_compare_codebase_pivot_v
where 
test_name = 'etl_pivot_to_dynamic_columns' and test_group = 'full dataset'
--test_name = 'timing_rowcounts'
order by v4 asc; 

begin
    dbms_output.put_line('*********** End Codebase Test Results Summary for Oracle Version ' || dbms_db_version.version || '************');
end;
/
