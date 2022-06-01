set serveroutput on;
declare
n number := 13;

begin

    dbms_output.put_line(fibonacci_series(n));
--0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
end;