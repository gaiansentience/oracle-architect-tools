create or replace view app#logs_hourly as
select log_type,
       object_name,
       object_method,
       created_by,
       to_char(created_date, 'dd mm yyyy hh24:mi:ss') created_date,
       substr(message, 1, 100) message
from   app#logs
where  created_date > (sysdate - 1 / 24)
order  by created_date desc
/

