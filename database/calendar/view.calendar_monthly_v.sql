create or replace view calendar_monthly_v as
with base as
(
    select
        'MONTHLY CALENDAR' as calendar_type
        ,c.calendar_date
        ,trunc(c.calendar_date,'Month') as calendar_month
        ,c.day_description as weekday
            ,case when trunc(c.calendar_date) = trunc(localtimestamp) then 0
                when trunc(c.calendar_date) < trunc(localtimestamp) then -1
                else 1
            end as is_today    
        ,c.month_number as month
        ,c.year_number as year
        ,c.month_description as description
        ,c.month_start as start_date
        ,c.month_end as end_date
        ,c.month_days as days
        ,c.month_day_number as day_number
        ,c.month_days_remaining as days_remaining
        ,case when c.iso_week_day_number = 1 then c.calendar_date end as monday
        ,case when c.iso_week_day_number = 2 then c.calendar_date end as tuesday
        ,case when c.iso_week_day_number = 3 then c.calendar_date end as wednesday
        ,case when c.iso_week_day_number = 4 then c.calendar_date end as thursday
        ,case when c.iso_week_day_number = 5 then c.calendar_date end as friday
        ,case when c.iso_week_day_number = 6 then c.calendar_date end as saturday
        ,case when c.iso_week_day_number = 7 then c.calendar_date end as sunday
    from calendar_v c
    where c.calendar_date >= trunc(cast(trunc(localtimestamp) as date),'Month')
), weekdays_base as
(
    select
        b.*
        , min(monday) over (partition by b.calendar_month) as first_monday
        , max(monday) over (partition by b.calendar_month) as last_monday
        , min(tuesday) over (partition by b.calendar_month) as first_tuesday
        , max(tuesday) over (partition by b.calendar_month) as last_tuesday
        , min(wednesday) over (partition by b.calendar_month) as first_wednesday
        , max(wednesday) over (partition by b.calendar_month) as last_wednesday
        , min(thursday) over (partition by b.calendar_month) as first_thursday
        , max(thursday) over (partition by b.calendar_month) as last_thursday
        , min(friday) over (partition by b.calendar_month) as first_friday
        , max(friday) over (partition by b.calendar_month) as last_friday
        , min(saturday) over (partition by b.calendar_month) as first_saturday
        , max(saturday) over (partition by b.calendar_month) as last_saturday
        , min(sunday) over (partition by b.calendar_month) as first_sunday
        , max(sunday) over (partition by b.calendar_month) as last_sunday
        , count(case when monday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_monday
        , count(case when tuesday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_tuesday
        , count(case when wednesday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_wednesday
        , count(case when thursday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_thursday
        , count(case when friday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_friday
        , count(case when saturday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_saturday
        , count(case when sunday = calendar_date then calendar_date end) 
            over (partition by b.calendar_month order by b.calendar_date
            range between unbounded preceding and current row) as count_sunday
    from base b
), weekdays_counted as
(
    select
        b.*
        ,max(case when b.count_monday = 2 and monday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_monday
        ,max(case when b.count_monday = 3 and monday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_monday
        ,max(case when b.count_tuesday = 2 and tuesday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_tuesday
        ,max(case when b.count_tuesday = 3 and tuesday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_tuesday
        ,max(case when b.count_wednesday = 2 and wednesday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_wednesday
        ,max(case when b.count_wednesday = 3 and wednesday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_wednesday
        ,max(case when b.count_thursday = 2 and thursday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_thursday
        ,max(case when b.count_thursday = 3 and thursday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_thursday
        ,max(case when b.count_friday = 2 and friday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_friday
        ,max(case when b.count_friday = 3 and friday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_friday
        ,max(case when b.count_saturday = 2 and saturday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_saturday
        ,max(case when b.count_saturday = 3 and saturday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_saturday
        ,max(case when b.count_sunday = 2 and sunday is not null then b.calendar_date end) over (partition by b.calendar_month) as second_sunday
        ,max(case when b.count_sunday = 3 and sunday is not null then b.calendar_date end) over (partition by b.calendar_month) as third_sunday
    from weekdays_base b
), day_type_base as
(
    select 
        b.*
        ,case
            when b.calendar_date = b.first_monday then 'first_monday'
            when b.calendar_date = b.second_monday then 'second_monday'
            when b.calendar_date = b.third_monday then 'third_monday'
            when b.calendar_date = b.last_monday then 'last_monday'
            when b.calendar_date = b.first_tuesday then 'first_tuesday'
            when b.calendar_date = b.second_tuesday then 'second_tuesday'
            when b.calendar_date = b.third_tuesday then 'third_tuesday'
            when b.calendar_date = b.last_tuesday then 'last_tuesday'
            when b.calendar_date = b.first_wednesday then 'first_wednesday'
            when b.calendar_date = b.second_wednesday then 'second_wednesday'
            when b.calendar_date = b.third_wednesday then 'third_wednesday'
            when b.calendar_date = b.last_wednesday then 'last_wednesday'
            when b.calendar_date = b.first_thursday then 'first_thursday'
            when b.calendar_date = b.second_thursday then 'second_thursday'
            when b.calendar_date = b.third_thursday then 'third_thursday'
            when b.calendar_date = b.last_thursday then 'last_thursday'
            when b.calendar_date = b.first_friday then 'first_friday'
            when b.calendar_date = b.second_friday then 'second_friday'
            when b.calendar_date = b.third_friday then 'third_friday'
            when b.calendar_date = b.last_friday then 'last_friday'
            when b.calendar_date = b.first_saturday then 'first_saturday'
            when b.calendar_date = b.second_saturday then 'second_saturday'
            when b.calendar_date = b.third_saturday then 'third_saturday'
            when b.calendar_date = b.last_saturday then 'last_saturday'
            when b.calendar_date = b.first_sunday then 'first_sunday'
            when b.calendar_date = b.second_sunday then 'second_sunday'
            when b.calendar_date = b.third_sunday then 'third_sunday'
            when b.calendar_date = b.last_sunday then 'last_sunday'
        end as day_type
    from weekdays_counted b
)
select
    b.calendar_type
    ,b.calendar_date
    ,b.weekday
    ,b.is_today
    ,b.month
    ,b.year
    ,b.description
    ,b.end_date
    ,b.days
    ,b.day_number
    ,b.days_remaining
    ,initcap(replace(b.day_type,'_',' ')) as day_type
from day_type_base b
order by b.calendar_date;