create or replace type app#html under app#ml
(
    -- Author  : Anthony Harper
    -- Created : 12/20/2009
    -- Updated : 09/11/2022
    -- Purpose : encapsulate html methods
    -- Note    : member methods useing internal data accumulator
    --           static methods return varchar with each call
    
    constructor function app#html 
    return self as result,
    
    --member methods
    --these write to self.data
    
    --html comment <--VALUE-->
    member procedure comment_html
    (
        p_value      in varchar2
    ),
    
    --line break <br/>
    member procedure break
    (
        p_lines      in number default 1
    ),
    
    --hard return <hr/>
    member procedure hr,
    
    --html doc <html></html>
    member procedure html
    (
        p_open       in boolean default true
    ),
    
    --html head <head></head>
    member procedure head
    (
        p_open       in boolean default true
    ),
    
    --html body <body></body>
    member procedure body
    (
        p_open       in boolean default true
    ),
    
    --image  <img src="p_src" width="p_width" height="p_height"/>
    member procedure img
    (
        p_src        in varchar2,
        p_width      in number default 0,
        p_height     in number default 0
    ),
    
    --bold <b></b>
    member procedure bold
    (
        p_open       in boolean default true
    ),
    
    --font <font></font>
    member procedure font
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --division <div></div>
    member procedure div
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --table <table></table>
    member procedure table_html
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --table row <tr></tr>
    member procedure tr
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --table header <th></th>
    member procedure th
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --table heading <th>VALUE</th>
    member procedure table_heading
    (
        p_value      in varchar2,
        p_attributes in varchar2 default null
    ),
    
    --table data <td></td>
    member procedure td
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
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
        p_open       in boolean default true
    ),
    
    --unordered list <ul></ul>
    member procedure ul
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --list item <lt></li>
    member procedure li
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ),
    
    --list item <lt>VALUE</li>
    member procedure list_item
    (
        p_value      in varchar2,
        p_attributes in varchar2 default null
    ),
    
    
    --static methods returning varchar
    
    --html comment <--VALUE-->
    static function comment_html_
    (
        p_value      in varchar2
    ) return varchar2,
    
    --line break <br/>
    static function break_
    (
        p_lines      in number default 1
    ) return varchar2,
    
    --hard return <hr/>
    static function hr_ 
    return varchar2,
    
    --html doc <html></html>
    static function html_
    (
        p_open       in boolean default true
    ) return varchar2,
    
    --html head <head></head>
    static function head_
    (
        p_open       in boolean default true
    ) return varchar2,
    
    --html body <body></body>
    static function body_
    (
        p_open       in boolean default true
    ) return varchar2,
    
    --image  <img src="p_src" width="p_width" height="p_height"/>
    static function img_
    (
        p_src        in varchar2,
        p_width      in number default 0,
        p_height     in number default 0
    ) return varchar2,
    
    --bold <b></b>
    static function bold_
    (
        p_open       in boolean default true
    ) return varchar2,
    
    --font <font></font>
    static function font_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    --division <div></div>
    static function div_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    --table <table></table>
    static function table_html_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    --table row <tr></tr>
    static function tr_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    --table header <th></th>
    static function th_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    static function table_heading_
    (
        p_value      in varchar2,
        p_attributes in varchar2 default null
    ) return varchar2,
    
    --table data <td></td>
    static function td_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    static function table_data_
    (
        p_value      in varchar2,
        p_attributes in varchar2 default null
    ) return varchar2,
    
    --ordered list <ol></ol>
    static function ol_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    --unordered list <ul></ul>
    static function ul_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    --list item <lt></li>
    static function li_
    (
        p_attributes in varchar2 default null,
        p_open       in boolean default true
    ) return varchar2,
    
    static function list_item_
    (
        p_value      in varchar2,
        p_attributes in varchar2 default null
    ) return varchar2
    
);