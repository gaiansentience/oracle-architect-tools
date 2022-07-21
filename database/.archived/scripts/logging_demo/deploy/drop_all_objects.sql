prompt Drop Objects script
prompt drop types
DROP TYPE APP#BOOL;
DROP TYPE APP#LOG;
prompt drop packages
DROP PACKAGE APP#LOG_UTIL;
DROP PACKAGE APP#ENV_UTIL;
DROP PACKAGE APP#TYPES;
prompt drop sequences
DROP SEQUENCE APP#ENVIRONMENT_SEQ_ID;
DROP SEQUENCE APP#LOG_SEQ_ID;
prompt drop triggers
DROP TRIGGER APP#LOGS_BR_DIU;
DROP TRIGGER APP#ENVIRONMENT_BR_DIU;
prompt drop views
DROP VIEW APP#LOGS_DAILY;
DROP VIEW APP#LOGS_HOURLY;
prompt drop tables
DROP TABLE APP#ENVIRONMENT cascade constraints;
DROP TABLE APP#LOGS cascade constraints;
prompt All Test Objects dropped
prompt Thank You
