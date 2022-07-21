create or replace type app#excel_table under app#ml
(
-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : excel data table

-- Attributes
  table_rows    app#excel_rows,
  table_heading app#excel_row,
  table_title   varchar2(100),
  table_xml     clob,

  constructor function app#excel_table return self as result,

  constructor function app#excel_table(p_title in varchar2) return self as result,

  member procedure add_heading(p_heading in app#excel_row),

  member procedure add_row(p_table_row in app#excel_row),

  member procedure initialize_table,

  member procedure to_xml
)
/

