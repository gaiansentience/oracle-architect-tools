create or replace package body app#xml_util is

  eq    constant varchar2(1) := '=';
  qq    constant varchar2(1) := '"';
  sp    constant varchar2(1) := ' ';
  lt    constant varchar2(1) := '<';
  gt    constant varchar2(1) := '>';
  slash constant varchar2(1) := '/';
  crlf  constant varchar2(2) := chr(13) || chr(10);

  procedure append
  (
    p_target   in out nocopy varchar2,
    p_value    in varchar2,
    p_add_crlf in boolean := false
  ) is
  begin

    if p_add_crlf = false then
      p_target := p_target || p_value;
    else
      p_target := p_target || p_value || crlf;
    end if;

  end append;

  procedure append_clob
  (
    p_target   in out nocopy clob,
    p_value    in varchar2,
    p_add_crlf in boolean := false
  ) is
    v_length number := 0;
  begin
    v_length := length(p_value);
    if p_add_crlf = false then
      dbms_lob.writeappend(p_target,
                           v_length,
                           p_value);
    else
      v_length := v_length + length(crlf);
      dbms_lob.writeappend(p_target,
                           v_length,
                           p_value || crlf);
    end if;
  end append_clob;

  procedure quote_value(p_value in out nocopy varchar2) is
  begin
    p_value := qq || p_value || qq;
  end quote_value;

  function quote_value(p_value in varchar2) return varchar2 is
    v_value varchar2(4000);
  begin
    v_value := qq || p_value || qq;
    return v_value;
  end quote_value;

  function attributes_exist(p_attributes in out nocopy r_element_attributes) return boolean is
    v_exist boolean := false;
  begin
    if p_attributes.exists(1) = true then
      v_exist := true;
    end if;
    return v_exist;
  end attributes_exist;

  function get_next_attribute_index(p_attributes in out nocopy r_element_attributes) return pls_integer is
    v_index pls_integer;
  begin
    if p_attributes.exists(1) = false then
      v_index := 1;
    else
      v_index := p_attributes.count + 1;
    end if;
    return v_index;
  end get_next_attribute_index;

  function get_attribute
  (
    p_name  in varchar2,
    p_value in varchar2
  ) return r_attribute is
    v_attribute r_attribute;
  begin

    v_attribute.name  := p_name;
    v_attribute.value := p_value;
    return v_attribute;

  end get_attribute;

  procedure add_attribute
  (
    p_attributes in out nocopy r_element_attributes,
    p_attribute  in r_attribute
  ) is
    v_index pls_integer;
  begin
    v_index := get_next_attribute_index(p_attributes);
    p_attributes(v_index) := p_attribute;
  end add_attribute;

  procedure add_attribute
  (
    p_attributes in out nocopy r_element_attributes,
    p_name       in varchar2,
    p_value      in varchar2
  ) is
    v_attribute r_attribute;
  begin
    v_attribute := get_attribute(p_name,
                                 p_value);
    add_attribute(p_attributes,
                  v_attribute);
  end add_attribute;

  function format_attribute(p_attribute in r_attribute) return varchar2 is
    v_value varchar2(4000);
    v_xml   varchar2(4000) := null;
  begin

    if p_attribute.value is not null then
      v_value := p_attribute.value;
      quote_value(v_value);
      v_xml := sp || p_attribute.name || eq || v_value || sp;
    end if;
    return v_xml;

  end format_attribute;

  function format_attributes(p_attributes in r_element_attributes) return varchar2 is
    v_xml varchar2(4000) := null;
  begin
    --if attributes_exist(p_attributes) = true then
    for i in 1 .. p_attributes.count loop
      append(v_xml,
             format_attribute(p_attributes(i)));
    end loop;
    return v_xml;
  end format_attributes;

  function open_element
  (
    p_name       in varchar2,
    p_attributes in r_element_attributes,
    p_is_empty   in boolean default false
  ) return varchar2 is
    v_xml varchar2(4000);
  begin
    append(v_xml,
           lt);
    append(v_xml,
           p_name);
    append(v_xml,
           format_attributes(p_attributes));
    if p_is_empty = true then
      append(v_xml,
             slash);
    end if;
    append(v_xml,
           gt);
    return v_xml;
  end open_element;

  function open_element
  (
    p_name            in varchar2,
    p_attribute_name  in varchar2,
    p_attribute_value in varchar2,
    p_is_empty        in boolean default false
  ) return varchar2 is
    v_attributes r_element_attributes;
    v_xml        varchar2(4000);
  begin

    add_attribute(v_attributes,
                  p_attribute_name,
                  p_attribute_value);
    v_xml := open_element(p_name,
                          v_attributes,
                          p_is_empty);
    return v_xml;

  end open_element;

  function open_element
  (
    p_name     in varchar2,
    p_is_empty in boolean default false
  ) return varchar2 is
    v_xml varchar2(4000);
  begin

    v_xml := open_element(p_name,
                          null,
                          null,
                          p_is_empty);
    return v_xml;

  end open_element;

  function close_element(p_name in varchar2) return varchar2 is
    v_xml varchar2(4000);
  begin
    append(v_xml,
           lt || slash || p_name || gt,
           true);
    return v_xml;
  end close_element;

  procedure add_element
  (
    p_xml        in out nocopy clob,
    p_name       in varchar2,
    p_value      in varchar2,
    p_attributes in r_element_attributes
  ) is
  begin

    if p_value is not null then
      append_clob(p_xml,
                  open_element(p_name,
                               p_attributes));
      append_clob(p_xml,
                  p_value);
      append_clob(p_xml,
                  close_element(p_name));
    else
      append_clob(p_xml,
                  open_element(p_name,
                               p_attributes,
                               true));
    end if;

  end add_element;

  procedure add_element
  (
    p_xml             in out nocopy clob,
    p_name            in varchar2,
    p_value           in varchar2,
    p_attribute_name  in varchar2,
    p_attribute_value in varchar2
  ) is
  begin

    if p_value is not null then
      append_clob(p_xml,
                  open_element(p_name,
                               p_attribute_name,
                               p_attribute_value));
      append_clob(p_xml,
                  p_value);
      append_clob(p_xml,
                  close_element(p_name));
    else
      append_clob(p_xml,
                  open_element(p_name,
                               p_attribute_name,
                               p_attribute_value,
                               true));
    end if;

  end add_element;

  procedure add_element
  (
    p_xml   in out nocopy clob,
    p_name  in varchar2,
    p_value in varchar2
  ) is
  begin

    if p_value is not null then
      append_clob(p_xml,
                  open_element(p_name));
      append_clob(p_xml,
                  p_value);
      append_clob(p_xml,
                  close_element(p_name));
    else
      append_clob(p_xml,
                  open_element(p_name,
                               true));
    end if;

  end add_element;

begin
  -- Initialization
  null;
end app#xml_util;
/

