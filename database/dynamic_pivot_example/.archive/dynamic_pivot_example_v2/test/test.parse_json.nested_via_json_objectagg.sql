set serveroutput on;
declare

--nested json object format from dynamic_pivot_data_to_json_v_objectagg

l_jsrc varchar2(1000) :=
'{
  "itemId" : 8,
  "itemName" : "first circle-8",
  "itemType" : "circle",
  "itemValues" :
  {
    "radius" : "1",
    "color" : "blue",
    "area" : "3.1415",
    "circumference" : "6.283"
  },
  "itemValueDefinitions" :
  {
    "radiusValueDefinition" :
    {
      "valueId" : 8.1,
      "valueType" : "number"
    },
    "colorValueDefinition" :
    {
      "valueId" : 8.2,
      "valueType" : "varchar2"
    },
    "areaValueDefinition" :
    {
      "valueId" : 8.2,
      "valueType" : "number"
    },
    "circumferenceValueDefinition" :
    {
      "valueId" : 8.1,
      "valueType" : "number"
    }
  }
}';
o_jdoc json_object_t;
i_jdoc json_object_t := json_object_t();
l_key varchar2(100) := 'radius';
begin
o_jdoc := json_object_t(l_jsrc);
if o_jdoc.has(l_key) then
    dbms_output.put_line('found ' || l_key || ' value is ' || o_jdoc.get_string(l_key));
else
    dbms_output.put_line('cant find ' || l_key || ' directly in json');
end if;

i_jdoc := o_jdoc.get_object('itemValues');
if i_jdoc.has(l_key) then
    dbms_output.put_line('found ' || l_key || ' in nested json elements, value is ' || i_jdoc.get_string(l_key));
else
    dbms_output.put_line('cant find ' || l_key || ' in nested json elements');
end if;



end;

