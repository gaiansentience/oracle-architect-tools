set serveroutput on;
declare
    l_doc clob;
begin
    --2 iterations is approx. the limit to print the document using dbms_output
    l_doc := dynamic_pivot_test_data.get_json_data(2);
    dbms_output.put_line(l_doc);

exception
when others then
dbms_output.put_line(sqlerrm);
--dbms_call_stack.format_error_backtrace;
end;
