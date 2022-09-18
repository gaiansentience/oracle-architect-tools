create sequence app#environment_seq
    minvalue 1
    maxvalue 999999999999
    start with 1
    increment by 1
    cache 100;
    
    
create table app#environment
(
    env_id       number default app#environment_seq.nextval,
    setting      varchar2(128) 
    constraint app#environment_pk primary key
    constraint app#environment_nn_setting not null,
    value        varchar2(4000),
    purpose      varchar2(1000),
    created_date date default sysdate,
    created_by   varchar2(128),
    updated_date date,
    updated_by   varchar2(128)
);
