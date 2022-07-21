create or replace type app#ml as object
(

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Revised : 03/22/2022
-- Purpose : encapsulate functionality for markup languages (xml and html)

-- Attributes
  data clob,

--constructor and internal methods
  constructor function app#ml return self as result,

  member procedure initialize
  (
    self         in out nocopy app#ml
  ),
  
  --return data as varchar
  member function to_varchar
  (
    self         in out nocopy app#ml
  )  
  return varchar2,
  
  --add value to self.data
  --optionally escape invalid characters
  member procedure append_value
  (
    self         in out nocopy app#ml,  
    p_value in varchar2,
    p_use_escape_sequences in boolean default true
   ),

  --append markup tags to self.data
  member procedure append_markup
  (
    self         in out nocopy app#ml,  
    p_value      in varchar2, 
    p_add_crlf   in boolean default false
  ),

  --open a markup tag,  <tag attribs>
  --optionally empty,   <tag attribs />
  member procedure open
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_empty      in boolean default false
  ),

  --open an empty markup, <tag attribs />
  member procedure empty
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null
  ),

  --close a markup,  </ tag>
  member procedure close
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2
  ),
  
  --simple markup, no content
  --open true,  <tag attributes>
  --open false, </tag>
  member procedure simple
  (
    self         in out nocopy app#ml,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ),
  
  --markup with content  <tag attributes>value</ tag>
  --if value is null and allow empty is true <tag />
  member procedure element
  (
    self         in out nocopy app#ml,
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_allow_empty in boolean default true
  ),

  member procedure xml_comment
  (
    self         in out nocopy app#ml,
    p_value      in varchar2  
  ),

  member procedure xml_declaration
  (
    self         in out nocopy app#ml,  
    p_xml_version in varchar2 default '1.0'
  ),
  
--static methods returning varchar
  --open a markup tag,  <tag attribs>
  --optionally empty,   <tag attribs />
  static function open
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_empty      in boolean default false
  ) return varchar2,

  --open an empty markup, <tag attribs />
  static function empty
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2,

  --close a markup,  </ tag>
  static function close
  (
    p_tag        in varchar2
  ) return varchar2,
  
  --simple markup, no content
  --open true,  <tag attributes>
  --open false, </tag>
  static function simple
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2,
  
  --markup with content  <tag attributes>value</ tag>
  --if value is null and allow empty is true <tag />
  static function element
  (
    p_value      in varchar2,
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_allow_empty in boolean default true
  ) return varchar2,

  static function xml_comment
  (
    p_value in varchar2  
  ) return varchar2,

  static function xml_declaration
  (
    p_xml_version in varchar2 default '1.0'
  ) return varchar2
  
)
not final
