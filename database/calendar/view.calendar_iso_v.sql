create or replace view calendar_iso_v as
select
    'ISO CALENDAR' as calendar_type
    ,c.calendar_date
    ,c.day_description as weekday
    ,c.iso_week_number
    ,c.iso_week_start
    ,c.iso_week_friday
    ,c.iso_week_end
    ,c.iso_week_day_number
    ,c.iso_week_days_remaining
    ,c.iso_year_number
    ,c.iso_year_start
    ,c.iso_year_end
    ,c.iso_year_days
    ,c.iso_year_day_number
    ,c.iso_year_days_remaining
from calendar_v c
where c.calendar_date >= trunc(localtimestamp)
order by calendar_date;