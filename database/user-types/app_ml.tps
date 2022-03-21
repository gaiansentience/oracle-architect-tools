create or replace type app#ml as object
(

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : encapsulate functionality for markup languages like xml and html

-- Attributes
  data clob,

--constructor and internal methods
  constructor function app#ml return self as result,

  member procedure initialize,

--member methods
--these all write internally using self.data.append
--access final document values via self.data.data
  member procedure open_element

  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_closed  in boolean default false
  ),

  member procedure close_element(p_tag in varchar2),

  member procedure tag_element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),

  member procedure xml_comment(p_value in varchar2),

  member procedure xml_declaration(p_xml_version in varchar2 default '1.0'),

  member procedure add_element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null
  ),

--static methods
--functions all return values as varchar
  static function open_element
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_closed  in boolean default false
  ) return varchar2,

  static function close_element(p_tag in varchar2) return varchar2,

  static function tag_element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,

  static function xml_comment(p_value in varchar2) return varchar2,

  static function xml_declaration(p_xml_version in varchar2 default '1.0') return varchar2,

  static procedure add_element

  (
    p_xml        in out nocopy clob,
    p_tag        in varchar2,
    p_value      in varchar2,
    p_attributes in varchar2 default null
  )

)
not final
/

