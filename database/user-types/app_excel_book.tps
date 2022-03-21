create or replace force type app#excel_book under app#ml
(
-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : Formatting object representing an excel workbook

-- Attributes
  tables     app#excel_tables,
  attributes app#attribs_set,
  styles     app#excel_styles_set,
  filename   varchar2(1000),
  author     varchar2(1000),
  company    varchar2(1000),
  created    timestamp with time zone,
  version    varchar2(1000),
  book_xml   clob,

  constructor function app#excel_book return self as result,

  constructor function app#excel_book
  (
    p_author  in varchar2,
    p_company in varchar2
  ) return self as result,

  member procedure initialize_book,

  member procedure add_table(p_table in app#excel_table),

  member procedure set_workbook_attributes,

  member procedure document_styles,

  member procedure document_properties,

  member procedure to_xml

)
/

