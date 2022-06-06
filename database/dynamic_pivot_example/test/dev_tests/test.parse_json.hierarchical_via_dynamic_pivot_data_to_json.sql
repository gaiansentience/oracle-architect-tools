set serveroutput on;
declare

-- hierarchical format from dynamic_pivot_data_to_json_v
-- large performance hit using json array with polymorphic functions
l_jsrc varchar2(1000) :=
'{
  "itemId" : 8,
  "itemName" : "first circle-8",
  "itemType" : "circle",
  "itemValues" :
  [
    {
      "radius" : "1",
      "radiusValueDefinition" :
      {
        "valueId" : 8.1,
        "valueType" : "number"
      }
    },
    {
      "circumference" : "6.283",
      "circumferenceValueDefinition" :
      {
        "valueId" : 8.1,
        "valueType" : "number"
      }
    },
    {
      "area" : "3.1415",
      "areaValueDefinition" :
      {
        "valueId" : 8.2,
        "valueType" : "number"
      }
    },
    {
      "color" : "blue",
      "colorValueDefinition" :
      {
        "valueId" : 8.2,
        "valueType" : "varchar2"
      }
    }
  ]
}';
o_jdoc json_object_t;
a_jdoc json_array_t := json_array_t();
e_jdoc json_object_t := json_object_t();
l_key varchar2(100) := 'radius';
l_value varchar2(4000);
begin
o_jdoc := json_object_t(l_jsrc);
if o_jdoc.has(l_key) then
    dbms_output.put_line('found ' || l_key || ' value is ' || o_jdoc.get_string(l_key));
else
    dbms_output.put_line('cant find ' || l_key || ' directly in json');
end if;

a_jdoc := o_jdoc.get_array('itemValues');

--value pairs are stored in an array
if a_jdoc.get_size > 0 then
    for i in 0..a_jdoc.get_size - 1 loop
        e_jdoc := json_object_t(a_jdoc.get(i));
        if e_jdoc.has(l_key) then
            --found a value for this key (column)
            l_value := e_jdoc.get_string(l_key);
            exit;
        end if;
    end loop;
end if;

if l_value is not null then
    dbms_output.put_line('found ' || l_key || ' in nested json elements, value is ' || l_value);
else
    dbms_output.put_line('cant find ' || l_key || ' in nested json array elements');
end if;

end;

