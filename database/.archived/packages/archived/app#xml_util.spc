create or replace package app#xml_util is

  -- Author  : UNCLE ANTHONY
  -- Created : 11/22/2009 1:30:21 PM
  -- Purpose :

  type r_attribute is record(
    name  varchar2(4000),
    value varchar2(4000));

  type r_element_attributes is table of r_attribute index by pls_integer;

  procedure append
  (
    p_target   in out nocopy varchar2,
    p_value    in varchar2,
    p_add_crlf in boolean := false
  );

  procedure append_clob
  (
    p_target   in out nocopy clob,
    p_value    in varchar2,
    p_add_crlf in boolean := false
  );

  procedure quote_value(p_value in out nocopy varchar2);

  function quote_value(p_value in varchar2) return varchar2;

  function attributes_exist(p_attributes in out nocopy r_element_attributes) return boolean;

  function get_next_attribute_index(p_attributes in out nocopy r_element_attributes) return pls_integer;

  function get_attribute
  (
    p_name  in varchar2,
    p_value in varchar2
  ) return r_attribute;

  procedure add_attribute
  (
    p_attributes in out nocopy r_element_attributes,
    p_attribute  in r_attribute
  );

  procedure add_attribute
  (
    p_attributes in out nocopy r_element_attributes,
    p_name       in varchar2,
    p_value      in varchar2
  );

  function format_attribute(p_attribute in r_attribute) return varchar2;

  function format_attributes(p_attributes in r_element_attributes) return varchar2;

  function open_element
  (
    p_name       in varchar2,
    p_attributes in r_element_attributes,
    p_is_empty   in boolean default false
  ) return varchar2;

  function open_element
  (
    p_name            in varchar2,
    p_attribute_name  in varchar2,
    p_attribute_value in varchar2,
    p_is_empty        in boolean default false
  ) return varchar2;

  function open_element
  (
    p_name     in varchar2,
    p_is_empty in boolean default false
  ) return varchar2;

  function close_element(p_name in varchar2) return varchar2;

  procedure add_element
  (
    p_xml        in out nocopy clob,
    p_name       in varchar2,
    p_value      in varchar2,
    p_attributes in r_element_attributes
  );

  procedure add_element
  (
    p_xml             in out nocopy clob,
    p_name            in varchar2,
    p_value           in varchar2,
    p_attribute_name  in varchar2,
    p_attribute_value in varchar2
  );

  procedure add_element
  (
    p_xml   in out nocopy clob,
    p_name  in varchar2,
    p_value in varchar2
  );

end app#xml_util;
/

