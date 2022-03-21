create or replace type body app#excel_table is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022

  -- Member procedures and functions
  /*  table_rows    app#excel_rows_type,
  table_heading app#excel_row_type,
  table_title   varchar2(100),
  table_xml     clob,*/

  constructor function app#excel_table return self as result is
  begin
    self.initialize;
    self.initialize_table;
    return;
  end app#excel_table;

  constructor function app#excel_table(p_title in varchar2) return self as result is
  begin
    self.initialize;
    self.initialize_table;
    self.table_title := p_title;
    return;
  end app#excel_table;

  member procedure add_heading(p_heading in app#excel_row) is
  begin
  
    self.add_row(p_heading);
  
  end add_heading;

  member procedure add_row(p_table_row in app#excel_row) is
    i number;
  begin
  
    if self.table_rows.exists(1) = false then
      --if the collection is anatomically null
      --initialize it by using the default constructor
      self.table_rows := app#excel_rows(p_table_row);
    else
      --get the next item in the collection
      i := self.table_rows.count + 1;
      --add an element to the collection
      self.table_rows.extend;
      --assign the attribute to the new element
      self.table_rows(i) := p_table_row;
    end if;
  
  end add_row;

  member procedure initialize_table is
  begin
  
    self.table_rows    := null;
    self.table_heading := null;
    self.table_title   := null;
    self.table_xml     := null;
    dbms_lob.createtemporary(self.table_xml,
                             false,
                             dbms_lob.call);
  
  end initialize_table;

  member procedure to_xml is
    v_worksheet varchar2(100) := 'Worksheet';
    v_table     varchar2(100) := 'Table';
    v_attribute app#attrib;
  begin
    --<Worksheet ss:Name="first sheet">  <Table>
    v_attribute := new app#attrib('ss:Name',
                                  self.table_title);
  
    self.open_element(v_worksheet,
                      v_attribute.attribute);
    self.open_element(v_table);
  
    for i in 1 .. self.table_rows.count loop
      self.table_rows(i) .to_xml;
      app#fmt.append(self.data,
                     self.table_rows(i).row_xml);
    
    end loop;
  
    self.close_element(v_table);
  
    self.close_element(v_worksheet);
  
    self.table_xml := self.data;
  
  end to_xml;

end;
/

