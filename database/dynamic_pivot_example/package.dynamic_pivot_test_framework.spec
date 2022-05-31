create or replace package dynamic_pivot_test_framework
authid current_user
as

    procedure testing_set_banner
    (
        p_heading in varchar2 default 'UNIT TEST SET',
        p_start in boolean default true
    );

    procedure testing_banner
    (
        p_heading in varchar2 default 'UNIT TEST',
        p_start in boolean default true
    );
    
    procedure testing_headline
    (
        p_headline in varchar2
    );
    
    procedure print_comment
    (
        p_comment in varchar2,
        p_indent in boolean default false
    );

    procedure start_timing;
    
    function stop_timing return varchar2;
    
    function get_column_count
    (
        p_source in varchar2
    ) return number;
    
    procedure print_columns
    (
        p_source in varchar2
    );
    
    function get_row_count
    (
        p_source in varchar2,
        p_where in varchar2 default null        
    ) return number;
    
    procedure test_option_with_rowcount_timing
    (
        p_source in varchar2, 
        p_comment in varchar2 default null
    );
    
end dynamic_pivot_test_framework;
