create sequence APP#ENVIRONMENT_SEQ
minvalue 1
maxvalue 999999999999
start with 1
increment by 1
cache 100;


create table APP#ENVIRONMENT
(
  ENV_ID       NUMBER default app#environment_seq.nextval,
  SETTING      VARCHAR2(100),
  VALUE        VARCHAR2(4000),
  PURPOSE      VARCHAR2(100),
  CREATED_DATE DATE default SYSDATE,
  CREATED_BY   VARCHAR2(35),
  UPDATED_DATE DATE,
  UPDATED_BY   VARCHAR2(35)
);

