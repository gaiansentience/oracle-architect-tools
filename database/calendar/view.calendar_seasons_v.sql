create or replace view calendar_seasons_v as
with base as
(
    select
        'SEASONAL CALENDAR' as calendar_type
        ,c.calendar_date
        ,c.day_description as weekday
        ,c.season
        ,c.season_number
        ,c.season_year as year
        ,c.season_description as description
        ,c.season_start as start_date
        ,c.season_end as end_date
        ,c.season_days as days
        ,c.season_day_number as day_number
        ,c.season_days_remaining as days_remaining
        ,case when c.calendar_date = c.season_start then c.season_start end as season_start_date
    from calendar_v c
    where c.calendar_date >= trunc(localtimestamp)
), seasonal_base as 
(
    select
        c.*
        ,lead(case when c.season_number = 1 then c.season_start_date end, 1) ignore nulls over (order by c.calendar_date) as spring_start_date
        ,lead(case when c.season_number = 2 then c.season_start_date end, 1) ignore nulls over (order by c.calendar_date) as summer_start_date
        ,lead(case when c.season_number = 3 then c.season_start_date end, 1) ignore nulls over (order by c.calendar_date) as fall_start_date
        ,lead(case when c.season_number = 4 then c.season_start_date end, 1) ignore nulls over (order by c.calendar_date) as winter_start_date
    from base c
)
select 
    c.calendar_type
    , c.calendar_date
    , c.weekday
    , c.season
    , c.year
    , c.description
    , c.start_date
    , c.end_date
    , c.days
    , c.day_number
    , c.days_remaining
    , c.spring_start_date - c.calendar_date as days_to_spring
    , c.spring_start_date
    , c.summer_start_date - c.calendar_date as days_to_summer
    , c.summer_start_date
    , c.fall_start_date - c.calendar_date as days_to_fall
    , c.fall_start_date
    , c.winter_start_date - c.calendar_date as days_to_winter
    , c.winter_start_date
from seasonal_base c
order by c.calendar_date;