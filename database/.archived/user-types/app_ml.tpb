create or replace type body app#ml is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Revised : 03/21/2022

  -- Constructor and internal functions
  constructor function app#ml return self as result is
  begin

    self.initialize;

    return;

  end app#ml;

  member procedure initialize
  (
    self         in out nocopy app#ml  
  )
  is
  begin

    dbms_lob.createtemporary(self.data, false, dbms_lob.call);

  end initialize;
  
  --member procedures
  
  --return data as varchar
  member function to_varchar
  (
    self         in out nocopy app#ml  
  ) return varchar2
  is
    v_varchar varchar2(32000);
    i number;
  begin
  
    i := dbms_lob.getlength(self.data);
    if i < 32000 then
      v_varchar := dbms_lob.substr(self.data, i, 1);
    else
      raise_application_error(-20100,'Data exceeds max varchar2 length');    
    end if;
    
    return v_varchar;
  
  end to_varchar;
  

  --add value to self.data
  --optionally escape invalid characters
  member procedure append_value
  (
    self         in out nocopy app#ml,  
    p_value      in varchar2,
    p_use_escape_sequences in boolean default true    
  )
  is
    v_value varchar2(32000);
  begin
  
    v_value := p_value;
    if p_use_escape_sequences then
      app#fmt.add_escape_sequences(v_value);
    end if;
    if p_value is not null then
      app#fmt.append(self.data, v_value);
    end if;
  
  end append_value;

  --append markup tags to self.data
  member procedure append_markup
  (
    self         in out nocopy app#ml,  
    p_value      in varchar2, 
    p_add_crlf   in boolean default false
  )
  is
  begin
    
    app#fmt.append(self.data, p_value, p_add_crlf);
        
  end append_markup;

  --open a markup tag,  <tag attribs>
  --optionally empty,   <tag attribs />
  member procedure open
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_empty      in boolean default false
  )
  is
    v_tag varchar2(32000);
  begin
    v_tag := app#fmt.lt || p_tag;
    if p_attributes is not null then
      v_tag := v_tag || app#fmt.space || p_attributes;
    end if;
    if p_empty then
      v_tag := v_tag || app#fmt.space || app#fmt.slash;
    end if;
    v_tag := v_tag || app#fmt.gt;
    self.append_markup(v_tag);
  end open;

  --open an empty markup, <tag attribs />
  member procedure empty
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null
  )
  is
  begin
    self.open(p_tag, p_attributes, true);
  end empty;  

  --close a markup,  </ tag>
  --add a trailing crlf
  member procedure close
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2
  )
  is
    v_tag varchar2(100);
  begin
    v_tag := app#fmt.lt || app#fmt.slash || app#fmt.space || p_tag || app#fmt.gt;
    self.append_markup(v_tag, true);
  end close;
  
  
  --simple markup, no content
  --open true,  <tag attributes>
  --open false, </tag>
  member procedure simple
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  )
  is
  begin
    if p_open then
      self.open(p_tag, p_attributes);
    else
      self.close(p_tag);
    end if;
  end simple;
  
  --markup with content  <tag attributes>value</ tag>
  --if value is null and allow empty is true <tag />
  member procedure element
  (
    self         in out nocopy app#ml,
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_allow_empty in boolean default true
  )
  is
  begin
  
    if p_value is null and p_allow_empty then
      self.empty(p_tag, p_attributes);
    else
      self.open(p_tag, p_attributes);
      self.append_value(p_value);
      self.close(p_tag);
    end if;
  
  end element;

  member procedure xml_comment
  (
    self         in out nocopy app#ml,  
    p_value      in varchar2
  ) 
  is
    v_comment varchar2(32000);
  begin
    
    v_comment := app#fmt.lt || app#fmt.question || p_value || app#fmt.question || app#fmt.gt;
    self.append_markup(v_comment);
    
  end xml_comment;

  member procedure xml_declaration
  (
    self         in out nocopy app#ml,  
    p_xml_version in varchar2 default '1.0'
  ) 
  is
    v_attribute app#attrib;
  begin
    v_attribute := new app#attrib('version', p_xml_version);

    self.xml_comment(v_attribute.attribute);

  end xml_declaration;

  --static functions returning varchar2
  --open a markup tag,  <tag attribs>
  --optionally empty,   <tag attribs />
  static function open
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_empty      in boolean default false
  ) return varchar2
  is
    t varchar2(32000);
  begin
    t := app#fmt.lt || p_tag;
    if p_attributes is not null then
      t := t || app#fmt.space || p_attributes;
    end if;
    if p_empty then
      t := t || app#fmt.space || app#fmt.slash;
    end if;
    t := t || app#fmt.gt;
    return t;
  end open;

  --open an empty markup, <tag attribs />
  static function empty
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2
  is
  begin
    return open(p_tag, p_attributes, true);
  end empty;  

  --close a markup,  </ tag>
  --add a trailing crlf
  static function close
  (
    p_tag        in varchar2
  ) return varchar2
  is
    t varchar2(100);
  begin
    t := app#fmt.lt || app#fmt.slash || app#fmt.space || p_tag || app#fmt.gt;
    return t;
  end close;
  
  
  --simple markup, no content
  --open true,  <tag attributes>
  --open false, </tag>
  static function simple
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2
  is
  begin
    if p_open then
      return open(p_tag, p_attributes);
    else
      return close(p_tag);
    end if;
  end simple;
  
  --markup with content  <tag attributes>value</ tag>
  --if value is null and allow empty is true <tag />
  static function element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_allow_empty in boolean default true
  ) return varchar2
  is
    d varchar2(32000);
  begin
  
    if p_value is null and p_allow_empty then
      d := empty(p_tag, p_attributes);
    else
      d := open(p_tag, p_attributes);
      d := d || p_value;
      d := d || close(p_tag);
    end if;
    return d;
    
  end element;

  static function xml_comment
  (
    p_value in varchar2
  ) return varchar2 
  is
    c varchar2(32000);
  begin
    
    c := app#fmt.lt || app#fmt.question || p_value || app#fmt.question || app#fmt.gt;
    
    return c;
    
  end xml_comment;

  static function xml_declaration
  (
    p_xml_version in varchar2 default '1.0'
  ) return varchar2 
  is
    v_attribute app#attrib;
  begin
    v_attribute := new app#attrib('version', p_xml_version);

    return xml_comment(v_attribute.attribute);

  end xml_declaration;

end;