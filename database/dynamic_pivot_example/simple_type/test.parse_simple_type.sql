set serveroutput on;

declare

l_doc varchar2(4000) := 
'<<|a_degrees|>90<|a_degrees|>><<|b_degrees|>26<|b_degrees|>><<|c_degrees|>64<|c_degrees|>>
<<|a_side|>7777<|a_side|>><<|b_side|>222222<|b_side|>><<|c_side|>23.0868<|c_side|>>
<<|stuff|>bear<|stuff|>>
<<|area|>77<|area|>>';

p t_pml := new t_pml(l_doc);

begin

dbms_output.put_line(p.get_string('a_side'));
dbms_output.put_line(p.get_string('b_side'));
dbms_output.put_line(p.get_string('c_side'));
dbms_output.put_line(p.get_string('xstuff'));
dbms_output.put_line(p.get_number('c_side'));
dbms_output.put_line(p.get_number('xstuff'));

end;