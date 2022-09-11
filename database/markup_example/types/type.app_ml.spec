create or replace type app#ml 
authid current_user
as object
(

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Updated : 09/11/2022
-- Purpose : encapsulate functionality for markup languages (xml and html)

    data clob,

    constructor function app#ml return self as result,

    member procedure initialize,
  
    member function to_varchar
    return varchar2,
  
    member procedure append_value
    (
        p_value in varchar2,
        p_use_escape_sequences in boolean default true
    ),

    member procedure append_markup
    (
        p_value      in varchar2, 
        p_add_crlf   in boolean default false
    ),

    --open a markup tag,  <tag attribs>
    --optionally empty,   <tag attribs />
    member procedure open
    (
        p_tag        in varchar2,
        p_attributes in varchar2 default null,
        p_empty      in boolean default false
    ),

    --open an empty markup, <tag attribs />
    member procedure empty
    (
        p_tag        in varchar2,
        p_attributes in varchar2 default null
    ),

    --close a markup,  </ tag>
    member procedure close
    (
        p_tag        in varchar2
    ),
  
    --simple markup, no content
    --open true,  <tag attributes>
    --open false, </tag>
    member procedure simple
    (
        p_tag        in varchar2,
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
  
    --markup with content  <tag attributes>value</ tag>
    --if value is null and allow empty is true <tag />
    member procedure element
    (
        p_value      in varchar2,
        p_tag        in varchar2,
        p_attributes in varchar2 default null,
        p_allow_empty in boolean default true
    ),

    member procedure xml_comment
    (
        p_value      in varchar2  
    ),

    member procedure xml_declaration
    (
        p_xml_version in varchar2 default '1.0'
    ),
  
    --static methods returning varchar
    --open a markup tag,  <tag attribs>
    --optionally empty,   <tag attribs />
    static function open_
    (
        p_tag        in varchar2,
        p_attributes in varchar2 default null,
        p_empty      in boolean default false
    ) return varchar2,

    --open an empty markup, <tag attribs />
    static function empty_
    (
        p_tag        in varchar2,
        p_attributes in varchar2 default null
    ) return varchar2,

    --close a markup,  </ tag>
    static function close_
    (
        p_tag        in varchar2
    ) return varchar2,
  
    --simple markup, no content
    --open true,  <tag attributes>
    --open false, </tag>
    static function simple_
    (
        p_tag        in varchar2,
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
  
    --markup with content  <tag attributes>value</ tag>
    --if value is null and allow empty is true <tag />
    static function element_
    (
        p_value      in varchar2,
        p_tag        in varchar2,
        p_attributes in varchar2 default null,
        p_allow_empty in boolean default true
    ) return varchar2,

    static function xml_comment_
    (
        p_value in varchar2  
    ) return varchar2,

    static function xml_declaration_
    (
        p_xml_version in varchar2 default '1.0'
    ) return varchar2
  
)
not final;