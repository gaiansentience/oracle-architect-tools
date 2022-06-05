create or replace type t_pml as object(
    key varchar2(100), 
    value varchar2(4000),
    doc clob,
    
    constructor function t_pml return self as result,
    
    constructor function t_pml(p_key in varchar2, p_value in varchar2) return self as result,
    
    constructor function t_pml(p_doc in clob) return self as result,
    
    member procedure initialize,

    member function element return varchar2,
    
    member function has(p_key in varchar2) return boolean,
    
    member function get_string(p_key in varchar2) return varchar2,
    
    member function get_number(p_key in varchar2) return number,
    
    static function open_tag(p_key in varchar2) return varchar2,
    
    static function close_tag(p_key in varchar2) return varchar2,
    
    static function tag_element(p_key in varchar2, p_value in varchar2) return varchar2,
    
    static function has_element(p_source in varchar2, p_key in varchar2) return boolean,
    
    static function get_value(p_source in varchar2, p_key in varchar2) return varchar2,
    
    static procedure append_element(p_source in out nocopy varchar2, p_key in varchar2, p_value in varchar2),

    member procedure append(p_key in varchar2, p_value in varchar2)
    );
    /
    create or replace type body t_pml
    is

    constructor function t_pml return self as result
    is
    begin
    self.initialize;
    return;
    end t_pml;
    
    constructor function t_pml(p_key in varchar2, p_value in varchar2) return self as result
    is
    begin
        self.initialize;
        self.key := p_key;
        self.value := p_value;
        return;
    end t_pml;
    
    constructor function t_pml(p_doc in clob) return self as result
    is
    begin
        self.initialize;
        self.doc := p_doc;
        return;
    end t_pml;

    member procedure initialize
    is
    begin
        self.key := null;
        self.value := null;
        self.doc := null;
    end initialize;
    
    member function has(p_key in varchar2) return boolean
    is
    begin
        return t_pml.has_element(self.doc,p_key);
    end has;
    
    member function get_string(p_key in varchar2) return varchar2
    is
    begin
        return t_pml.get_value(self.doc,p_key);
    exception
        when others then
            return null;
    end get_string;
    
    member function get_number(p_key in varchar2) return number
    is
    begin
        return to_number(t_pml.get_value(self.doc,p_key));
    exception
        when others then
            return null;
    end get_number;
    


    member function element return varchar2
    is
    begin
    return t_pml.tag_element(self.key,self.value);
    end element;
    
    static    function open_tag(p_key in varchar2) return varchar2
    is
    begin
        return '<<|' || p_key || '|>';
    end open_tag;
    
    static function close_tag(p_key in varchar2) return varchar2
    is
    begin
        return '<|' || p_key || '|>>';
    end close_tag;
    
    static function tag_element(p_key in varchar2, p_value in varchar2) return varchar2
    is
    begin
        return open_tag(p_key) || p_value || close_tag(p_key);
    end tag_element;
    
    static function has_element(p_source in varchar2, p_key in varchar2) return boolean
    is
    l_open varchar2(100) := open_tag(p_key);
    i number := 0;
    begin
        i := instr(p_source, l_open);
        return i > 0;
    end has_element;
    
    static function get_value(p_source in varchar2, p_key in varchar2) return varchar2
    is
    l_open varchar2(100) := open_tag(p_key);
    l_close varchar2(100) := close_tag(p_key);
    l_value varchar2(4000) := null;
    l_value_start number := 0;
    l_value_stop number := 0;
    begin
        if has_element(p_source, p_key) then
            l_value_start := instr(p_source, l_open) + length(l_open);
            l_value_stop := instr(p_source, l_close);
            l_value := substr(p_source, l_value_start, l_value_stop - l_value_start);
        end if;
        return l_value;
    end get_value;
    
    static procedure append_element(p_source in out nocopy varchar2, p_key in varchar2, p_value in varchar2)
    is
    begin
        p_source := p_source || tag_element(p_key, p_value);
    end append_element;

    member procedure append(p_key in varchar2, p_value in varchar2)
    is
    begin
        self.doc := self.doc || t_pml.tag_element(p_key, p_value);
    end append;
    
    end;
    /