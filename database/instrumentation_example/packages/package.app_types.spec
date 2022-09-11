create or replace package app#types 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 3/01/2007
    -- Updated : 9/10/2022
    -- Purpose : Define utility types
    

    subtype osuser is varchar2(35);

    subtype pk_id is number(12);

    subtype key is varchar2(100);

    subtype guid is varchar2(500);

    --TRUE/FALSE T/F
    subtype val is varchar2(4000);

    subtype description is varchar2(4000);

    --0 (false) / 1 (true)
    subtype flag is number(1);
    
    subtype switch is boolean;
    
    --FLAG/SWITCH/VAL CONVERSION CODE MOVED TO TYPE APP#BOOL
    
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

