create or replace type app#excel_style under app#ml
(
    -- Author  : Anthony Harper
    -- Created : 12/20/2009
    -- Updated : 09/11/2022
    -- Purpose : Formatting object representing excel workbook style
    
    style_id      varchar2(100),
    style_name    varchar2(100),
    attributes    app#attribs_set,
    font          app#attribs_set,
    alignment     app#attribs_set,
    data_format   app#attribs_set,
    interior      app#attribs_set,
    border_top    app#attribs_set,
    border_bottom app#attribs_set,
    border_left   app#attribs_set,
    border_right  app#attribs_set,
    protection    app#attribs_set,
    style_xml     clob,
    
    constructor function app#excel_style 
    return self as result,
    
    constructor function app#excel_style
    (
        p_id   in varchar2,
        p_name in varchar2
    ) return self as result,
    
    member procedure initialize_style,
    
    member procedure set_style_attributes,
    
    member procedure to_xml
    
);