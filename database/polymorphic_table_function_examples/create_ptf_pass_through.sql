--polymorphic table function pass_through
--doesnt change result set, just pipes it through
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors
--can be enhanced with include/exclude columns arguments

--create package, package body and a test view
prompt creating pass through example
@packages/polymorphic/package.ptf_pass_through.spec;
@packages/polymorphic/package.ptf_pass_through.body;
@views/create_views_ptf_pass_through.sql;
