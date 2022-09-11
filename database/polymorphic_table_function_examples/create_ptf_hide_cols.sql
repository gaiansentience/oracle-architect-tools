--polymorphic table function hide_cols
--hides specified columns
--doesnt change result set
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors


--create package, package body and a test view
prompt creating hide cols example
@packages/polymorphic/package.ptf_hide_cols.spec;
@packages/polymorphic/package.ptf_hide_cols.body;
@views/create_views_ptf_hide_cols.sql;
