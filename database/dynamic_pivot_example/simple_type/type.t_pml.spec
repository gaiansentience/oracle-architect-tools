create or replace type t_pml as object(
    key varchar2(100), 
    value varchar2(4000),
    doc clob,
    format_mask_date_time varchar2(100),
    format_mask_timestamp varchar2(100),
    
    constructor function t_pml return self as result,
    
    constructor function t_pml(p_key in varchar2, p_value in varchar2) return self as result,
    
    constructor function t_pml(p_key in varchar2, p_value in date) return self as result,
    
    constructor function t_pml(p_key in varchar2, p_value in timestamp) return self as result,    
    
    constructor function t_pml(p_doc in clob) return self as result,
    
    member procedure initialize,
    
    member function open_markup(p_key in varchar2) return varchar2,
    
    member function close_markup(p_key in varchar2) return varchar2,
    
    member function open_markup return varchar2,
    
    member function close_markup return varchar2,

    member function element return varchar2,
    
    member function has_markup_start(p_key in varchar2) return number,
    
    member function has(p_key in varchar2) return boolean,
    
    member procedure put_element(p_element in varchar2),
    
    member procedure put(p_key in varchar2, p_value in varchar2),
    
    member procedure put(p_key in varchar2, p_date_value in date),
    
    member procedure put(p_key in varchar2, p_timestamp_value in timestamp),
    
    member function parse(p_key in varchar2) return varchar2,
    
    member function get_string(p_key in varchar2) return varchar2,
    
    member function get_number(p_key in varchar2) return number,
    
    member function get_date_time(p_key in varchar2) return date,
        
    member function get_timestamp(p_key in varchar2) return timestamp
);
