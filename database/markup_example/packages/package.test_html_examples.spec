create or replace package test#html_examples 
authid current_user
is

    -- Author  : Anthony Harper, gaiansentience@gmail.com
    -- Created : 12/20/2009
    -- Updated : 09/10/2022
    -- Purpose : testing for app#html_type
  
    function test_markup return varchar2;

    function test_document return varchar2;

end test#html_examples;