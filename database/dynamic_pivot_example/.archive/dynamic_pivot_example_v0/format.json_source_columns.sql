--json from item_object_v (works for polymorphic, polymorphic_typed)
{
"itemId":16,"itemName":"line 1-16","itemType":"line",
"itemValues":
[
{"y_intercept":"3","y_interceptValueDefinition":{"valueId":16.1,"valueType":"number"}},
{"equation":"y = .75x + 3","equationValueDefinition":{"valueId":16.3,"valueType":"varchar2"}},
{"slope":".75","slopeValueDefinition":{"valueId":16.2,"valueType":"number"}}
]
}
--json flat from item_object_v (works for polymorphic_flat, polymorphic_flat_typed)
{
"itemId":16,"itemName":"line 1-16","itemType":"line",
"y_intercept":"3","y_interceptValueDefinition":{"valueId":16.1,"valueType":"number"},
"equation":"y = .75x + 3","equationValueDefinition":{"valueId":16.3,"valueType":"varchar2"},
"slope":".75","slopeValueDefinition":{"valueId":16.2,"valueType":"number"}
}

--json from data_to_json_v (works for polymorphic, polymorphic_typed)
{
  "itemId" : 16,
  "itemName" : "line 1-16",
  "itemType" : "line",
  "itemValues" :
  [
    {
      "y_intercept" : "3",
      "y_interceptValueDefinition" :
      {
        "valueId" : 16.1,
        "valueType" : "number"
      }
    },
    {
      "slope" : ".75",
      "slopeValueDefinition" :
      {
        "valueId" : 16.2,
        "valueType" : "number"
      }
    },
    {
      "equation" : "y = .75x + 3",
      "equationValueDefinition" :
      {
        "valueId" : 16.3,
        "valueType" : "varchar2"
      }
    }
  ]
}