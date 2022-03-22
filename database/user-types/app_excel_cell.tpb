create or replace type body app#excel_cell is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022


  constructor function app#excel_cell return self as result is
  begin
    self.initialize;
    self.initialize_cell;
    return;
  end app#excel_cell;

  constructor function app#excel_cell(p_cell_value in varchar2) return self as result is
  begin
    self.initialize;
    self.initialize_cell;
    self.cell_value := p_cell_value;
    return;
  end app#excel_cell;

  constructor function app#excel_cell
  (
    p_cell_value in varchar2,
    p_attributes in app#attribs_set
  ) return self as result is
  begin
    self.initialize;
    self.initialize_cell;
    self.cell_value := p_cell_value;
    self.attributes := p_attributes;
    return;
  end app#excel_cell;

  constructor function app#excel_cell
  (
    p_cell_value           in varchar2,
    p_formatted_attributes in varchar2
  ) return self as result is
    v_attributes app#attribs_set;
  begin
    self.initialize;
    self.initialize_cell;
    self.cell_value := p_cell_value;
    v_attributes    := new app#attribs_set(p_formatted_attributes);
    self.attributes := v_attributes;
    return;
  end app#excel_cell;

  member procedure initialize_cell is
  begin
    self.cell_value := null;
    self.attributes := null;
    self.xml_cell   := null;
  end initialize_cell;

  member procedure to_xml is
    c_tag varchar2(100) := 'Cell';
    d_tag varchar2(100) := 'Data';
    v_cell_attrib varchar2(100);
    v_data_attrib varchar2(100);
  begin
  
    --<Cell ss:StyleID="s24"><Data ss:Type="String">
    /*
    TODO: owner=" Anthony" created="12/20/2009"
    text="add cell attributes (for style) and data attributes (for datatype)"
    */
    self.open(c_tag, v_cell_attrib);
    self.element(p_value => self.cell_value,
                     p_tag => d_tag,
                     p_attributes => self.attributes.attributes_formatted);
    self.close(c_tag);
  
    self.xml_cell := self.data;
  
  end to_xml;

end;
/

