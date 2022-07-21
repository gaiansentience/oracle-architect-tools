create or replace type app#attrib as object
(
-- Author  : Anthony Harper
-- Created : 12/19/2009
-- Reviewed: 03/21/2022
-- Purpose : attribute type to support markup languages

-- Attributes
  name      varchar2(4000),
  value     varchar2(4000),
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

)


