set serveroutput on;
begin
--test.etl.rebuild_view_pf_objects
    --rebuild the view for pipelined using hierarchical objects and nested table objects source
    oa_dpc_etl.rebuild_etl_view_pf_objects(p_execute => false);

end;
