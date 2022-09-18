create sequence app#log_seq
    minvalue 1
    maxvalue 999999999999
    start with 1
    increment by 1
    cache 100;



create table app#logs
(
    log_id            number default app#log_seq.nextval,
    log_type          varchar2(20),
    object_name       varchar2(128),
    object_method     varchar2(128),
    reference_id      number default -999999,
    message           varchar2(4000),
    preserve_on_purge number default 0,
    os_user_name      varchar2(128),
    db_user_name      varchar2(128),
    db_session_id     number,  
    created_by        varchar2(128),
    created_date      date default sysdate
);
