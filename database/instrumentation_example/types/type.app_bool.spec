create or replace type app#bool 
authid current_user
as object
(
    -- Author  : Anthony Harper, Information Architects
    -- Created : 03/01/2007
    -- Updated : 09/11/2022
    -- Purpose : Define utility types

    dummy number,


    --conversions to support settings that are numeric flags or boolean switches
    --varchar vals are used to pass booleans from external applications [T|TRUE|F|FALSE]
    --numeric flags are used to store booleans in tables [0|1 or -1]
    --boolean switches are used to represent flags in plsql code

    static function val_to_flag
    (
        p_val in varchar2 default 'FALSE'
    ) return number,

    static function flag_to_val
    (
        p_flag in number default 0
    ) return varchar2,

    static function switch_to_flag
    (
        p_switch in boolean default false
    ) return number,

    static function flag_to_switch
    (
        p_flag in number default 0
    ) return boolean,

    static function switch_to_val
    (
        p_switch in boolean default false
    ) return varchar2,

    static function val_to_switch
    (
        p_val in varchar2 default 'FALSE'
    ) return boolean

);

