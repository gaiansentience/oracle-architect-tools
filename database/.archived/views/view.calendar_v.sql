create or replace view calendar_v as 
with date_limits as
(
    select 
        to_date('1900-01-01','yyyy-mm-dd') as calendar_start_date
        ,trunc(sysdate,'Year') + interval '11' Year - interval '1' Day as calendar_end_date
    from dual
), date_range_base as
(
    select 
        dl.calendar_start_date
        ,dl.calendar_end_date
        ,dl.calendar_start_date + level - 1 as calendar_date
    from dual cross join date_limits dl
    connect by level <= ((dl.calendar_end_date - dl.calendar_start_date) + 1)
), years_base as
(
    select
        b.calendar_start_date
        ,b.calendar_end_date
        ,b.calendar_date
        ,extract(year from b.calendar_date) as year_number
        ,trunc(b.calendar_date,'Year') as year_start
        ,extract(month from b.calendar_date) as month_number
        ,to_number(to_char(b.calendar_date,'Q')) as quarter_number
        ,trunc(b.calendar_date,'Q') as quarter_start
    from date_range_base b
), seasons_base as
(
    select
        b.calendar_start_date
        ,b.calendar_end_date
        ,extract(year from b.calendar_start_date) as min_year_in_calendar
        ,extract(year from b.calendar_end_date) as max_year_in_calendar
        ,b.calendar_date
        ,b.year_number
        ,b.year_start
        ,b.year_start + interval '1' year - interval '1' day as year_end
        ,b.month_number
        ,trunc(b.calendar_date, 'Month') as month_start
        ,trunc(b.calendar_date, 'Month') + interval '1' month - interval '1' day as month_end
        ,b.quarter_number
        ,b.quarter_start
        ,b.quarter_start + interval '3' month - interval '1' day as quarter_end
        ,case 
            when b.month_number in (12,1,2) then 4
            when b.month_number in (3,4,5) then 1
            when b.month_number in (6,7,8) then 2
            when b.month_number in (9,10,11) then 3
        end as season_number
    from years_base b
), year_month_base as
(
    select
        b.calendar_start_date
        ,b.calendar_end_date
        ,b.max_year_in_calendar
        ,b.min_year_in_calendar
        ,b.calendar_date
        ,b.year_number
        ,b.year_start
        ,b.year_end
        ,b.year_end - b.year_start + 1 as year_days
        ,b.month_number
        ,b.month_start
        ,b.month_end
        ,b.month_end - b.month_start + 1 as month_days
        ,b.quarter_number
        ,b.quarter_start
        ,b.quarter_end
        ,b.quarter_end - b.quarter_start + 1 as quarter_days
        ,b.season_number
        ,case b.season_number
            when 4 then 'Winter'
            when 1 then 'Spring'
            when 2 then 'Summer'
            when 3 then 'Fall'
        end as season
        ,case 
            when b.season_number = 4 and b.month_number = 12 then to_char(b.year_number) || '-' || to_char(b.year_number + 1)
            when b.season_number = 4 and b.month_number in (1,2) then to_char(b.year_number - 1) || '-' || to_char(b.year_number)
            else to_char(b.year_number)
        end as season_year
    from seasons_base b
), year_months as
(
    select
        b.year_number
        ,b.year_start
        ,b.year_end
        ,b.year_days
        ,b.season_number
        ,b.season
        ,b.season_year
        --fix winter season start date at beginning of calendar for first 2 months
        ,case
            when b.month_number in (1,2) and b.year_number = b.min_year_in_calendar then b.year_start - interval '1' month
            else min(b.month_start) over (partition by b.season_year, b.season_number)
        end as season_start
        ,b.quarter_number
        ,b.quarter_start
        ,b.quarter_end
        ,b.quarter_days
        ,b.month_number
        ,b.month_start
        ,b.month_end
        ,b.month_days
        ,to_number(to_char(b.calendar_date,'IW')) as iso_week_number
        ,trunc(b.calendar_date, 'IW') as iso_week_start
        ,b.calendar_date
    from year_month_base b
), calendar_base as
(
    select
        b.year_number
        ,b.year_start
        ,b.year_end
        ,b.year_days
        ,b.season_number
        ,b.season
        ,b.season_year
        ,b.season || ' ' || b.season_year as season_description
        ,b.season_start
        ,b.season_start + interval '3' month - interval '1' day as season_end
        ,b.quarter_number
        ,b.quarter_start
        ,b.quarter_end
        ,b.quarter_days
        ,b.month_number
        ,b.month_start
        ,b.month_end
        ,b.month_days
        ,extract(day from b.calendar_date) as month_day_number
        ,b.iso_week_number
        ,b.iso_week_start
        ,b.iso_week_start + interval '4' day iso_week_friday
        ,b.iso_week_start + interval '6' day iso_week_end
        ,b.calendar_date
    from year_months b
)
select
    b.calendar_date
    ,to_char(b.calendar_date,'fmDay') day_description
    ,b.iso_week_number
    ,b.iso_week_start
    ,b.iso_week_friday
    ,b.iso_week_end
    ,b.calendar_date - b.iso_week_start + 1 as iso_week_day_number
    ,b.iso_week_end - b.calendar_date + 1 as iso_week_days_remaining
    ,b.month_number
    ,to_char(b.calendar_date,'fmMonth YYYY') as month_description
    ,b.month_start
    ,b.month_end
    ,b.month_days
    ,b.month_day_number
    ,b.month_end - b.calendar_date + 1 as month_days_remaining
    ,b.quarter_number
    ,b.year_number || '-Q' || to_char(b.quarter_number, 'fm09') as quarter_description
    ,b.quarter_start
    ,b.quarter_end
    ,b.quarter_days
    ,b.calendar_date - b.quarter_start + 1 as quarter_day_number
    ,b.quarter_end - b.calendar_date + 1 as quarter_days_remaining
    ,b.season_number
    ,b.season
    ,b.season_year
    ,b.season_description
    ,b.season_start
    ,b.season_end
    ,b.season_end - b.season_start + 1 as season_days
    ,b.calendar_date - b.season_start + 1 as season_day_number
    ,b.season_end - b.calendar_date + 1 as season_days_remaining
    ,b.year_number
    ,b.year_start
    ,b.year_end
    ,b.year_days
    ,b.calendar_date - b.year_start + 1 as year_day_number
    ,b.year_end - b.calendar_date + 1 as year_days_remaining    
from calendar_base b;