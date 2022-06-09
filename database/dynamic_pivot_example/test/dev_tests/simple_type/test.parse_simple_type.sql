set serveroutput on;

declare

l_doc varchar2(4000) := 
'
<<|a|>7777<|a|>><<|b|>222222<|b|>><<|c|>23.0868<|c|>>
<<|stuff|>bear<|stuff|>>
<<|area|>77<|area|>>
';

p t_pml := new t_pml(l_doc);

begin

dbms_output.put_line(p.get_string('a'));
dbms_output.put_line(p.get_string('b'));
dbms_output.put_line(p.get_string('c'));
dbms_output.put_line(p.get_string('stuff'));
dbms_output.put_line(p.get_number('c_side'));
dbms_output.put_line(p.get_number('xstuff'));
p.put('the_date',sysdate);
p.put('the_timestamp',localtimestamp);
p.put('some_value','xyx123');
p.put('some_numbers',3.1415);
dbms_output.put_line(p.doc);
dbms_output.put_line(p.get_date_time('the_date'));
dbms_output.put_line(p.get_timestamp('the_timestamp'));

end;