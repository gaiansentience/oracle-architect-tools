set serveroutput on;
declare

l_xsrc varchar2(1000) :=
'
<itemValues>
  <radius>16</radius>
  <color>purple</color>
  <area>804.224</area>
  <circumference>100.528</circumference>
</itemValues>
';
o_xml xmltype;
o_node xmltype;
l_string varchar2(100);
l_number number;
l_key varchar2(100) := 'radius';
l_xpath varchar2(100) := '/itemValues/' || l_key;
l_xpath_value varchar2(100) := l_xpath || '/text()';




begin
o_xml := new  xmltype(l_xsrc);

if o_xml.existsnode(l_xpath) = 1 then
    o_node := o_xml.extract(l_xpath);
    dbms_output.put_line('found node ' || o_node.getStringVal());
    
    l_string := o_xml.extract(l_xpath_value).getstringval();
    l_number := o_xml.extract(l_xpath_value).getNumberVal();
    dbms_output.put_line('found ' || l_key || ' string value is ' || l_string);
    dbms_output.put_line('found ' || l_key || ' number value is ' || l_number);
    
else
    dbms_output.put_line('cant find ' || l_key || ' in xml');
end if;

end;

