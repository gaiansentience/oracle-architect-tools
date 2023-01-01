create or replace view calendar_yearly_v as
select
    'YEARLY CALENDAR' as calendar_type
    ,c.calendar_date
    ,c.day_description as weekday
    ,c.year_number as year
    ,c.year_start as start_date
    ,c.year_end as end_date
    ,c.year_days as days
    ,c.year_day_number as day_number
    ,c.year_days_remaining as days_remaining
from calendar_v c
where c.calendar_date >= trunc(localtimestamp)
order by calendar_date;