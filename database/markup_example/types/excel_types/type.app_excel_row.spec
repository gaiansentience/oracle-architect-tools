create or replace type app#excel_row under app#ml
(
    -- Author  : Anthony Harper
    -- Created : 12/20/2009
    -- Updated : 09/11/2022
    -- Purpose : Formatting object representing an exel row
    
    row_cells app#excel_cells,
    row_xml   clob,
    
    constructor function app#excel_row 
    return self as result,
    
    member procedure initialize_row,
    
    member procedure add_data_cell
    (
        p_data_cell in app#excel_cell
    ),
    
    member procedure add_data_cell
    (
        p_cell_value           in varchar2,
        p_formatted_attributes in varchar2 default null,
        p_formatted_data_attributes in varchar2 default null
    ),
    
    member procedure to_xml
    
);
