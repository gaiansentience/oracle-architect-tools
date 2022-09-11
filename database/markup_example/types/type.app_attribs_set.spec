create or replace type app#attribs_set
authid current_user
as object
(
    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 12/19/2009
    -- Updated : 09/10/2022
    -- Purpose : manage collections of attributes for markup utilities

    attributes           app#attribs,
    attributes_formatted varchar2(4000),

    constructor function app#attribs_set return self as result,

    constructor function app#attribs_set(p_formatted_attribute_set in varchar2) return self as result,

    constructor function app#attribs_set
    (
        p_name  in varchar2,
        p_value in varchar2
    ) return self as result,

    member procedure initialize,

    member procedure add_attribute(p_attribute in app#attrib),

    member procedure add_attribute
    (
        p_name  in varchar2,
        p_value in varchar2
    ),

    member procedure add_formatted_attribute(p_formatted_attribute in varchar2),
    
    member function attrib_count
    return number,

    member procedure format_all,

    member procedure parse_all

);