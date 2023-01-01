create or replace view calendar_outlook_v  as 
with days_base as
(
    select
        level as days_out,
        trunc(current_timestamp) + numtodsinterval(level - 1, 'day') as calendar_date
    from dual
    connect by level <= 180
), time_base  as
(
    select
        days_out,
        calendar_date,
        trunc(calendar_date, 'IW') as iso_week_start,
        trunc(calendar_date, 'IW') + interval '4' day friday_date,
        trunc(calendar_date, 'IW') + interval '6' day iso_week_end,
        trunc(calendar_date, 'Month') + interval '1' month - interval '1' day month_end,
        trunc(calendar_date, 'Year') + interval '1' year - interval '1' day year_end
    from days_base
) 
select
    days_out,
    calendar_date,
    to_char(calendar_date,'fmDay, dd Month yyyy') as calendar_date_fmt,
    iso_week_start,
    friday_date,
    iso_week_end,
    friday_date - calendar_date as days_to_friday,
    case when sign(friday_date - calendar_date) = -1 then 'Week End' else 'Work Day' end week_day_type,
    case when sign(friday_date - calendar_date) = -1 then 0 else 1 end is_workday,
    case when sign(friday_date - calendar_date) = -1 then 1 else 0 end is_weekend,
    month_end,
    month_end - calendar_date days_to_month_end,
    year_end,
    year_end - calendar_date days_to_year_end
from time_base;