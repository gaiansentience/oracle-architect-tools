create or replace package body test_dates is

  procedure get_range
  (
    p_from in varchar2,
    p_to   in varchar2,
    p_out  out test_dates.r

  ) is
    v_from date;
    v_to   date;
    v_fmt  varchar2(100) := 'mm/dd/yyyy';
  begin

    v_from := trunc(to_date(p_from,
                            v_fmt));
    v_to   := trunc(to_date(p_to,
                            v_fmt));

    open p_out for
      select y.*
      from   (select x.numval,
                     sysdate + x.numval - 30 calendar_days
              from   (select rownum numval
                      from   user_objects) x) y
      where  trunc(y.calendar_days) between v_from and v_to;

  end get_range;

  procedure test_it(p_out out test_dates.r) is
    v_from        date := sysdate - 10;
    v_to          date := sysdate + 3;
    v_from_string varchar2(100);
    v_to_string   varchar2(100);
    v_fmt         varchar2(100) := 'mm/dd/yyyy';
  begin

    v_from_string := to_char(v_from,
                             v_fmt);
    v_to_string   := to_char(v_to,
                             v_fmt);

    get_range(v_from_string,
              v_to_string,
              p_out);

  end test_it;

begin
  -- Initialization
  null;
end test_dates;
/

