prompt create views for dynamic pivot (poc)



prompt creating pipelined function views to return nested table name|value pairs as dynamic_geometry subtypes
@@view.oa_dpc_poc_pf_objects_v.sql;
@@view.oa_dpc_poc_pf_objects_vl.sql;
@@view.oa_dpc_poc_pf_objects_vxl.sql;
prompt creating pipelined function views to return flat json name|value pairs as dynamic_geometry subtypes
@@view.oa_dpc_poc_pf_json_v.sql;
@@view.oa_dpc_poc_pf_json_vl.sql;
@@view.oa_dpc_poc_pf_json_vxl.sql;
--could rename these into json_flat and create json_arrayagg to show performance of pipelined with hierarchical json

prompt creating poc views for dynamic pivot using polymorphic row functions
prompt polymorphic function pivoting columns from hierarchical json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@view.oa_dpc_ptf_c_arrayagg_v.sql;
@@view.oa_dpc_ptf_c_arrayagg_vl.sql;
@@view.oa_dpc_ptf_c_arrayagg_vxl.sql;
prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@view.oa_dpc_ptf_ct_arrayagg_v.sql;
@@view.oa_dpc_ptf_ct_arrayagg_vl.sql;
@@view.oa_dpc_ptf_ct_arrayagg_vxl.sql;
prompt polymorphic function pivoting columns from flat json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@view.oa_dpc_ptf_c_flat_v.sql;
@@view.oa_dpc_ptf_c_flat_vl.sql;
@@view.oa_dpc_ptf_c_flat_vxl.sql;
prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@view.oa_dpc_ptf_ct_flat_v.sql;
@@view.oa_dpc_ptf_ct_flat_vl.sql;
@@view.oa_dpc_ptf_ct_flat_vxl.sql;
prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@view.oa_dpc_ptf_rt_arrayagg_v.sql;
@@view.oa_dpc_ptf_rt_arrayagg_vl.sql;
@@view.oa_dpc_ptf_rt_arrayagg_vxl.sql;
prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@view.oa_dpc_ptf_rt_flat_v.sql;
@@view.oa_dpc_ptf_rt_flat_vl.sql;
@@view.oa_dpc_ptf_rt_flat_vxl.sql;
prompt polymorphic function pivoting columns from nested json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@view.oa_dpc_ptf_rt_objectagg_v.sql;
@@view.oa_dpc_ptf_rt_objectagg_vl.sql;
@@view.oa_dpc_ptf_rt_objectagg_vxl.sql;
prompt polymorphic function pivoting columns from xml rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@view.oa_dpc_ptf_rt_xml_v.sql;
@@view.oa_dpc_ptf_rt_xml_vl.sql;
@@view.oa_dpc_ptf_rt_xml_vxl.sql;

prompt views created for dynamic pivot poc