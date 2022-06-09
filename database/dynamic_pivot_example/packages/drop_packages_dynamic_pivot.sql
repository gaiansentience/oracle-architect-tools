prompt dropping packages for dynamic pivot (poc and etl)

prompt dropping packages (shared with etl and poc)
prompt all ptf packages are shared between poc and etl
drop package oa_dpc_ptf_c_arrayagg;
drop package oa_dpc_ptf_ct_arrayagg;
drop package oa_dpc_ptf_c_flat;
drop package oa_dpc_ptf_ct_flat;
drop package oa_dpc_ptf_rt_flat;
drop package oa_dpc_ptf_rt_arrayagg;
drop package oa_dpc_ptf_rt_objectagg;
drop package oa_dpc_ptf_rt_xml;

prompt dropping packages pipelined functions poc only
drop package oa_dpc_poc_pf_objects;
drop package oa_dpc_poc_pf_json;

prompt dropped packages for dynamic pivot (poc and etl)