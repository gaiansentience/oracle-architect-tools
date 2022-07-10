create or replace type app#excel_row under app#ml
(
-- Author  : UNCLE ANTHONY
-- Created : 12/20/2009 4:29:43 PM
-- Purpose :

  row_cells app#excel_cells,
  row_xml   clob,

  constructor function app#excel_row return self as result,

  member procedure initialize_row,

  member procedure add_data_cell(p_data_cell in app#excel_cell),

  member procedure add_data_cell
  (
    p_cell_value           in varchar2,
    p_formatted_attributes in varchar2
  ),

  member procedure to_xml

)
/

