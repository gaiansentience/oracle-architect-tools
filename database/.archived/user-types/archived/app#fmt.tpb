create or replace type body app#fmt is

  /*********************************************************
  STATIC METHODS, CALLABLE WITHOUT INSTANTIATION
  ***********************************************************/

  static procedure append_clob
  (
    p_target in out nocopy clob,
    p_value  in out nocopy clob
  ) is
  begin
  
    dbms_lob.append(p_target,
                    p_value);
  
  end append_clob;

  static procedure append
  (
    p_target       in out nocopy clob,
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ) is
    i       number;
    v_value varchar2(32000);
  begin
  
    if p_value is not null then
    
      v_value := p_value;
    
      if p_enclose_sq = true then
        v_value := app#fmt.sq || v_value || app#fmt.sq;
      end if;
    
      if p_include_crlf = true then
      
        v_value := v_value || app#fmt.crlf;
      end if;
    
      i := length(v_value);
      dbms_lob.writeappend(p_target,
                           i,
                           v_value);
    
    end if;
  
  end append;

  static procedure append_vc
  (
    p_target       in out nocopy varchar2,
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ) is
  
    v_value varchar2(32000);
  begin
    if p_value is not null then
      v_value := p_value;
    
      if p_enclose_sq = true then
        v_value := app#fmt.sq || v_value || app#fmt.sq;
      end if;
    
      if p_include_crlf = true then
        v_value := v_value || app#fmt.crlf;
      end if;
    
      p_target := p_target || v_value;
    end if;
  
  end append_vc;

  static function crlf
  (
    p_lines   in number default 1,
    p_lf_only in boolean default false
  ) return varchar2 is
    v_return   varchar2(10);
    v_line_end varchar2(10);
  begin
  
    if p_lf_only = false then
    
      v_line_end := chr(13);
    
    end if;
  
    v_line_end := v_line_end || chr(10);
  
    for i in 1 .. p_lines loop
    
      v_return := v_line_end;
    
    end loop;
  
    return v_return;
  
  end crlf;

  static function sq return varchar2 is
  
  begin
  
    return chr(39);
  
  end sq;

  static function dq return varchar2 is
  begin
  
    return chr(34);
  
  end dq;

  static function quote
  (
    p_value            in varchar2,
    p_use_double_quote in boolean default false
  ) return varchar2 is
    v_value varchar2(32000);
  begin
  
    if p_use_double_quote = true then
    
      v_value := app#fmt.dq || p_value || app#fmt.dq;
    
    else
    
      v_value := app#fmt.sq || p_value || app#fmt.sq;
    
    end if;
  
    return v_value;
  
  end quote;

  static function question return varchar2 is
  begin
  
    return chr(63);
  
  end question;

  static function exclaim return varchar2 is
  begin
  
    return chr(33);
  
  end exclaim;

  static function amp return varchar2 is
  begin
  
    return chr(38);
  
  end amp;

  static function colon return varchar2 is
  begin
  
    return chr(58);
  
  end colon;

  static function semicolon return varchar2 is
  begin
  
    return chr(59);
  
  end semicolon;

  static function comma return varchar2 is
  begin
  
    return chr(1);
  
  end comma;

  static function addcomma
  (
    p_value        in out nocopy varchar2,
    p_include_crlf in boolean default false
  ) return varchar2 is
    v_value varchar2(32000);
  begin
  
    v_value := p_value;
    app#fmt.append_vc(v_value,
                      app#fmt.comma,
                      p_include_crlf);
    return v_value;
  
  end addcomma;

  static function slash return varchar2 is
  begin
  
    return chr(47);
  
  end slash;

  static function gt return varchar2 is
  begin
  
    return chr(62);
  
  end gt;

  static function lt return varchar2 is
  begin
  
    return chr(60);
  
  end lt;

  static function equal return varchar2 is
  begin
  
    return chr(61);
  
  end equal;

  static function pct return varchar2 is
  begin
  
    return chr(37);
  
  end pct;

  static function space(p_number_spaces in number default 1) return varchar2 is
    v_return varchar2(4000);
  begin
  
    for i in 1 .. p_number_spaces loop
    
      v_return := v_return || chr(32);
    
    end loop;
  
    return v_return;
  
  end space;

end;
/

