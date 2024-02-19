create user opp identified by oracle;

grant create session to opp;
grant resource to opp option;

alter user opp
default tablespace users
 quota unlimited on users
container = current;

grant create synonym to opp;
grant create public synonym to opp;
grant create table to opp;
grant create sequence to opp;
grant create view to opp;
grant create materialized view to opp;
grant create procedure to opp;
grant create type to opp;

grant create role to opp with admin option;
grant create any context to opp with admin option;

grant alter system to opp;
grant select on v_$sqlarea to opp;
grant select on v_$open_cursor to opp;
grant select on v_$session to opp;
grant select on v_$sesstat to opp;
grant select on v_$statname to opp;
grant select on v_$temporary_lobs to opp;

--grants for tracing
grant execute on dbms_monitor to opp;
grant select on v_$diag_trace_file to opp;
grant select on v_$diag_trace_file_contents to opp;

--grant aq_administrator_role to opp with admin option;
--grant dba to opp with admin option;
--grant olap_dba to opp with admin option;
--grant xdbadmin to opp with admin option;
