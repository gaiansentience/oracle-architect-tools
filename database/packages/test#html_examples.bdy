create or replace package body test#html_examples is

  function test_document return varchar2
  -- Created on 12/20/2009 by UNCLE ANTHONY
   is
    -- Local variables here
    h       app#html := new app#html;
    v_value varchar2(32000) := null;
  begin
    -- Test statements here
    h.html;
    h.head_html;
    h.head_html(false);
    h.body_html;
    h.div('style="width:40%"');
    h.hr;
    h.ol;
    h.list_item('my item');
    h.list_item('other item');
    h.list_item('the third');
    h.list_item('last one');
    h.ol(null,
         false);
    h.hr;
    h.ul;
    h.list_item('my item');
    h.list_item('other item');
    h.list_item('the third');
    h.list_item('last one');
    h.ul(null,
         false);
    h.hr;
    h.div(null,
          false);
    h.table_html('border="1"');
    h.tr;
    h.table_data('table cell value',
                 'colspan="2"');
    h.table_data('table cell value');
    h.tr(null,
         false);
    h.tr;
    h.table_data('table cell value');
    h.table_data('table cell value');
    h.table_data('table cell value');
    h.tr(null,
         false);
  
    h.table_html(null,
                 false);
    h.body_html;
    h.html(false);
  
    v_value := h.data;
    --:document := h.data.data_varchar;
    return v_value;
  end test_document;

begin
  -- Initialization
  null;
end test#html_examples;
/

