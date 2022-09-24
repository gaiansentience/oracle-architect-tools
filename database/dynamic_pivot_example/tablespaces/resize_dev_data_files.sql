

--resize datafiles on unix EE19 system (developer days vmbox)
/*
alter database datafile '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_data_01.dbf' 
   resize 200M;
   
alter database datafile '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_data_02.dbf' 
   resize 200M;   
   
alter database datafile '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_index_01.dbf' 
   resize 300M;      
   
alter database datafile '/u01/app/oracle/oradata/ORCLCDB/orcl/dev_index_02.dbf' 
   resize 300M;      
*/
   
--on unix system (bigdatalite vbox)
/*
alter database datafile '/u01/app/oracle/oradata/cdb/orcl/dev_data_01.dbf' 
   resize 200M;
   
alter database datafile '/u01/app/oracle/oradata/cdb/orcl/dev_data_02.dbf' 
   resize 200M;   
   
alter database datafile '/u01/app/oracle/oradata/cdb/orcl/dev_index_01.dbf' 
   resize 300M;      
   
alter database datafile '/u01/app/oracle/oradata/cdb/orcl/dev_index_02.dbf' 
   resize 300M;      
*/
   
   
--resize datafiles on windows XE21 system   
/*
alter database datafile 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_data_01.DBF' 
    resize 200M;
    
alter database datafile 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_data_02.DBF' 
    resize 200M;
    
alter database datafile 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_index_01.DBF' 
    resize 300M;
    
alter database datafile 'C:\ORACLE\XE\ORADATA\XE\XEPDB1\dev_index_02.DBF' 
    resize 300M;    
*/

--resize datafiles on windows VirtualBox EE21 system   
/*
alter database datafile 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_data_01.DBF' 
    resize 200M;
    
alter database datafile 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_data_02.DBF' 
    resize 200M;
    
alter database datafile 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_index_01.DBF' 
    resize 200M;
    
alter database datafile 'O:\ORACLE\EE\ORADATA\ORCLCDB\ORCL\dev_index_02.DBF' 
    resize 200M;    
*/