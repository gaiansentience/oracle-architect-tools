prompt creating packages for dynamic pivot (poc and etl)

prompt creating dynamic pivot using pipelined functions returning object hierarchy
prompt creating source packages 
prompt creating pipelined function package to return nested table name|value pairs as dynamic_geometry subtypes
@@package.oa_dpc_poc_pf_objects.spec;
@@package.oa_dpc_poc_pf_objects.body;
prompt creating pipelined function package to return flat json name|value pairs as dynamic_geometry subtypes
@@package.oa_dpc_poc_pf_json.spec;
@@package.oa_dpc_poc_pf_json.body;

prompt creating packages for dynamic pivot using polymorphic row functions
prompt polymorphic function pivoting columns from hierarchical json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_c_arrayagg.spec;
@@package.oa_dpc_ptf_c_arrayagg.body;
prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_ct_arrayagg.spec;
@@package.oa_dpc_ptf_ct_arrayagg.body;
prompt polymorphic function pivoting columns from flat json rowsource - all data as varchar
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_c_flat.spec;
@@package.oa_dpc_ptf_c_flat.body;
prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets each column for all rows and puts the column values...then sets the next column for all rows
@@package.oa_dpc_ptf_ct_flat.spec;
@@package.oa_dpc_ptf_ct_flat.body;
prompt polymorphic function pivoting columns from hierarchical json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.oa_dpc_ptf_rt_arrayagg.spec;
@@package.oa_dpc_ptf_rt_arrayagg.body;
prompt polymorphic function pivoting columns from flat json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.oa_dpc_ptf_rt_flat.spec;
@@package.oa_dpc_ptf_rt_flat.body;
prompt polymorphic function pivoting columns from nested json rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.oa_dpc_ptf_rt_objectagg.spec;
@@package.oa_dpc_ptf_rt_objectagg.body;
prompt polymorphic function pivoting columns from xml rowsource - data as varchar or number
prompt polymorphic function sets all columns in each row and puts the entire rowset
@@package.oa_dpc_ptf_rt_xml.spec;
@@package.oa_dpc_ptf_rt_xml.body;

prompt created packages for dynamic pivot (poc and etl)