create or replace package log#no_control 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 08/25/2007
    -- Updated : 09/22/2022
    -- Purpose : example package for logging calls

    --           this package only uses central logging utility
    --           central logging utility can be switched on or off
    --           no package level controls for logging
    --           without type interface requires duplicated code

    procedure my_traced_procedure
    (
        p_input in varchar2,
        p_user  in varchar2
    );

    procedure my_other_procedure
    (
        p_input in varchar2,
        p_user  in varchar2
    );

    procedure audit_sensitive_access
    (
        p_user in varchar2,
        p_data out sys_refcursor
    );

    procedure test_it;

    procedure test_with_logging;

    procedure test_no_logging;

end log#no_control;