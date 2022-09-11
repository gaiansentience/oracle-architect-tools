--polymorphic table function row_as_json
--converts rows to a json column
--output is limited to specified columns
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors

--create package, package body and a test view
prompt creating row as json example
@packages/polymorphic/package.ptf_row_as_json.spec;
@packages/polymorphic/package.ptf_row_as_json.body;
@views/create_views_ptf_row_as_json.sql;
