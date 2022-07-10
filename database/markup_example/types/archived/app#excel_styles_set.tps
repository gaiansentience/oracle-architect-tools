create or replace type app#excel_styles_set under app#ml
(
-- Author  : UNCLE ANTHONY
-- Created : 12/19/2009 3:56:03 PM
-- Purpose : manage collections of attributes for markup utilities

-- Attributes
  styles     app#excel_styles,
  styles_xml clob,

-- Member functions and procedures
  constructor function app#excel_styles_set return self as result,

  member procedure initialize_styles,

  member procedure add_style(p_style in app#excel_style),

  member procedure to_xml

)
/

