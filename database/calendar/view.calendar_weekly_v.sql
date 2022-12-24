create or replace view calendar_weekly_v as
with base as
(
    select
        'WEEKLY CALENDAR' as calendar_type
        ,c.calendar_date
        ,c.day_description
        ,case when trunc(c.calendar_date) = trunc(localtimestamp) then 0
            when trunc(c.calendar_date) < trunc(localtimestamp) then -1
            ELSE 1
        end as is_today
        ,case c.iso_week_day_number when 1 then c.calendar_date end as monday_date
        ,case c.iso_week_day_number when 2 then c.calendar_date end as tuesday_date
        ,case c.iso_week_day_number when 3 then c.calendar_date end as wednesday_date
        ,case c.iso_week_day_number when 4 then c.calendar_date end as thursday_date
        ,case c.iso_week_day_number when 5 then c.calendar_date end as friday_date        
        ,case c.iso_week_day_number when 6 then c.calendar_date end as saturday_date        
        ,case c.iso_week_day_number when 7 then c.calendar_date end as sunday_date        
    from calendar_v c
    where c.calendar_date >= trunc(cast(trunc(localtimestamp) as date),'IW')
)
select 
    c.calendar_type
    , c.calendar_date
    , c.day_description
    , c.is_today
    , lead(c.monday_date, 1) ignore nulls over (order by c.calendar_date) as next_monday
    , lead(c.tuesday_date, 1) ignore nulls over (order by c.calendar_date) as next_tuesday
    , lead(c.wednesday_date, 1) ignore nulls over (order by c.calendar_date) as next_wednesday
    , lead(c.thursday_date, 1) ignore nulls over (order by c.calendar_date) as next_thurdsay
    , lead(c.friday_date, 1) ignore nulls over (order by c.calendar_date) as next_friday
    , lead(c.saturday_date, 1) ignore nulls over (order by c.calendar_date) as next_saturday
    , lead(c.sunday_date, 1) ignore nulls over (order by c.calendar_date) as next_sunday
from base c
order by calendar_date;