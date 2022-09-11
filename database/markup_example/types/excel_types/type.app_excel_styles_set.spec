create or replace force type app#excel_styles_set under app#ml
(
-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : manage collections of excel workbook styles

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

