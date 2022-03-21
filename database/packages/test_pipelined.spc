create or replace package test_pipelined is

  -- Author  : UNCLE ANTHONY
  -- Created : 12/31/2009 12:49:30 AM
  -- Purpose : example pipelined function
  function build_query
  (
    p_filter_column in varchar2 default null,
    p_filter_value  in varchar2 default null
  ) return varchar2;

  function get_values
  (
    p_filter_column in varchar2 default null,
    p_filter_value  in varchar2 default null
  ) return type_test_pipeline_table
    pipelined;

end test_pipelined;
/

