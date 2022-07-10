create or replace type app#bool as object
(

  val number,

-- Author  : Anthony Harper, Information Architects
-- Created : 3/1/2007 1:11:30 PM
-- Purpose : Define utility types

--conversions to support settings that are numeric flags or boolean switches
--varchar vals are used to pass booleans from external applications [T|TRUE|F|FALSE]
--numeric flags are used to store booleans in tables [0|1]
--boolean switches are used to represent flags in plsql code

  static function val_to_flag(p_val in varchar2 default 'FALSE') return number,

  static function flag_to_val(p_flag in number default 0) return varchar2,

  static function switch_to_flag(p_switch in boolean default false) return number,

  static function flag_to_switch(p_flag in number default 0) return boolean,

  static function switch_to_val(p_switch in boolean default false) return varchar2,

  static function val_to_switch(p_val in varchar2 default 'FALSE') return boolean

)
/

