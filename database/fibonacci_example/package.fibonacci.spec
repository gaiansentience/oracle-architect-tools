create or replace package fibonacci
authid current_user 
is

    function get_number_nc(p_n in number)
        return number;
        
    function get_number(p_n in number)
        return number
        result_cache;
    
    function get_series(
        p_n_numbers in number,
        p_use_cache in boolean default true
        ) return varchar2;
        
    procedure print_series(
        p_n_numbers in number,
        p_print_series in boolean default true,
        p_print_items in boolean default false,
        p_use_cache in boolean default true
        );    
        
    procedure run_test(
        p_single number default 25,
        p_series_small number default 5,
        p_series_large number default 30,
        p_result_cached boolean default true
    );
    
    procedure run_cache_tests;
    
end fibonacci;
/

create or replace package body fibonacci
is

    function get_number_nc(
        p_n in number
    ) return number
    is
        l_result number;
    begin
        if p_n > 35 then
            raise_application_error(-20100, 'Fibonacci function should not be called for numbers > 35 without using result cache');
        end if;
        if p_n < 0 then
           raise_application_error(-20100, 'Fibonacci function is not defined for negative numbers');
        end if;
        
        case
            when p_n = 0 then
                l_result := 0;
            when p_n = 1 then
                l_result := 1;
            else
                l_result := get_number_nc(p_n - 1) + get_number_nc(p_n - 2);
        end case;
        
        return l_result;
    
    exception 
        when others then
            raise;
    end get_number_nc;

    function get_number(
        p_n in number
        ) return number
        result_cache
    is
        l_result number;
    begin
        if p_n > 300 then
            raise_application_error(-20100, 'Fibonacci function should not be called for numbers > 300 even using result cache');
        end if;
    
        if p_n < 0 then
           raise_application_error(-20100, 'Fibonacci function is not defined for negative numbers');
        end if;
        
        case
            when p_n = 0 then
                l_result := 0;
            when p_n = 1 then
                l_result := 1;
            else
                l_result := get_number(p_n - 1) + get_number(p_n - 2);
        end case;
        
        return l_result;
    
    exception 
        when others then
            raise;
    end get_number;



    procedure print_series(
        p_n_numbers in number,
        p_print_series in boolean default true,
        p_print_items in boolean default false,
        p_use_cache in boolean default true
        )
    is
        l_series varchar2(32000);
        l_fibonacci_value number;
    begin
    
        for i in 0..p_n_numbers loop
            if p_use_cache then
                l_fibonacci_value := get_number(i);
            else
                l_fibonacci_value := get_number_nc(i);
            end if;
            if p_print_items then
                dbms_output.put_line('F('||i||')='||l_fibonacci_value);
            end if;
            if p_print_series then
                l_series := l_series || ', ' || l_fibonacci_value;
            end if;
        end loop;
    
        if p_print_series then
            l_series := 'Fibonacci Series F(0)...F(' || p_n_numbers || ') is:  ' || ltrim(l_series,', ');
            dbms_output.put_line(l_series);
        end if;    
        --0, 1, 1, 2, 3, 5, 8, 
    end print_series;

    function get_series(
        p_n_numbers in number,
        p_use_cache in boolean default true
        ) return varchar2
    is
        l_series varchar2(32000);
        l_fibonacci_value number;
    begin
    
        for i in 0..p_n_numbers loop
            if p_use_cache then
                l_fibonacci_value := get_number(i);
            else
                l_fibonacci_value := get_number_nc(i);
            end if;
            l_series := l_series || ', ' || l_fibonacci_value;
        end loop;
    
        l_series := 'Fibonacci Series F(0)...F(' || p_n_numbers || ') is:  ' || ltrim(l_series,', ');
        return l_series;
        --0, 1, 1, 2, 3, 5, 8, 
    end get_series;

    procedure run_test(
        p_single number default 25,
        p_series_small number default 5,
        p_series_large number default 30,
        p_result_cached boolean default true
    )
    is
        l_start timestamp := localtimestamp;
        l_duration dsinterval_unconstrained;
    begin
    
        if p_result_cached then
            dbms_output.put_line('Fibonacci F(' || p_single || ') = ' || fibonacci.get_number(p_single));
        else
            dbms_output.put_line('Fibonacci F(' || p_single || ') = ' || fibonacci.get_number_nc(p_single));
        end if;
        dbms_output.put_line(fibonacci.get_series(p_series_small, p_use_cache => p_result_cached));
        
        fibonacci.print_series(p_series_small, p_print_series => true, p_print_items => false, p_use_cache => p_result_cached);
        fibonacci.print_series(p_series_large, p_print_series => false, p_print_items => true, p_use_cache => p_result_cached);
        --0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, ...
        l_duration := localtimestamp - l_start;
        dbms_output.put_line(to_char(l_duration) || ' total duration' || case when p_result_cached then ' using result cache' end);
    exception
        when others then
            dbms_output.put_line(sqlerrm);
    end run_test;

    procedure run_cache_tests
    is
    begin
        run_test(p_result_cached => false);
        run_test(p_result_cached => true);
    end run_cache_tests;

end fibonacci;
/