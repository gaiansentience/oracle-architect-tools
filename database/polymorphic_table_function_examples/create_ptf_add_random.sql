--polymorphic table function add_random
--adds a variable number of columns with random values
--only valid for sources with scalar datatypes
--adding a date column to the source causes errors

--create package, package body and a test view
prompt creating add random example
@packages/polymorphic/package.ptf_add_random.spec;
@packages/polymorphic/package.ptf_add_random.body;
@views/create_views_ptf_add_random.sql;
