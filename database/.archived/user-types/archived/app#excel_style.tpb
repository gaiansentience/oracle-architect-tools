create or replace type body app#excel_style is

  constructor function app#excel_style return self as result is
  begin
  
    self.initialize;
    self.initialize_style;
    return;
  
  end app#excel_style;

  constructor function app#excel_style
  (
    p_id   in varchar2,
    p_name in varchar2
  ) return self as result is
  begin
  
    self.initialize;
    self.initialize_style;
    self.style_id   := p_id;
    self.style_name := p_name;
    return;
  end app#excel_style;

  member procedure initialize_style is
  begin
  
    style_id      := null;
    style_name    := null;
    font          := null;
    alignment     := null;
    data_format   := null;
    interior      := null;
    border_bottom := null;
    border_left   := null;
    border_right  := null;
    border_top    := null;
    style_xml     := null;
    dbms_lob.createtemporary(self.style_xml,
                             false,
                             dbms_lob.call);
  
  end initialize_style;

  /* <Styles>
   <Style ss:ID="Default" ss:Name="Normal">
    <Alignment ss:Vertical="Bottom"/>
    <Borders/>
    or
    <Borders>
     <Border ss:Position="Bottom" ss:LineStyle="Continuous" ss:Weight="1"/>
     <Border ss:Position="Left" ss:LineStyle="Continuous" ss:Weight="1"/>
     <Border ss:Position="Right" ss:LineStyle="Continuous" ss:Weight="1"/>
     <Border ss:Position="Top" ss:LineStyle="Continuous" ss:Weight="1"/>
    </Borders>
    <Font/>
    or
    <Font x:Family="Swiss" ss:Bold="1"/>
    <Interior/>
    or
    <Interior ss:Color="#33CCCC" ss:Pattern="Solid"/>
    <NumberFormat/>
    or
    <NumberFormat ss:Format="&quot;$&quot;#,##0.00"/>
    or
    <NumberFormat ss:Format="Short Date"/>
    or
    <NumberFormat ss:Format="0"/>
    <Protection/>
   </Style>
  </Styles>*/

  member procedure to_xml is
    v_style     varchar2(10) := 'Style';
    v_inner_xml varchar2(32000);
  begin
  
    self.open_element(v_style);
    --add inner style data
  
    self.tag_element(v_style,
                     v_inner_xml);
  
    self.style_xml := self.data;
  
  end to_xml;

end;
/

