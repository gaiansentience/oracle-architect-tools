create or replace package test_dates is

  -- Author  : UNCLE ANTHONY
  -- Created : 12/31/2009 12:06:58 AM
  -- Purpose : testing date conversion

  type r is ref cursor;

  procedure get_range
  (
    p_from in varchar2,
    p_to   in varchar2,
    p_out  out test_dates.r

  );

  procedure test_it(p_out out test_dates.r);

end test_dates;
/

