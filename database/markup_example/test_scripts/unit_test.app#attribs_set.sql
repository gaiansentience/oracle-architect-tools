set serveroutput on;

declare
    l_input varchar2(1000) := q'[abc="the leader='edward'" def='the "forgotten" past']';
    l_att_set app#attribs_set;
begin
    l_att_set := new app#attribs_set(l_input);
    dbms_output.put_line(l_att_set.attributes_formatted);
    
end;