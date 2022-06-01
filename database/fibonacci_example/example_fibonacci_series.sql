create or replace function fibonacci(p_n in number) return number
is
l_result number;
begin
    case
        when p_n = 0 then
            l_result := 0;
        when p_n = 1 then
            l_result := 1;
    else
        l_result := fibonacci(p_n - 1) + fibonacci(p_n - 2);
    end case;
    
    return l_result;

exception 
    when others then
        raise;
end fibonacci;
/

create or replace function fibonacci_series(p_first_n_numbers in number) return varchar2
is
l_series varchar2(1000);
l_fibonacci_value number;
l_start number;
begin

l_start := p_first_n_numbers - 1;

loop 
    l_fibonacci_value := fibonacci(l_start);
    l_series := l_fibonacci_value || ', ' || l_series;
--    dbms_output.put_line(l_f);
    l_start := l_start - 1;
    exit when l_start < 0;
end loop;
l_series := 'First ' || p_first_n_numbers || ' fibonacci numbers are:  ' || rtrim(l_series,', ');
return l_series;
    
--0, 1, 1, 2, 3, 5, 8, 
end fibonacci_series;
/