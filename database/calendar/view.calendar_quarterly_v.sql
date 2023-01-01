create or replace view calendar_quarterly_v as
select
    'QUARTERLY CALENDAR' as calendar_type
    ,c.calendar_date
    ,c.day_description as weekday
    ,c.quarter_number as quarter
    ,c.year_number as year
    ,c.quarter_description as description
    ,c.quarter_start as start_date
    ,c.quarter_end as end_date
    ,c.quarter_days as days
    ,c.quarter_day_number as day_number
    ,c.quarter_days_remaining as days_remaining
from calendar_v c
where c.calendar_date >= trunc(localtimestamp)
order by calendar_date;