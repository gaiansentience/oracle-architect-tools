create or replace type app#format as object
(
-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : string object for markup types


-- Attributes
  data                clob,
  data_length         number,

-- Member functions and procedures
  constructor function app#format return self as result,

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
  
  member function to_clob return clob
)
not final