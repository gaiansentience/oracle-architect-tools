create or replace type app#excel_cell under app#ml
(
    -- Author  : Anthony Harper
    -- Created : 12/20/2009
    -- Updated: 09/11/2022
    -- Purpose : excel data cell
    
    cell_value      varchar2(32000),
    attributes      app#attribs_set,
    data_attributes app#attribs_set,
    xml_cell        varchar2(32000),
    
    constructor function app#excel_cell 
    return self as result,
    
    constructor function app#excel_cell
    (
        p_cell_value in varchar2
    ) return self as result,
    
    constructor function app#excel_cell
    (
        p_cell_value in varchar2,
        p_attributes in app#attribs_set
    ) return self as result,
    
    constructor function app#excel_cell
    (
        p_cell_value      in varchar2,
        p_attributes      in app#attribs_set,
        p_data_attributes in app#attribs_set
    ) return self as result,
    
    constructor function app#excel_cell
    (
        p_cell_value           in varchar2,
        p_formatted_attributes in varchar2
    ) return self as result,
    
    constructor function app#excel_cell
    (
        p_cell_value                in varchar2,
        p_formatted_attributes      in varchar2,
        p_formatted_data_attributes in varchar2
    ) return self as result,
    
    member procedure initialize_cell,
    
    member procedure to_xml
    
);