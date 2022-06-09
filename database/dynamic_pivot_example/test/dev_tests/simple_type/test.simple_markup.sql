set serveroutput on;
declare
    l_doc varchar2(1000);
    function open_tag(p_key in varchar2) return varchar2
    is
    begin
        return '<<|' || p_key || '|>';
    end open_tag;
    
    function close_tag(p_key in varchar2) return varchar2
    is
    begin
        return '<|' || p_key || '|>>';
    end close_tag;
    
    function tag_element(p_key in varchar2, p_value in varchar2) return varchar2
    is
    begin
        return open_tag(p_key) || p_value || close_tag(p_key);
    end tag_element;
    
    function has_element(p_source in varchar2, p_key in varchar2) return boolean
    is
    l_open varchar2(100) := open_tag(p_key);
    i number := 0;
    begin
        i := instr(p_source, l_open);
        return i > 0;
    end has_element;
    
    function get_value(p_source in varchar2, p_key in varchar2) return varchar2
    is
    l_open varchar2(100) := open_tag(p_key);
    l_close varchar2(100) := close_tag(p_key);
    l_value varchar2(4000) := 'not found';
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
    
    procedure append_element(p_source in out nocopy varchar2, p_key in varchar2, p_value in varchar2)
    is
    begin
        p_source := p_source || tag_element(p_key, p_value);
    end append_element;
    
begin

    append_element(l_doc, 'a', '123');
    append_element(l_doc, 'b', 'xyz');
    append_element(l_doc, 'c', 'qrs');
    dbms_output.put_line(l_doc);
    
    dbms_output.put_line('b is ' || get_value(l_doc,'b'));
    dbms_output.put_line('z is ' || get_value(l_doc, 'z'));

    
end;