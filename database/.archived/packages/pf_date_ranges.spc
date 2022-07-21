create or replace PACKAGE PF_DATE_RANGES 
authid current_user
AS 

v_bulk_limit number := 100;

type r_date_t is record(calendar_date date);
type t_dates_t is table of r_date_t;

type r_iso_date_t is record(
                       calendar_date date, 
                       iso_week_number number, 
                       iso_week_start date, 
                       iso_week_end date,
                       iso_weekday_number number,
                       iso_weekdays_left number,
                       iso_year_start date,
                       iso_year_number number);
                       
type t_iso_dates_t is table of r_iso_date_t;

type r_month_date_t is record(
                       calendar_date date, 
                       month_start date, 
                       month_end date,
                       month_days number,
                       month_day_number number,
                       month_days_left number);
                       
type t_month_dates_t is table of r_month_date_t;                       

type r_quarter_date_t is record(
                       calendar_date date, 
                       month_start date, 
                       month_end date,
                       month_days number,
                       month_day_number number,
                       month_days_left number,
                       quarter_start date,
                       quarter_end date,
                       quarter_days number,
                       quarter_day_number number,
                       quarter_days_left number);

type t_quarter_dates_t is table of r_quarter_date_t;


type r_year_date_t is record(
                       calendar_date date, 
                       month_start date, 
                       month_end date,
                       month_days number,
                       month_day_number number,
                       month_days_left number,
                       year_start date,
                       year_end date,
                       year_days number,
                       year_day_number number,
                       year_days_left number);

type t_year_dates_t is table of r_year_date_t;

type r_century_date_t is record(
                       calendar_date date, 
                       century_start date, 
                       century_end date,
                       century_number number,
                       century_description varchar2(50),
                       century_days number,
                       century_day_number number,
                       century_days_left number);

type t_century_dates_t is table of r_century_date_t;


function get_dates(p_from_date in date, p_to_date in date) return t_dates_t pipelined;

function get_iso_dates(p_from_date in date, p_to_date in date) return t_iso_dates_t pipelined;

function get_month_dates(p_from_date in date, p_to_date in date) return t_month_dates_t pipelined;

function get_quarter_dates(p_from_date in date, p_to_date in date) return t_quarter_dates_t pipelined;

function get_year_dates(p_from_date in date, p_to_date in date) return t_year_dates_t pipelined;

function get_century_dates(p_from_date in date, p_to_date in date) return t_century_dates_t pipelined;

END PF_DATE_RANGES;