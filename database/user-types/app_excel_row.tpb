create or replace type body app#excel_row is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022


  constructor function app#excel_row return self as result is
  begin
    self.initialize;
    self.initialize_row;
    return;
  end app#excel_row;

  member procedure initialize_row is
  begin
  
    self.row_cells := null;
    self.row_xml   := null;
    dbms_lob.createtemporary(self.row_xml,
                             false,
                             dbms_lob.call);
  
  end initialize_row;

  member procedure add_data_cell(p_data_cell in app#excel_cell) is
    i number;
  begin
  
    if self.row_cells.exists(1) = false then
      --if the collection is anatomically null
      --initialize it by using the default constructor
      self.row_cells := app#excel_cells(p_data_cell);
    else
      --get the next item in the collection
      i := self.row_cells.count + 1;
      --add an element to the collection
      self.row_cells.extend;
      --assign the attribute to the new element
      self.row_cells(i) := p_data_cell;
    end if;
  
  end add_data_cell;

  member procedure add_data_cell
  (
    p_cell_value           in varchar2,
    p_formatted_attributes in varchar2
  ) is
    v_data_cell app#excel_cell;
  begin
  
    v_data_cell := new app#excel_cell(p_cell_value,
                                      p_formatted_attributes);
    self.add_data_cell(v_data_cell);
  
  end add_data_cell;

  member procedure to_xml is
    v_row varchar2(10) := 'Row';
  begin
  
    self.open_element(v_row);
  
    for i in 1 .. self.row_cells.count loop
      self.row_cells(i) .to_xml;
      app#fmt.append(self.data,
                     self.row_cells(i).xml_cell);
    
    end loop;
  
    self.close_element(v_row);
  
    self.row_xml := self.data;
  
  end to_xml;
end;
/

