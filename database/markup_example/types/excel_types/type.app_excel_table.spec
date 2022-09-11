create or replace type app#excel_table under app#ml
(
    -- Author  : Anthony Harper
    -- Created : 12/20/2009
    -- Updated : 09/11/2022
    -- Purpose : excel data table

    table_heading app#excel_row,    
    table_rows    app#excel_rows,
    table_title   varchar2(4000),
    table_xml     clob,
    
    constructor function app#excel_table 
    return self as result,
    
    constructor function app#excel_table
    (
        p_title in varchar2
    ) return self as result,
    
    member procedure set_heading
    (
        p_heading in app#excel_row
    ),
    
    member procedure add_row
    (
        p_table_row in app#excel_row
    ),
        
    member procedure initialize_table,
    
    member procedure to_xml
    
);