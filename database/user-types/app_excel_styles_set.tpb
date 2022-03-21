create or replace type body app#excel_styles_set is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022

  -- Member functions and procedures
  constructor function app#excel_styles_set return self as result is
  begin
    self.initialize;
    self.initialize_styles;
    return;
  end app#excel_styles_set;

  member procedure initialize_styles is
  begin
  
    self.styles     := null;
    self.styles_xml := null;
    dbms_lob.createtemporary(self.styles_xml,
                             false,
                             dbms_lob.call);
  
  end initialize_styles;

  member procedure add_style(p_style in app#excel_style) is
    i number;
  begin
  
    if self.styles.exists(1) = false then
      --if the collection is anatomically null
      --initialize it by using the default constructor
      self.styles := app#excel_styles(p_style);
    else
      --get the next item in the collection
      i := self.styles.count + 1;
      --add an element to the collection
      self.styles.extend;
      --assign the attribute to the new element
      self.styles(i) := p_style;
    end if;
  
  end add_style;

  member procedure to_xml is
    v_styles varchar2(100) := 'Styles';
  begin
  
    self.open_element(v_styles);
    for i in 1 .. self.styles.count loop
      self.styles(i) .to_xml;
      app#fmt.append(self.data,
                     self.styles(i).style_xml,
                     true);
    end loop;
    self.close_element(v_styles);
  
    self.styles_xml := self.data;
  
  end to_xml;

end;
/

