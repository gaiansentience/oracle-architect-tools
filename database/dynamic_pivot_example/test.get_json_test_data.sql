set serveroutput on;
declare
    l_doc clob;
begin
 
    l_doc := dynamic_pivot_test_data.get_json_data();
    dbms_output.put_line(l_doc);

end;
