create or replace package body app#excel_util is

  procedure format_datacell_comment is
  begin

    null;

  end format_datacell_comment;

  procedure format_datacell
  (
    p_xml  in out nocopy clob,
    p_cell in out nocopy r_cell
  ) is
  begin

    format_datacell_comment;
    null;

  end format_datacell;

  procedure format_datarow
  (
    p_xml in out nocopy clob,
    p_row in out nocopy r_row
  ) is
  begin

    for i in 1 .. p_row.count loop

      format_datacell(p_xml,
                      p_row(i));

    end loop;

  end format_datarow;

  procedure format_datarows
  (
    p_xml  in out nocopy clob,
    p_rows in out nocopy r_rows
  ) is
  begin

    for i in 1 .. p_rows.count loop

      format_datarow(p_xml,
                     p_rows(i));

    end loop;

  end format_datarows;

  procedure format_headings
  (
    p_xml      in out nocopy clob,
    p_headings in out nocopy r_headings
  ) is
  begin

    format_datarow(p_xml,
                   p_headings);

  end format_headings;

  procedure format_worksheet
  (
    p_xml       in out nocopy clob,
    p_worksheet in out nocopy r_worksheet
  ) is
  begin

    format_headings(p_xml,
                    p_worksheet.heading);

  end format_worksheet;

  procedure format_worksheets
  (
    p_xml        in out nocopy clob,
    p_worksheets in out nocopy r_worksheets
  ) is
  begin

    for i in 1 .. p_worksheets.count loop

      format_worksheet(p_xml,
                       p_worksheets(i));

    end loop;

  end format_worksheets;

  function format_style(p_style in r_style) return varchar2 is
    v_xml varchar2(4000);
  begin

    null;
    /*
    TODO: owner="Uncle Anthony" created="11/22/2009"
    text="finish formatting
          <style name=x>
          inner style"
    */

  end format_style;

  procedure format_styles
  (
    p_xml    in out nocopy clob,
    p_styles in r_styles
  ) is
    v_xml varchar2(32000);
  begin

    for i in 1 .. p_styles.count loop

      app#xml_util.append(v_xml,
                          format_style(p_styles(i)),
                          true);

    end loop;

    app#xml_util.append_clob(p_xml,
                             v_xml);

  end format_styles;

  function format_workbook_xml(p_workbook in out nocopy r_workbook) return clob is
    v_xml clob;
  begin

    --format intro

    --format styles
    format_styles(v_xml,
                  p_workbook.styles);

    dbms_lob.createtemporary(v_xml,
                             false,
                             dbms_lob.call);

    return v_xml;

  end format_workbook_xml;

begin
  -- Initialization
  null;
end app#excel_util;
/

