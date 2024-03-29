create or replace type app#format_vc 
authid current_user
as object
(
    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 12/20/2009
    -- Updated : 09/11/2022
    -- Purpose : string object for markup types

    data                varchar2(32767),
    data_length         number,

    constructor function app#format_vc 
    return self as result,

    member procedure initialize,

    member procedure reset_data,
  
    member procedure append
    (
        p_value        in varchar2,
        p_include_crlf in boolean default false,
        p_enclose_sq   in boolean default false
    ),

    member procedure append_clob(p_value in out nocopy clob),

    member procedure set_data_length,
  
    member function to_varchar return varchar2,
  
    member function toclob return clob
)
not final;