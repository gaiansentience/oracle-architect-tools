create or replace view calendar_fun_v as
with base as
(
    select
        c.*
        ,case c.iso_week_day_number
            when 5 then 1 else 0
        end as is_friday
        ,5 - c.iso_week_day_number as days_to_friday
        ,case c.iso_week_day_number
            when 1 then 1 else 0
        end as is_monday
        ,case c.iso_week_day_number
            when 1 then 0
            else 8 - c.iso_week_day_number 
        end as days_to_monday
        ,case 
            when c.month_number in (11, 12) then
                to_date((c.year_number + 1) || '10-31','YYYY-MM-DD')
            else
                to_date(c.year_number || '10-31','YYYY-MM-DD')
        end - c.calendar_date as days_to_halloween
        ,case
            when c.month_day_number = 13 and c.iso_week_day_number = 5 then c.calendar_date
        end as friday_thirteenth_date
    from calendar_v c
    where c.calendar_date >= trunc(localtimestamp)
), spooky_base as
(
    select
        c.*
        ,case when c.calendar_date = c.friday_thirteenth_date then 1 else 0 end as is_friday_thirteenth
        ,c.friday_thirteenth_date
        ,first_value(
            c.friday_thirteenth_date ignore nulls
            ) over (
                order by c.calendar_date
                rows between 1 following and unbounded following
            ) as next_friday_thirteenth
--using lead is significantly slower            
--        ,lead(c.friday_thirteenth_date ignore nulls, 1) over (order by c.calendar_date) as next_friday_thirteenth
    from base c
)
select
    c.calendar_date
    ,c.day_description
    ,c.days_to_friday
    ,c.days_to_monday
    ,c.days_to_halloween
    ,case c.is_friday_thirteenth 
        when 1 then 0 else c.next_friday_thirteenth - c.calendar_date
    end as days_to_friday_thirteenth
    ,c.next_friday_thirteenth
    ,c.season_description
    ,c.season_day_number
    ,c.season_days_remaining
    ,c.year_day_number
    ,c.year_days_remaining
from spooky_base c
order by calendar_date;