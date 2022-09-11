--test date range pipelined functions

select * 
from pf_date_ranges.get_dates(sysdate -5, sysdate + 5);

select * 
from pf_date_ranges.get_iso_dates(sysdate -10, sysdate + 50);

select * 
from pf_date_ranges.get_month_dates(sysdate - 90, sysdate + 90);

select * 
from pf_date_ranges.get_quarter_dates(sysdate - interval '1' year, sysdate + interval '1' year);


select * 
from pf_date_ranges.get_year_dates(sysdate + interval '1' year, sysdate + interval '5' year);

select * 
from pf_date_ranges.get_century_dates(sysdate + interval '100' year(3), sysdate + interval '300' year(3));