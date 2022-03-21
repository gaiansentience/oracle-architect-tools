-- Create the user 
create user OPP
  identified by "tsunam1"
  default tablespace USERS
  temporary tablespace TEMP
  profile DEFAULT;
-- Grant/Revoke object privileges 
grant select on SYS.V_$OPEN_CURSOR to OPP;
grant select on SYS.V_$SESSION to OPP;
grant select on SYS.V_$SESSTAT to OPP;
grant select on SYS.V_$SQLAREA to OPP;
grant select on SYS.V_$STATNAME to OPP;
grant select on SYS.V_$TEMPORARY_LOBS to OPP;
-- Grant/Revoke role privileges 
grant aq_administrator_role to OPP with admin option;
grant dba to OPP with admin option;
--grant olap_dba to OPP with admin option;
grant resource to OPP with admin option;
grant xdbadmin to OPP with admin option;
-- Grant/Revoke system privileges 
grant unlimited tablespace to OPP with admin option;
