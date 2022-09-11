--polymorphic table function add_user_date
--adds the current user and sysdate columns
--output is limited to specified columns
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors

--create package, package body and a test view
prompt creating add_user_date example
@packages/polymorphic/package.ptf_add_user_date.spec;
@packages/polymorphic/package.ptf_add_user_date.body;
@views/create_views_ptf_add_user_date.sql;
