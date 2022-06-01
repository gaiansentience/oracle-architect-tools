set serveroutput on;
declare

-- flat format from dynamic_item_object_v
--better performance for polymorphic functions compared to hierarchical format using json_array_t
l_jsrc varchar2(1000) :=
'{
  "itemId" : 8,
  "itemName" : "first circle-8",
  "itemType" : "circle",
  "radius" : "1",
  "radiusValueDefinition" :
  {
    "valueId" : 8.1,
    "valueType" : "number"
  },
  "color" : "blue",
  "colorValueDefinition" :
  {
    "valueId" : 8.2,
    "valueType" : "varchar2"
  },
  "area" : "3.1415",
  "areaValueDefinition" :
  {
    "valueId" : 8.2,
    "valueType" : "number"
  },
  "circumference" : "6.283",
  "circumferenceValueDefinition" :
  {
    "valueId" : 8.1,
    "valueType" : "number"
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

end;

