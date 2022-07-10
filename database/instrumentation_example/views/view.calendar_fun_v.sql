create or replace view calendar_fun_v as
with base as
(
    select
        c.calendar_date
        ,c.day_description
        ,case
            when c.calendar_date = c.iso_week_friday then 1 else 0
        end as is_friday
        ,c.iso_week_friday - c.calendar_date as days_to_friday
        ,case
            when c.calendar_date = c.iso_week_start then 1 else 0
        end as is_monday
        ,case 
            when c.calendar_date = c.iso_week_start then 0
            else (c.iso_week_end  + interval '1' day) - c.calendar_date
        end as days_to_monday
        ,case
            when sign(to_date(c.year_number || '10-31','YYYY-MM-DD') - c.calendar_date) = -1 
                then to_date((c.year_number + 1) || '10-31','YYYY-MM-DD') - c.calendar_date
            else to_date(c.year_number || '10-31','YYYY-MM-DD') - c.calendar_date
        end as days_to_halloween
        ,case
            when c.calendar_date = c.iso_week_friday and c.month_day_number = 13 then 1 else 0
        end as is_friday_thirteenth
        ,case
            when c.calendar_date = c.iso_week_friday and c.month_day_number = 13 then c.calendar_date
        end as friday_thirteenth_date
        ,c.iso_week_number
        ,c.iso_week_start
        ,c.iso_week_friday
        ,c.iso_week_end
        ,c.iso_week_day_number
        ,c.iso_week_days_remaining
        ,c.month_number
        ,c.month_description
        ,c.month_start
        ,c.month_end
        ,c.month_days
        ,c.month_day_number
        ,c.month_days_remaining
        ,c.quarter_number
        ,c.quarter_description
        ,c.quarter_start
        ,c.quarter_end
        ,c.quarter_days
        ,c.quarter_day_number
        ,c.quarter_days_remaining
        ,c.season_number
        ,c.season_year
        ,c.season_description
        ,c.season_start
        ,c.season_end
        ,c.season_days
        ,c.season_day_number
        ,c.season_days_remaining
        ,c.year_number
        ,c.year_start
        ,c.year_end
        ,c.year_days
        ,c.year_day_number
        ,c.year_days_remaining
    from calendar_v c
), spooky_base as
(
    select
        c.calendar_date
        ,c.day_description
        ,c.is_friday
        ,c.days_to_friday
        ,c.is_monday
        ,c.days_to_monday
        ,c.days_to_halloween
        ,c.is_friday_thirteenth
        ,c.friday_thirteenth_date
        ,lead(
            c.friday_thirteenth_date ignore nulls, 1
            ) over (order by c.calendar_date) as next_friday_thirteenth
        ,c.iso_week_number
        ,c.iso_week_start
        ,c.iso_week_friday
        ,c.iso_week_end
        ,c.iso_week_day_number
        ,c.iso_week_days_remaining
        ,c.month_number
        ,c.month_description
        ,c.month_start
        ,c.month_end
        ,c.month_days
        ,c.month_day_number
        ,c.month_days_remaining
        ,c.quarter_number
        ,c.quarter_description
        ,c.quarter_start
        ,c.quarter_end
        ,c.quarter_days
        ,c.quarter_day_number
        ,c.quarter_days_remaining
        ,c.season_number
        ,c.season_year
        ,c.season_description
        ,c.season_start
        ,c.season_end
        ,c.season_days
        ,c.season_day_number
        ,c.season_days_remaining
        ,c.year_number
        ,c.year_start
        ,c.year_end
        ,c.year_days
        ,c.year_day_number
        ,c.year_days_remaining
    from base c
)
select
    c.calendar_date
    ,c.day_description
    ,c.is_friday
    ,c.days_to_friday
    ,c.is_monday
    ,c.days_to_monday
    ,c.days_to_halloween
    ,c.is_friday_thirteenth
    ,c.friday_thirteenth_date
    ,c.next_friday_thirteenth
    ,c.next_friday_thirteenth - c.calendar_date as days_to_friday_thirteenth
--    ,count(*) over (partition by c.next_friday_thirteenth order by c.calendar_date desc) as days_to_friday_thirteenth
    ,c.iso_week_number
    ,c.iso_week_start
    ,c.iso_week_friday
    ,c.iso_week_end
    ,c.iso_week_day_number
    ,c.iso_week_days_remaining
    ,c.month_number
    ,c.month_description
    ,c.month_start
    ,c.month_end
    ,c.month_days
    ,c.month_day_number
    ,c.month_days_remaining
    ,c.quarter_number
    ,c.quarter_description
    ,c.quarter_start
    ,c.quarter_end
    ,c.quarter_days
    ,c.quarter_day_number
    ,c.quarter_days_remaining
    ,c.season_number
    ,c.season_year
    ,c.season_description
    ,c.season_start
    ,c.season_end
    ,c.season_days
    ,c.season_day_number
    ,c.season_days_remaining
    ,c.year_number
    ,c.year_start
    ,c.year_end
    ,c.year_days
    ,c.year_day_number
    ,c.year_days_remaining
from spooky_base c
where c.calendar_date >= trunc(sysdate)
order by calendar_date;