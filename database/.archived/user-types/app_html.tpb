create or replace type body app#html is


-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Revised : 03/22/2022

  --constructor function
  constructor function app#html return self as result is
  begin

    self.initialize;
    return;

  end app#html;

  --member methods
  --these write to self.data

  --html comment <--VALUE-->
  member procedure comment_html
  (
    self         in out nocopy app#html,  
    p_value      in varchar2
  ) 
  is
    c varchar2(32000);
  begin
  
    c := app#fmt.lt || app#fmt.exclaim || '--' || p_value || '--' || app#fmt.gt;
    self.append_markup(c);

  end comment_html;
  
  --line break <br/>
  member procedure break
  (
    self         in out nocopy app#html,    
    p_lines      in number default 1
  ) 
  is
  begin

    for i in 1 .. p_lines loop
      self.empty(p_tag => 'br');
    end loop;

  end break;
  
  --hard return <hr/>
  member procedure hr
  (
    self         in out nocopy app#html  
  )
  is
  begin

    self.empty(p_tag => 'hr');

  end hr;
  
  --html doc <html></html>
  member procedure html
  (
    self         in out nocopy app#html,    
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'html', p_open => p_open);
    
  end html;
  
  --html head <head></head>
  member procedure head
  (
    self         in out nocopy app#html,    
    p_open       in boolean default true
  ) 
  is
  begin

    self.simple(p_tag => 'head', p_open => p_open);

  end head;
  
  --html body <body></body>
  member procedure body
  (
    self         in out nocopy app#html,  
    p_open       in boolean default true
  ) 
  is
  begin

    self.simple(p_tag => 'body', p_open => p_open);
  
  end body;
  
  --image  <img src="p_src" width="p_width" height="p_height"/>
  member procedure img
  (
    self         in out nocopy app#html,    
    p_src        in varchar2,
    p_width      in number default 0,
    p_height     in number default 0
  ) 
  is
    v_attribs app#attribs_set := new app#attribs_set;
  begin
    
    v_attribs.add_attribute('src', p_src);
    v_attribs.add_attribute('width', p_width);
    v_attribs.add_attribute('height', p_height);
    self.empty(p_tag => 'img', p_attributes => v_attribs.attributes_formatted);

  end img;
  
  --bold <b></b>
  member procedure bold
  (
    self         in out nocopy app#html,    
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'b',p_open => p_open);
  
  end bold;
  
  --font <font></font>
  member procedure font
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'font', p_attributes => p_attributes, p_open => p_open);
 
  end font;
  
  --division <div></div>
  member procedure div
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'div', p_attributes => p_attributes, p_open => p_open);

  end div;
  
  --table <table></table>
  member procedure table_html
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'table', p_attributes => p_attributes, p_open => p_open);
                     
  end table_html;
  
  --table row <tr></tr>
  member procedure tr
  (
    self         in out nocopy app#html,  
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'tr', p_attributes => p_attributes, p_open => p_open);

  end tr;
  
  --table header <th></th>
  member procedure th
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'th',p_attributes => p_attributes, p_open => p_open);
                       
  end th;

  --table heading <th>VALUE</th>
  member procedure table_heading
  (
    self         in out nocopy app#html,    
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) 
  is
  begin
    
    self.th(p_attributes => p_attributes, p_open => true);
    self.append_value(p_value);    
    self.th(p_open => false);
    
  end table_heading;
  
  --table data <td></td>
  member procedure td
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'td', p_attributes => p_attributes, p_open => p_open);

  end td;
  
  --table data <td>VALUE</td>
  member procedure table_data
  (
    self         in out nocopy app#html,    
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) 
  is
  begin
    
    self.td(p_attributes => p_attributes, p_open => true);
    self.append_value(p_value);    
    self.td(p_open => false);
    
  end table_data;
  
  --ordered list <ol></ol>
  member procedure ol
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'ol', p_attributes => p_attributes, p_open => p_open);
  
  end ol;
  
  --unordered list <ul></ul>
  member procedure ul
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) 
  is
  begin

    self.simple(p_tag => 'ul', p_attributes => p_attributes, p_open => p_open);

  end ul;
  
  --list item <lt></li>
  member procedure li
  (
    self         in out nocopy app#html,    
    p_attributes in varchar2 default null,
    p_open    in boolean default true
  ) 
  is
  begin
  
    self.simple(p_tag => 'li', p_attributes => p_attributes, p_open => p_open);
  
  end li;
  
  --list item <lt>VALUE</li>
  member procedure list_item
  (
    self         in out nocopy app#html,    
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) 
  is
  begin

    self.li(p_attributes => p_attributes, p_open => true);
    self.append_value(p_value);
    self.li(p_open => false);
    
  end list_item;


  --static methods returning varchar

  --html comment <--VALUE-->
  static function comment_html
  (
    p_value      in varchar2
  ) return varchar2 
  is
  begin

    return '<!--' || p_value || '-->';

  end comment_html;

  --line break <br/>
  static function break
  (
    p_lines      in number default 1
  ) return varchar2 
  is
    v_element varchar2(1000);
  begin

    for i in 1 .. p_lines loop
      v_element := v_element || app#ml.empty('br');
    end loop;

    return v_element;

  end break;
  
  --hard return <hr/>
  static function hr return varchar2 
  is
  begin

    return app#ml.empty('hr');

  end hr;
  
  --html doc <html></html>
  static function html
  (
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple(p_tag => 'html', p_open => p_open);

  end html;
  
  --html head <head></head>
  static function head(
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple(p_tag => 'head', p_open => p_open);

  end head;
  
  --html body <body></body>
  static function body
  (
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple(p_tag => 'body', p_open => p_open);

  end body;

  --image  <img src="p_src" width="p_width" height="p_height"/>
  static function img
  (
    p_src        in varchar2,
    p_width      in number default 0,
    p_height     in number default 0
  ) return varchar2 
  is
    a_set app#attribs_set := new app#attribs_set;
  begin
  
    a_set.add_attribute('src', p_src);
    a_set.add_attribute('width', p_width);
    a_set.add_attribute('height', p_height);
    return app#ml.empty(p_tag => 'img', p_attributes => a_set.attributes_formatted);
    
  end img;

  --bold <b></b>
  static function bold
  (
    p_open       in boolean default true
  ) return varchar2 
  is
  begin
    return app#ml.simple(p_tag => 'b', p_open => p_open);
  end bold;
  
  --font <font></font>
  static function font
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin
  
    return app#ml.simple('font', p_attributes, p_open);

  end font;
  
  --division <div></div>
  static function div
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin
  
    return app#ml.simple('div', p_attributes, p_open);

  end div;

  --table <table></table>
  static function table_html
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple('table', p_attributes, p_open);

  end table_html;
  
  --table row <tr></tr>
  static function tr
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin
    return app#ml.simple('tr', p_attributes, p_open);
  end tr;
  
  --table header <th></th>
  static function th
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin
    return app#ml.simple('th', p_attributes, p_open);
  end th;
  
  static function table_heading
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2 
  is
    d varchar2(32000);
  begin

    d := th(p_attributes, true);
    d := d || p_value;
    d := d || th(p_open => false);
    return d;

  end table_heading;
  
  --table data <td></td>
  static function td
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple('td', p_attributes, p_open);

  end td;

  static function table_data
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2 
  is
    d varchar2(32000);
--    d app#format_vc := new app#format_vc;
  begin

    d := td(p_attributes, true);
    d := d || p_value;
    d := d || td(p_open => false);
    return d;

  end table_data;

  --ordered list <ol></ol>
  static function ol
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple('ol', p_attributes, p_open);

  end ol;

  --unordered list <ul></ul>
  static function ul
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple('ul', p_attributes, p_open);

  end ul;

  --list item <lt></li>
  static function li
  (
    p_attributes in varchar2 default null,
    p_open       in boolean default true
  ) return varchar2 
  is
  begin

    return app#ml.simple('li', p_attributes, p_open);

  end li;

  static function list_item
  (
    p_value      in varchar2,
    p_attributes in varchar2 default null
  ) return varchar2 
  is
    d varchar2(32000);
  begin

    d := li(p_attributes,true);
    d := d || p_value;
    d := d || li(p_open => false);
    return d;

  end list_item;

end;