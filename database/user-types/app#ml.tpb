create or replace type body app#ml is

  -- Member procedures and functions
  --member procedure <ProcedureName>(<Parameter> <Datatype>) is
  --begin
  --  <Statements>;
  --end;
  constructor function app#ml return self as result is
  begin
  
    self.initialize;
  
    return;
  
  end app#ml;

  member procedure initialize is
  begin
  
    dbms_lob.createtemporary(self.data,
                             false,
                             dbms_lob.call);
  
  end initialize;

  --member methods
  --these all write internally using self.data.append
  --access final document values via self.data.data
  member procedure open_element
  
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_closed  in boolean default false
  ) is
    v_attribute_spacer varchar2(10) := null;
  begin
  
    if p_attributes is not null then
      v_attribute_spacer := app#fmt.space;
    end if;
  
    app#fmt.append(self.data,
                   '<' || p_tag || v_attribute_spacer || p_attributes);
    if p_is_closed = true then
      app#fmt.append(self.data,
                     '/');
    end if;
    app#fmt.append(self.data,
                   '>',
                   true);
  
  end open_element;

  member procedure close_element(p_tag in varchar2) is
  begin
  
    app#fmt.append(self.data,
                   '</' || p_tag || '>',
                   true);
  
  end close_element;

  member procedure tag_element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_is_open boolean;
  begin
  
    v_is_open := p_is_open;
    if p_value is null then
      v_is_open := false;
    end if;
  
    self.open_element(p_tag,
                      p_attributes,
                      v_is_open);
    app#fmt.append(self.data,
                   p_value);
  
    if v_is_open = true then
    
      self.close_element(p_tag);
    
    end if;
  
  end tag_element;

  member procedure xml_comment(p_value in varchar2) is
  begin
  
    app#fmt.append(self.data,
                   '<?' || p_value || '?>');
  
  end xml_comment;

  member procedure xml_declaration(p_xml_version in varchar2 default '1.0') is
    v_attribute app#attrib;
  begin
    v_attribute := new app#attrib('version',
                                  p_xml_version);
  
    self.xml_comment(v_attribute.attribute);
  
  end xml_declaration;

  member procedure add_element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null
  ) is
  begin
  
    self.tag_element(p_value,
                     p_tag,
                     p_attributes);
  
  end add_element;

  --static methods
  --functions all return values as varchar
  static function open_element
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_closed  in boolean default false
  ) return varchar2 is
    v_element varchar2(32000);
  begin
  
    app#fmt.append_vc(v_element,
                      app#fmt.lt || p_tag || app#fmt.space || p_attributes);
    if p_is_closed = true then
      app#fmt.append_vc(v_element,
                        app#fmt.slash);
    
    end if;
    app#fmt.append_vc(v_element,
                      app#fmt.gt,
                      true);
    return v_element;
  
  end open_element;

  static function close_element(p_tag in varchar2) return varchar2 is
    v_element varchar2(32000);
  begin
  
    app#fmt.append(v_element,
                   app#fmt.lt || p_tag || app#fmt.gt,
                   true);
    return v_element;
  
  end close_element;

  static function tag_element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_element varchar2(32000);
    v_is_open boolean;
  begin
  
    v_is_open := p_is_open;
    if p_value is null then
      v_is_open := false;
    end if;
  
    app#fmt.append_vc(v_element,
                      open_element(p_tag,
                                   p_attributes));
    app#fmt.append_vc(v_element,
                      p_value);
    if v_is_open = false then
      app#fmt.append_vc(v_element,
                        close_element(p_tag));
    end if;
  
    return v_element;
  
  end tag_element;

  static function xml_comment(p_value in varchar2) return varchar2 is
  begin
  
    return app#fmt.lt || app#fmt.question || p_value || app#fmt.question || app#fmt.gt;
  
  end xml_comment;

  static function xml_declaration(p_xml_version in varchar2 default '1.0') return varchar2 is
    v_element   varchar2(1000);
    v_attribute app#attrib;
  begin
    v_attribute := new app#attrib('version',
                                  p_xml_version);
  
    v_element := xml_comment(v_attribute.attribute);
  
    return v_element;
  
  end xml_declaration;

  static procedure add_element
  
  (
    p_xml        in out nocopy clob,
    p_tag        in varchar2,
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) is
  
  begin
  
    app#fmt.append(p_xml,
                   tag_element(p_value,
                               p_tag,
                               p_attributes),
                   true);
  
  end add_element;

end;
/

