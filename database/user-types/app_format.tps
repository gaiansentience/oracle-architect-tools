create or replace type app#format as object
(
-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : encapsulate common formatting methods

-- Attributes
  data_varchar        varchar2(32000),
  data                clob,
  data_length         number,
  data_length_varchar number,
-- Member functions and procedures
  constructor function app#format return self as result,

  member procedure initialize,

  member procedure reset_data_varchar,

  member procedure reset_data,

  member procedure append
  (
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ),

  member procedure append_varchar
  (
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ),

  member procedure append_clob(p_value in out nocopy clob),

  member procedure set_data_lengths,

  member procedure data_to_varchar,

  member procedure data_varchar_to_data
)
/

