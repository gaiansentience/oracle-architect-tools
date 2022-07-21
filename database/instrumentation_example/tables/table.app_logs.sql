create sequence APP#LOG_SEQ
minvalue 1
maxvalue 999999999999
start with 1
increment by 1
cache 100;



create table app#logs
    (
    log_id            number default app#log_seq.nextval,
    log_type          varchar2(20),
    object_name       varchar2(35),
    object_method     varchar2(35),
    reference_id      number default -999,
    message           varchar2(4000),
    preserve_on_purge number default 0,
    os_user_name varchar2(100),
    db_user_name varchar2(30),
    db_session_id number,  
    created_by        varchar2(35),
    created_date      date default sysdate
    );
