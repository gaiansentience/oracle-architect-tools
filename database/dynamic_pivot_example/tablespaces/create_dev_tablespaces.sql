--create dedicated tablespaces for dev data and indexes

--on unix system (developer days vbox)
/*
create tablespace dev_data 
    DATAFILE '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_data_01.dbf' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_data
   ADD DATAFILE '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_data_02.dbf' 
   SIZE 10M;

create tablespace dev_index 
    DATAFILE '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_index_01.dbf' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_index
   ADD DATAFILE '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_index_02.dbf' 
   SIZE 10M;
*/

--on unix system (bigdatalite vbox)
/*
create tablespace dev_data 
    DATAFILE '/u01/app/oracle/oradata/cdb/orcl/dev_data_01.dbf' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_data
   ADD DATAFILE '/u01/app/oracle/oradata/cdb/orcl/dev_data_02.dbf' 
   SIZE 10M;

create tablespace dev_index 
    DATAFILE '/u01/app/oracle/oradata/cdb/orcl/dev_index_01.dbf' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_index
   ADD DATAFILE '/u01/app/oracle/oradata/cdb/orcl/dev_index_02.dbf' 
   SIZE 10M;
*/

--on xe windows system   
/*
create tablespace dev_data 
    DATAFILE 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_data_01.DBF' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_data
   ADD DATAFILE 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_data_02.DBF' 
   SIZE 10M;

create tablespace dev_index 
    DATAFILE 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_index_01.DBF' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_index
    ADD DATAFILE 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_index_02.DBF' 
    SIZE 10M;
*/
--on win11 windows virtualbox  
/*
create tablespace dev_data 
    DATAFILE 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_data_01.DBF' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_data
   ADD DATAFILE 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_data_02.DBF' 
   SIZE 10M;

create tablespace dev_index 
    DATAFILE 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_index_01.DBF' 
    SIZE 25M
    extent management LOCAL AUTOALLOCATE;

ALTER TABLESPACE dev_index
    ADD DATAFILE 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_index_02.DBF' 
    SIZE 10M;
*/


alter user dev
    default tablespace dev_data
    quota unlimited on dev_data
    quota unlimited on dev_index
    container = current;
