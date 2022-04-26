create or replace PACKAGE BODY DATE_RANGE_PKG AS

function get_dates(p_from_date in date, p_to_date in date) return t_dates_t pipelined 
AS
  rc  sys_refcursor;
  tab_dates t_dates_t;
BEGIN
  
    open rc for with calendar (start_date, end_date ) as (
                        select trunc(p_from_date), trunc(p_to_date) from dual
                        union all
                        select start_date + 1, end_date
                        from   calendar
                        where  start_date + 1 <= end_date
                )
                select start_date as calendar_date
                from   calendar
                order by calendar_date;
                
    loop

      fetch rc bulk collect into tab_dates limit v_bulk_limit;
      exit when tab_dates.count = 0;
      for i in 1..tab_dates.count loop
        pipe row(tab_dates(i));
      end loop;
  
    end loop;

    close rc;
    RETURN;
END get_dates;

function get_iso_dates(p_from_date in date, p_to_date in date) return t_iso_dates_t pipelined
is
  rc  sys_refcursor;
  tab_dates t_iso_dates_t;
begin

  open rc for with calendar (start_date, end_date ) as (
                        select trunc(p_from_date), trunc(p_to_date) from dual
                        union all
                        select start_date + 1, end_date
                        from   calendar
                        where  start_date + 1 <= end_date
                ), iso_info as (
                select start_date as calendar_date, 
                to_char(start_date,'IW') as iso_week_number,
                trunc(start_date, 'IW') as iso_week_start,
                trunc(start_date, 'IW') + interval '6' day as iso_week_end,
                trunc(start_date, 'IY') as iso_year_start,
                to_char(start_date,'IY') as iso_year_number
                from   calendar)
                select 
                calendar_date, 
                iso_week_number, 
                iso_week_start, 
                iso_week_end,
                calendar_date - iso_week_start + 1 as iso_weekday_number,
                iso_week_end - calendar_date as iso_weekdays_left,
                iso_year_start,
                iso_year_number
                from iso_info
                order by calendar_date;

  loop

    fetch rc bulk collect into tab_dates limit v_bulk_limit;
    exit when tab_dates.count = 0;
    for i in 1..tab_dates.count loop
      pipe row(tab_dates(i));
    end loop;

  end loop;

  close rc;
  return;
end get_iso_dates;

function get_month_dates(p_from_date in date, p_to_date in date) return t_month_dates_t pipelined
is
  rc sys_refcursor;
  tab_dates t_month_dates_t;
begin

  open rc for with calendar (start_date, end_date ) as (
                        select trunc(p_from_date), trunc(p_to_date) from dual
                        union all
                        select start_date + 1, end_date
                        from   calendar
                        where  start_date + 1 <= end_date
                ), month_info as (
                select start_date as calendar_date, 
                trunc(start_date,'Month') as month_start,
                trunc(start_date, 'Month') + interval '1' month - interval '1' day as month_end
                from   calendar)
                select
                calendar_date,
                month_start,
                month_end,
                month_end - month_start + 1 as month_days,
                calendar_date - month_start + 1 as month_day_number,
                month_end - calendar_date as month_days_left
                from month_info
                order by calendar_date;

  loop
    fetch rc bulk collect into tab_dates limit v_bulk_limit;
    exit when tab_dates.count = 0;
    for i in 1..tab_dates.count loop
      pipe row(tab_dates(i));
    end loop;
    
  end loop;

  close rc;
  return;

end get_month_dates;

function get_quarter_dates(p_from_date in date, p_to_date in date) return t_quarter_dates_t pipelined
is
  rc sys_refcursor;
  tab_dates t_quarter_dates_t;
begin

  open rc for with calendar (start_date, end_date ) as (
                        select trunc(p_from_date), trunc(p_to_date) from dual
                        union all
                        select start_date + 1, end_date
                        from   calendar
                        where  start_date + 1 <= end_date
                ), quarter_info as (
                select start_date as calendar_date, 
                trunc(start_date,'Month') as month_start,
                trunc(start_date, 'Month') + interval '1' month - interval '1' day as month_end,
                trunc(start_date,'Q') as quarter_start,
                trunc(start_date, 'Q') + interval '3' month - interval '1' day as quarter_end
                from   calendar)
                select
                calendar_date,
                month_start,
                month_end,
                month_end - month_start + 1 as month_days,
                calendar_date - month_start + 1 as month_day_number,
                month_end - calendar_date as month_days_left,
                quarter_start,
                quarter_end,
                quarter_end - quarter_start + 1 as quarter_days,
                calendar_date - quarter_start + 1 as quarter_day_number,
                quarter_end - calendar_date as quarter_days_left
                from quarter_info
                order by calendar_date;



  loop
    fetch rc bulk collect into tab_dates limit v_bulk_limit;
    exit when tab_dates.count = 0;
    for i in 1..tab_dates.count loop
      pipe row(tab_dates(i));
    end loop;
    
  end loop;

  close rc;
  return;



end get_quarter_dates;


function get_year_dates(p_from_date in date, p_to_date in date) return t_year_dates_t pipelined
is
  rc sys_refcursor;
  tab_dates t_year_dates_t;
begin


  open rc for with calendar (start_date, end_date ) as (
                        select trunc(p_from_date), trunc(p_to_date) from dual
                        union all
                        select start_date + 1, end_date
                        from   calendar
                        where  start_date + 1 <= end_date
                ), year_info as (
                select start_date as calendar_date, 
                trunc(start_date,'Month') as month_start,
                trunc(start_date, 'Month') + interval '1' month - interval '1' day as month_end,
                trunc(start_date,'Year') as year_start,
                trunc(start_date, 'Year') + interval '1' year - interval '1' day as year_end
                from   calendar)
                select
                calendar_date,
                month_start,
                month_end,
                month_end - month_start + 1 as month_days,
                calendar_date - month_start + 1 as month_day_number,
                month_end - calendar_date as month_days_left,
                year_start,
                year_end,
                year_end - year_start + 1 as year_days,
                calendar_date - year_start + 1 as year_day_number,
                year_end - calendar_date as year_days_left
                from year_info
                order by calendar_date;



  loop
    fetch rc bulk collect into tab_dates limit v_bulk_limit;
    exit when tab_dates.count = 0;
    for i in 1..tab_dates.count loop
      pipe row(tab_dates(i));
    end loop;
    
  end loop;

  close rc;
  return;


end get_year_dates;

function get_century_dates(p_from_date in date, p_to_date in date) return t_century_dates_t pipelined
is
  rc sys_refcursor;
  tab_dates t_century_dates_t;
begin


  open rc for with calendar (start_date, end_date ) as (
                        select trunc(p_from_date), trunc(p_to_date) from dual
                        union all
                        select start_date + 1, end_date
                        from   calendar
                        where  start_date + 1 <= end_date
                ), century_info as (
                select start_date as calendar_date, 
                trunc(start_date,'CC') as century_start,
                trunc(start_date, 'CC') + interval '100' year(4) - interval '1' day as century_end,
                to_char(start_date,'CC') as century_number,
                to_char(start_date, 'Ccthsp') as century_description
                from   calendar)
                select
                calendar_date,
                century_start,
                century_end,
                century_number,
                century_description,
                century_end - century_start + 1 as century_days,
                calendar_date - century_start + 1 as century_day_number,
                century_end - calendar_date as century_days_left
                from century_info
                order by calendar_date;


  loop
    fetch rc bulk collect into tab_dates limit v_bulk_limit;
    exit when tab_dates.count = 0;
    for i in 1..tab_dates.count loop
      pipe row(tab_dates(i));
    end loop;
    
  end loop;

  close rc;
  return;


end get_century_dates;


END DATE_RANGE_PKG;