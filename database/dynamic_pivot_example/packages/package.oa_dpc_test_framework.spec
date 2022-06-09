create or replace package oa_dpc_test_framework
authid current_user
as
    g_dataset_empty   constant varchar2(100) := 'empty dataset';
    g_dataset_minimal constant varchar2(100) := 'minimal dataset';
    g_dataset_small   constant varchar2(100) := 'small dataset';
    g_dataset_large   constant varchar2(100) := 'large dataset';
    g_dataset_full    constant varchar2(100) := 'full dataset';


    procedure verify_codebase(p_required_codebase in varchar2);
    
    procedure set_tests_to_archived;    
    
    procedure timing_start;
     
    procedure timing_stop;
    
    function timing_result return varchar2;

    procedure test_results_create_table;
    
    procedure test_results_drop_table;

    procedure test_results_start_record
    (
        p_test_name in varchar2, 
        p_test_set in varchar2 default null, 
        p_test_group in varchar2 default null
    );

    procedure test_results_stop_record
    (
        p_test_summary in varchar2 default 'completed'
    );

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
    
    function get_column_count
    (
        p_source in varchar2
    ) return number;
    
    function get_columns
    (
        p_source in varchar2
    ) return varchar2;
    
    procedure add_columns_to_setup
    (
        p_source in varchar2,
        p_key in varchar2 default 'columns'
    );
    
    procedure add_columns_to_results
    (
        p_source in varchar2,
        p_key in varchar2 default 'columns'
    );

        
    function get_row_count
    (
        p_source in varchar2,
        p_where in varchar2 default null        
    ) return number;
    
    procedure add_rowcount_to_setup
    (
        p_source in varchar2,
        p_where in varchar2 default null,
        p_key in varchar2 default 'rowSource'
    );
    
    procedure add_rowcount_to_results
    (
        p_source in varchar2,
        p_where in varchar2 default null,
        p_key in varchar2 default 'rowOutput'
    );

    procedure test_rowcount_timing
    (
        p_source in varchar2, 
        p_set in varchar2 default null,
        p_group in varchar2 default null,
        p_comment in varchar2 default null
    );

end oa_dpc_test_framework;