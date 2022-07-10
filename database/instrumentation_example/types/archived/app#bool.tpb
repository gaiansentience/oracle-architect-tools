create or replace type body app#bool is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 3/1/2007 1:11:30 PM
  -- Purpose : Define utility types

  -- Function and procedure implementations
  static function val_to_flag(p_val in varchar2 default 'FALSE') return number is
    v_flag number := 0;
  begin
    if upper(p_val) in ('T',
                        'TRUE') then
      v_flag := 1;
    end if;
    return v_flag;
  end val_to_flag;

  static function flag_to_val(p_flag in number default 0) return varchar2 is
    v_val varchar2(10) := 'FALSE';
  begin
    if p_flag is null then
      v_val := 'FALSE';
    elsif abs(p_flag) = 1 then
      v_val := 'TRUE';
    end if;
    return v_val;
  end flag_to_val;

  static function switch_to_flag(p_switch in boolean default false) return number is
    v_flag number := 0;
  begin
    if p_switch = true then
      v_flag := 1;
    end if;
    return v_flag;
  end switch_to_flag;

  static function flag_to_switch(p_flag in number default 0) return boolean is
    v_switch boolean := false;
  begin
    if abs(p_flag) = 1 then
      v_switch := true;
    end if;
    return v_switch;
  end flag_to_switch;

  static function switch_to_val(p_switch in boolean default false) return varchar2 is
  
  begin
    return flag_to_val(switch_to_flag(p_switch));
  end switch_to_val;

  static function val_to_switch(p_val in varchar2 default 'FALSE') return boolean is
  begin
    return flag_to_switch(val_to_flag(p_val));
  end val_to_switch;

end;
/

