set serveroutput on;
declare
r_formats oa_dpc_poc_test_data_row_formats_v%rowtype;
    procedure print_format(p_comment in varchar2, p_example in clob)
    is
    begin
        dbms_output.put_line('/*');
        dbms_output.put_line('--' || p_comment);
        dbms_output.put_line(p_example);
        dbms_output.put_line('*/');
    end print_format;
begin

select * into r_formats 
from oa_dpc_poc_test_data_row_formats_v 
where rownum = 1;

print_format('pair values to xml with xmlagg', r_formats.xml_doc);
print_format('pair values to json array with plsql json_array_t', r_formats.jdoc_pls_array);
print_format('pair values to json nested with json_objectagg', r_formats.jdoc_objectagg_nested);
print_format('pair values to json nested with plsql json_object_t', r_formats.jdoc_pls_nested);
print_format('pair values to json flat with json_objectagg', r_formats.jdoc_objectagg_flat);
print_format('pair values to json flat with plsql json_object_t', r_formats.jdoc_pls_flat);

end;

/*
--pair values to xml with xmlagg
<itemValues>
  <radius>16</radius>
  <color>purple</color>
  <area>804.224</area>
  <circumference>100.528</circumference>
</itemValues>

*/


/*
--pair values to json array with json_arrayagg
{
  "itemValues" :
  [
    {
      "radius" : "14"
    },
    {
      "color" : "grey"
    },
    {
      "area" : "615.734"
    },
    {
      "circumference" : "87.962"
    }
  ]
}
*/
/*
--pair values to json array with plsql json_array_t
{
  "itemValues" :
  [
    {
      "radius" : "11"
    },
    {
      "color" : "white"
    },
    {
      "area" : "380.1215"
    },
    {
      "circumference" : "69.113"
    }
  ]
}
*/
/*
--pair values to json nested with json_objectagg
{
  "itemValues" :
  {
    "radius" : "4",
    "color" : "blue",
    "area" : "50.264",
    "circumference" : "25.132"
  }
}
*/
/*
--pair values to json nested with plsql json_object_t
{
  "itemValues" :
  {
    "radius" : "11",
    "color" : "white",
    "area" : "380.1215",
    "circumference" : "69.113"
  }
}
*/
/*
--pair values to json flat with json_objectagg
{
  "radius" : "23",
  "color" : "bronze",
  "area" : "1661.8535",
  "circumference" : "144.509"
}
*/
/*
--pair values to json flat with plsql json_object_t
{
  "radius" : "11",
  "color" : "white",
  "area" : "380.1215",
  "circumference" : "69.113"
}
*/

