create or replace type app#html under app#ml
(
-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022
-- Purpose : encapsulate html methods

--constructor function
  constructor function app#html return self as result,

--member methods
--these write to self.data.data
--html comment <--VALUE-->
  member procedure comment_html(p_value in varchar2),
--line break <br/>
  member procedure break(p_lines in number default 1),
--hard return <hr/>
  member procedure hr,
--html doc <html></html>
  member procedure html(p_is_open in boolean default true),
--html head <head></head>
  member procedure head_html(p_is_open in boolean default true),
--html body <body></body>
  member procedure body_html(p_is_open in boolean default true),
--image  <img src="p_src" width="p_width" height="p_height"/>
  member procedure img
  (
    p_src    in varchar2,
    p_width  in number default 0,
    p_height in number default 0
  ),
--bold <b></b>
  member procedure bold(p_is_open in boolean default true),
--font <font></font>
  member procedure font
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--division <div></div>
  member procedure div
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--table <table></table>
  member procedure table_html
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--table row <tr></tr>
  member procedure tr
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--table header <th></th>
  member procedure th
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--table data <td></td>
  member procedure td
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--table data <td>VALUE</td>
  member procedure table_data
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ),
--ordered list <ol></ol>
  member procedure ol
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--unordered list <ul></ul>
  member procedure ul
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--list item <lt></li>
  member procedure li
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ),
--list item <lt>VALUE</li>
  member procedure list_item
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ),

--static methods returning varchar
  static function open_element
  
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_closed  in boolean default false
  ) return varchar2,

  static function close_element(p_tag in varchar2) return varchar2,

  static function tag_element
  (
    p_tag        in varchar2,
    p_attributes in varchar2,
    p_is_open    in boolean default true
  ) return varchar2,

--static methods returning varchar
--html comment <--VALUE-->
  static function comment_html(p_value in varchar2) return varchar2,
--line break <br/>
  static function break(p_lines in number default 1) return varchar2,
--hard return <hr/>
  static function hr return varchar2,
--html doc <html></html>
  static function html(p_is_open in boolean default true) return varchar2,
--html head <head></head>
  static function head_html(p_is_open in boolean default true) return varchar2,
--html body <body></body>
  static function body_html(p_is_open in boolean default true) return varchar2,
--image  <img src="p_src" width="p_width" height="p_height"/>
  static function img
  (
    p_src    in varchar2,
    p_width  in number default 0,
    p_height in number default 0
  ) return varchar2,
--bold <b></b>
  static function bold(p_is_open in boolean default true) return varchar2,
--font <font></font>
  static function font
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,
--division <div></div>
  static function div
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,

--table <table></table>
  static function table_html
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,
--table row <tr></tr>
  static function tr
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,
--table header <th></th>
  static function th
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,
--table data <td></td>
  static function td
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,

  static function table_data
  
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2,
--ordered list <ol></ol>
  static function ol
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,

--unordered list <ul></ul>
  static function ul
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,

--list item <lt></li>
  static function li
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2,

  static function list_item
  
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2
)
/

