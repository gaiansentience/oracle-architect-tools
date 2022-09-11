create or replace type app#attrib 
authid current_user
as object
(
    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 12/19/2009
    -- Updated : 09/10/2022
    -- Purpose : attribute type to support markup languages

    attrib_name      varchar2(4000),
    attrib_value     varchar2(4000),
    attribute varchar2(4000),

    constructor function app#attrib return self as result,

    constructor function app#attrib(p_formatted_attribute in varchar2) return self as result,

    constructor function app#attrib
    (
        p_name  in varchar2,
        p_value in varchar2
    ) return self as result,

    member procedure initialize,

    member procedure build,

    member procedure parse(p_attribute in varchar2)

);