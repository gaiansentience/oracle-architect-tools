create or replace type app#fmt as object
(
-- Author  : UNCLE ANTHONY
-- Created : 12/19/2009 3:07:43 PM
-- Purpose : encapsulate common formatting methods

-- Attributes
  data_vc varchar2(4000),
  data    clob,

/*********************************************************
  STATIC METHODS, CALLABLE WITHOUT INSTANTIATION
  ***********************************************************/

  static procedure append_clob
  (
    p_target in out nocopy clob,
    p_value  in out nocopy clob
  ),

  static procedure append
  (
    p_target       in out nocopy clob,
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ),

  static procedure append_vc
  (
    p_target       in out nocopy varchar2,
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ),

  static function crlf
  (
    p_lines   in number default 1,
    p_lf_only in boolean default false
  ) return varchar2,

  static function sq return varchar2,

  static function dq return varchar2,

  static function quote
  (
    p_value            in varchar2,
    p_use_double_quote in boolean default false
  ) return varchar2,

  static function question return varchar2,

  static function exclaim return varchar2,

  static function amp return varchar2,

  static function colon return varchar2,

  static function semicolon return varchar2,

  static function comma return varchar2,

  static function addcomma
  (
    p_value        in out nocopy varchar2,
    p_include_crlf in boolean default false
  ) return varchar2,

  static function slash return varchar2,

  static function gt return varchar2,

  static function lt return varchar2,

  static function equal return varchar2,

  static function pct return varchar2,

  static function space(p_number_spaces in number default 1) return varchar2

)
/

