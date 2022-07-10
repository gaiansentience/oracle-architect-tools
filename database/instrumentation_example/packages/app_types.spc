create or replace package app#types is

  -- Author  : Anthony Harper, Information Architects
  -- Created : 3/1/2007 1:11:30 PM
  -- Purpose : Define utility types

  -- Public type declarations
  type ref_cur is ref cursor;

  subtype osuser is varchar2(35);

  subtype pk_id is number(12);

  subtype key is varchar2(100);

  subtype guid is varchar2(500);

  --subtype val is varchar2(4000);

  subtype description is varchar2(4000);

--flag type for using booleans in schema types or tables
--subtype flag is number(1);
--boolean type for using booleans in plsql
--subtype switch is boolean;

--conversions to support settings that are numeric flags or boolean switches
--numeric flags are used to store booleans in tables
--boolean switches are used to represent flags in plsql code

/*   function val_to_flag(p_val in app#types.val default 'FALSE') return app#types.flag;

   function flag_to_val(p_flag in app#types.flag default 0) return app#types.val;

   function switch_to_flag(p_switch in app#types.switch default false) return app#types.flag;

   function flag_to_switch(p_flag in app#types.flag default 0) return app#types.switch;

   function switch_to_val(p_switch in app#types.switch default false) return app#types.val;

   function val_to_switch(p_val in app#types.val default 'FALSE') return app#types.switch;
*/
end app#types;
/

