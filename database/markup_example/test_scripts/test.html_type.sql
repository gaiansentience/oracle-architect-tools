set serveroutput on;
declare
    l_return varchar2(32000);
begin

    l_return := test#html_examples.test_document();

    dbms_output.put_line(l_return);

end;
