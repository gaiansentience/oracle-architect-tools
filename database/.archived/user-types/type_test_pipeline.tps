create or replace type type_test_pipeline as object
(
-- Author  : UNCLE ANTHONY
-- Created : 12/31/2009 12:39:22 AM
-- Purpose : record type for testing pipelined functions

-- Attributes
  id          number,
  name        varchar2(100),
  description varchar2(100),
  title       varchar2(100),

-- functions and procedures
  static procedure append
  (
    p_target     in out nocopy varchar2,
    p_value      in varchar2,
    p_newline    in boolean default true,
    p_enclose_sq in boolean default false
  ),

  static function get_to_type_cols(p_prefix in varchar2) return varchar2
)
/

