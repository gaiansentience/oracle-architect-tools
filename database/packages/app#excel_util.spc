create or replace package app#excel_util is

  -- Author  : UNCLE ANTHONY
  -- Created : 11/22/2009 1:30:21 PM
  -- Purpose : formatting spreadsheets in msXML format

  type r_cell is record(
    datavalue varchar2(4000),
    datatype  varchar2(4000),
    style     varchar2(4000));

  type r_row is table of r_cell index by pls_integer;

  type r_rows is table of r_row index by pls_integer;

  subtype r_headings is r_row;

  type r_worksheet is record(
    title   varchar2(4000),
    heading r_headings,
    rows    r_rows);

  type r_worksheets is table of r_worksheet index by pls_integer;

  type r_style is record(
    stylename  varchar2(4000),
    attributes app#xml_util.r_element_attributes,
    innerxml   varchar2(4000));

  type r_styles is table of r_style index by pls_integer;

  type r_workbook is record(
    author     varchar2(4000),
    company    varchar2(4000),
    styles     r_styles,
    worksheets r_worksheets);

  function format_workbook_xml(p_workbook in out nocopy r_workbook) return clob;

end app#excel_util;
/

