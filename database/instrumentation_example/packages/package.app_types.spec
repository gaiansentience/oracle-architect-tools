create or replace package app#types 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 3/01/2007
    -- Updated : 9/10/2022
    -- Purpose : Define utility types
    
    subtype app_user is varchar2(128);

    subtype pk_id is number(12);

    subtype env_key is varchar2(100);

    subtype guid is varchar2(500);

    --TRUE/FALSE T/F
    subtype env_val is varchar2(4000);

    subtype env_description is varchar2(4000);

    --0 (false) / 1 or -1 (true)
    subtype env_flag is number(1);
    
    subtype env_switch is boolean;
    
    --FLAG/SWITCH/VAL CONVERSION METHODS MOVED TO TYPE APP#BOOL
    
end app#types;