create or replace type body app#html is

  --constructor function
  constructor function app#html return self as result is
  begin
  
    self.initialize;
    return;
  end app#html;

  --member methods
  --these write to self.data.data
  --html comment <--VALUE-->
  member procedure comment_html(p_value in varchar2) is
  begin
    app#fmt.append(self.data,
                   app#fmt.lt || app#fmt.exclaim || '--' || p_value || '--' || app#fmt.gt);
  end comment_html;
  --line break <br/>
  member procedure break(p_lines in number default 1) is
    v_tag varchar(10) := 'br';
  begin
  
    for i in 1 .. p_lines loop
      self.open_element(v_tag,
                        null,
                        true);
    end loop;
  end break;
  --hard return <hr/>
  member procedure hr is
    v_tag varchar(10) := 'hr';
  begin
    self.open_element(v_tag,
                      null,
                      true);
  end hr;
  --html doc <html></html>
  member procedure html(p_is_open in boolean default true) is
    v_tag varchar2(10) := 'html';
  begin
    self.tag_element(v_tag,
                     null,
                     null,
                     p_is_open);
  end html;
  --html head <head></head>
  member procedure head_html(p_is_open in boolean default true) is
    v_tag varchar2(10) := 'head';
  begin
    self.tag_element(v_tag,
                     null,
                     null,
                     p_is_open);
  end head_html;
  --html body <body></body>
  member procedure body_html(p_is_open in boolean default true) is
    v_tag varchar2(10) := 'body';
  begin
    self.tag_element(v_tag,
                     null,
                     null,
                     p_is_open);
  end body_html;
  --image  <img src="p_src" width="p_width" height="p_height"/>
  member procedure img
  (
    p_src    in varchar2,
    p_width  in number default 0,
    p_height in number default 0
  ) is
    v_tag        varchar2(10) := 'img';
    v_attributes app#attribs_set;
  begin
    v_attributes := new app#attribs_set('src',
                                        p_src);
  
    v_attributes.add_attribute('width',
                               p_width);
    v_attributes.add_attribute('height',
                               p_height);
    self.open_element(v_tag,
                      v_attributes.attributes_formatted,
                      true);
  end img;
  --bold <b></b>
  member procedure bold(p_is_open in boolean default true) is
    v_tag varchar2(10) := 'b';
  begin
    self.tag_element(v_tag,
                     null,
                     null,
                     p_is_open);
  end bold;
  --font <font></font>
  member procedure font
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'font';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end font;
  --division <div></div>
  member procedure div
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'div';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end div;
  --table <table></table>
  member procedure table_html
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'table';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end table_html;
  --table row <tr></tr>
  member procedure tr
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'tr';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end tr;
  --table header <th></th>
  member procedure th
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'th';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end th;
  --table data <td></td>
  member procedure td
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'td';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end td;
  --table data <td>VALUE</td>
  member procedure table_data
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) is
    v_tag varchar2(10) := 'td';
  begin
    self.tag_element(v_tag,
                     p_attributes);
    app#fmt.append(self.data,
                   p_value);
    self.close_element(v_tag);
  end table_data;
  --ordered list <ol></ol>
  member procedure ol
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'ol';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end ol;
  --unordered list <ul></ul>
  member procedure ul
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'ul';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end ul;
  --list item <lt></li>
  member procedure li
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) is
    v_tag varchar2(10) := 'li';
  begin
    self.tag_element(null,
                     v_tag,
                     p_attributes,
                     p_is_open);
  end li;
  --list item <lt>VALUE</li>
  member procedure list_item
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) is
    v_tag varchar2(10) := 'li';
  begin
    self.tag_element(v_tag,
                     p_attributes);
    app#fmt.append(self.data,
                   p_value);
    self.close_element(v_tag);
  end list_item;

  --static methods returning varchar
  static function open_element
  
  (
    p_tag        in varchar2,
    p_attributes in varchar2 default null,
    p_is_closed  in boolean default false
  ) return varchar2 is
    d app#format := new app#format;
  begin
  
    d.append_varchar('<' || p_tag || ' ' || p_attributes);
    if p_is_closed = true then
      d.append_varchar('/');
    end if;
    d.append_varchar('>',
                     true);
    return d.data_varchar;
  
  end open_element;

  static function close_element(p_tag in varchar2) return varchar2 is
  begin
    return '</' || p_tag || '>';
  end close_element;

  static function tag_element
  (
    p_tag        in varchar2,
    p_attributes in varchar2,
    p_is_open    in boolean default true
  ) return varchar2 is
  begin
    if p_is_open = true then
      return open_element(p_tag,
                          p_attributes);
    else
      return close_element(p_tag);
    end if;
  
  end tag_element;

  --static methods returning varchar
  --html comment <--VALUE-->
  static function comment_html(p_value in varchar2) return varchar2 is
  begin
    return '<!--' || p_value || '-->';
  end comment_html;
  --line break <br/>
  static function break(p_lines in number default 1) return varchar2 is
    v_tag     varchar2(10) := 'br';
    v_element varchar2(1000);
  begin
  
    for i in 1 .. p_lines loop
      v_element := open_element(v_tag,
                                null,
                                true);
    end loop;
  
    return v_element;
  
  end break;
  --hard return <hr/>
  static function hr return varchar2 is
    v_tag varchar2(10) := 'hr';
  begin
    return open_element(v_tag,
                        null,
                        true);
  end hr;
  --html doc <html></html>
  static function html(p_is_open in boolean default true) return varchar2 is
    v_tag varchar2(10) := 'html';
  begin
    return tag_element(v_tag,
                       null,
                       p_is_open);
  end html;
  --html head <head></head>
  static function head_html(p_is_open in boolean default true) return varchar2 is
    v_tag varchar2(10) := 'head';
  begin
    return tag_element(v_tag,
                       null,
                       p_is_open);
  end head_html;
  --html body <body></body>
  static function body_html(p_is_open in boolean default true) return varchar2 is
    v_tag varchar2(10) := 'body';
  begin
    return tag_element(v_tag,
                       null,
                       p_is_open);
  end body_html;

  --image  <img src="p_src" width="p_width" height="p_height"/>
  static function img
  (
    p_src    in varchar2,
    p_width  in number default 0,
    p_height in number default 0
  ) return varchar2 is
    v_tag        varchar2(10) := 'img';
    v_attributes app#attribs_set;
  begin
    v_attributes := new app#attribs_set('src',
                                        p_src);
  
    v_attributes.add_attribute('width',
                               p_width);
    v_attributes.add_attribute('height',
                               p_height);
    return open_element(v_tag,
                        v_attributes.attributes_formatted,
                        true);
  end img;

  --bold <b></b>
  static function bold(p_is_open in boolean default true) return varchar2 is
    v_tag varchar2(10) := 'b';
  begin
    return open_element(v_tag,
                        null,
                        p_is_open);
  end bold;
  --font <font></font>
  static function font
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'font';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end font;
  --division <div></div>
  static function div
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'div';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end div;

  --table <table></table>
  static function table_html
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'table';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end table_html;
  --table row <tr></tr>
  static function tr
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'tr';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end tr;
  --table header <th></th>
  static function th
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'th';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end th;
  --table data <td></td>
  static function td
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'td';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end td;

  static function table_data
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2 is
    d app#format := new app#format;
  begin
  
    d.append_varchar(td(p_attributes),
                     true);
    d.append_varchar(p_value);
    d.append_varchar(td(null,
                        false),
                     true);
    return d.data_varchar;
  
  end table_data;

  --ordered list <ol></ol>
  static function ol
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'ol';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end ol;

  --unordered list <ul></ul>
  static function ul
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'ul';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end ul;

  --list item <lt></li>
  static function li
  (
    p_attributes in varchar2 default null,
    p_is_open    in boolean default true
  ) return varchar2 is
    v_tag varchar2(10) := 'li';
  begin
    return tag_element(v_tag,
                       p_attributes,
                       p_is_open);
  end li;

  static function list_item
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2 is
    v_tag varchar2(10) := 'li';
    d     app#format := new app#format;
  begin
  
    d.append_varchar(tag_element(v_tag,
                                 p_attributes));
    d.append_varchar(p_value);
    d.append_varchar(tag_element(v_tag,
                                 null,
                                 false));
    return d.data_varchar;
  
  end list_item;

end;
/

