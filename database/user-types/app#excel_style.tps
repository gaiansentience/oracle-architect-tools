create or replace type app#excel_style under app#ml
(
-- Author  : UNCLE ANTHONY
-- Created : 12/20/2009 9:59:55 PM
-- Purpose :
  style_id      varchar2(100),
  style_name    varchar2(100),
  font          app#attribs_set,
  alignment     app#attrib,
  data_format   app#attrib,
  interior      varchar2(100),
  border_bottom app#attribs_set,
  border_left   app#attribs_set,
  border_right  app#attribs_set,
  border_top    app#attribs_set,
  style_xml     clob,

  constructor function app#excel_style return self as result,

  constructor function app#excel_style
  (
    p_id   in varchar2,
    p_name in varchar2
  ) return self as result,

  member procedure initialize_style,

-- Member functions and procedures
  member procedure to_xml
)
/

