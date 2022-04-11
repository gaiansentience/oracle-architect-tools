create or replace package body admin$schema
as

procedure run_ddl
(
    p_ddl in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
begin

  if p_script then
    dbms_output.put_line(p_ddl);
  end if;

  if p_execute then
    execute immediate p_ddl;
  end if;

end run_ddl;

procedure create_public_synonyms
(
    p_tables in boolean default true,
    p_views in boolean default true,
    p_materialized_views in boolean default true,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_ddl varchar2(1000);
  v_owner varchar2(30) := user;

  cursor t is
  select
  table_name 
  from user_tables 
  where table_name not like '%MV'
  order by table_name;

  cursor v is
  select 
  view_name
  from user_views
  order by view_name;

  cursor mv is
  select 
  mview_name
  from user_mviews
  order by mview_name;

begin

  if p_tables then
    --build public synonyms for tables
    for r in t loop 
      --CREATE OR REPLACE PUBLIC SYNONYM SH_FWEEK_PSCAT_SALES_MV FOR SH.SALES;
      v_ddl := 'CREATE OR REPLACE PUBLIC SYNONYM ' || v_owner || '_' || r.table_name || ' FOR ' || v_owner || '.' || r.table_name;
      run_ddl(v_ddl, p_script, p_execute);
    end loop;
  end if;

  if p_views then
    --build public synonyms for views
    for r in v loop 
      --CREATE OR REPLACE PUBLIC SYNONYM SH_FWEEK_PSCAT_SALES_MV FOR SH.SALES;
      v_ddl := 'CREATE OR REPLACE PUBLIC SYNONYM ' || v_owner || '_' || r.view_name || ' FOR ' || v_owner || '.' || r.view_name;
      run_ddl(v_ddl, p_script, p_execute);
    end loop;
  end if;

  if p_materialized_views then
    --build public synonyms for materialized views
    for r in mv loop 
      --CREATE OR REPLACE PUBLIC SYNONYM SH_FWEEK_PSCAT_SALES_MV FOR SH.SALES;
      v_ddl := 'CREATE OR REPLACE PUBLIC SYNONYM ' || v_owner || '_' || r.mview_name || ' FOR ' || v_owner || '.' || r.mview_name;
      run_ddl(v_ddl, p_script, p_execute);
    end loop;
  end if;

end create_public_synonyms;


procedure grant_select_on_object
(
    p_owner in varchar2, 
    p_object_name in varchar2, 
    p_user in varchar2, 
    p_script in boolean default true, 
    p_execute in boolean default false
)
is
  v_grant varchar2(1000);
begin
  v_grant := 'GRANT SELECT ON ' || p_owner || '.' || p_object_name || ' TO ' || p_user;
  run_ddl(v_grant, p_script, p_execute);
end grant_select_on_object;

procedure grant_select_privileges
(
    p_user in varchar2,
    p_tables in boolean default false,
    p_views in boolean default true,
    p_materialized_views in boolean default true,
    p_script in boolean default true,
    p_execute in boolean default false
)
is

  v_owner varchar2(30) := user;
  v_grant varchar2(1000);

  cursor t is
  select
  table_name as object_name
  from user_tables
  where table_name not like '%MV'
  order by table_name;

  cursor v is
  select
  view_name as object_name
  from user_views
  order by view_name;

  cursor mv is
  select
  mview_name as object_name
  from user_mviews
  order by mview_name;
  
begin

  if p_tables then
    for r in t loop
      grant_select_on_object(v_owner, r.object_name, p_user, p_script, p_execute);
    end loop;
  end if;

  if p_views then
    for r in v loop
      grant_select_on_object(v_owner, r.object_name, p_user, p_script, p_execute);
    end loop;
  end if;

  if p_materialized_views then
    for r in mv loop
      grant_select_on_object(v_owner, r.object_name, p_user, p_script, p_execute);
    end loop;
  end if;

end grant_select_privileges;

function public_synonym_exists
(
    p_view_name in varchar2
) return boolean
is
  --v_exists boolean := false;
  v_count number := 0;
begin
  select count(*) into v_count 
  from all_synonyms
  where owner = 'PUBLIC'
  and synonym_name = p_view_name;
  --if v_count = 1 then
  --  v_exists := true;
  --end if;
  return (v_count = 1);
end public_synonym_exists;

procedure create_view_as_select
(
    p_owner in varchar2,
    p_object_name in varchar2,
    p_user in varchar2,
    p_view_name in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_ddl varchar2(1000);
begin
  --CREATE OR REPLACE VIEW SH_SALES_V AS SELECT * FROM SH.SALES;
  v_ddl := 'CREATE OR REPLACE VIEW ' || p_user || '.' || p_view_name;
  v_ddl := v_ddl || ' AS SELECT * FROM ' || p_owner || '.' || p_object_name;
  --dont create user views that duplicate public synonyms
  if not public_synonym_exists(p_view_name) then
    run_ddl(v_ddl, p_script, p_execute);
  end if;
end create_view_as_select;

procedure create_views_for_user
(
    p_user in varchar2,
    p_tables in boolean default true,
    p_views in boolean default true,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_view_name varchar2(128);
  v_ddl varchar2(1000);
  v_owner varchar2(30) := user;

  cursor t is
  select
  table_name 
  from user_tables 
  where table_name not like '%MV'
  order by table_name;

  cursor v is
  select 
  view_name, rtrim(view_name,'_V') user_view_base
  from user_views
  order by view_name;

begin

  if p_tables then
    --build user views for tables
    for r in t loop 
      v_view_name := v_owner || '_' || r.table_name || '_V';
      create_view_as_select(v_owner, r.table_name, p_user, v_view_name, p_script, p_execute);
    end loop;
  end if;

  if p_views then
  --build user views for tables
    for r in v loop 
      v_view_name := v_owner || '_' || r.user_view_base || '_V';
      create_view_as_select(v_owner, r.view_name, p_user, v_view_name, p_script, p_execute);
    end loop;
  end if;

end create_views_for_user;

function table_exists
(
    p_table in varchar2
) return boolean
is
  v_count number := 0;
begin
  select count(*) into v_count
  from user_tables
  where table_name = p_table;
  
  return (v_count = 1);
end table_exists; 


function table_rowcount
(
    p_table in varchar2
) return number
is
  v_dml varchar2(1000);
  i number;
begin
  v_dml := 'SELECT COUNT(*) FROM ' || p_table;
  execute immediate v_dml into i;
  return i;
end table_rowcount;

function table_rowcounts_match
(
    p_table in varchar2,
    p_compare_table in varchar2
) return boolean
is
  i_table number;
  i_compare number;
begin

  i_table := table_rowcount(p_table);
  i_compare := table_rowcount(p_compare_table);
  
  return (i_table = i_compare);

end table_rowcounts_match;

function get_table_drop_ddl
(
    p_table in varchar2,
    p_purge_storage in boolean default false
) return varchar2
is
  v_ddl varchar2(1000);
begin
  v_ddl := 'DROP TABLE ' || p_table;
  if p_purge_storage then
    v_ddl := v_ddl || ' PURGE';
  end if;
  return v_ddl;
end get_table_drop_ddl;

function get_create_table_as_select
(
    p_source_table in varchar2,
    p_suffix in varchar2 default 'TEMP',
    p_create_empty in boolean default true,
    p_tablespace in varchar2 default null,
    p_logging in boolean default true,
    p_compress in boolean default false
) return varchar2
is
  v_ddl varchar2(4000);
  v_owner varchar2(30) := user;
begin

  v_ddl := 'CREATE TABLE ' || v_owner || '.' || p_source_table || '_' || p_suffix;
  if p_tablespace is not null then
    v_ddl := v_ddl || ' TABLESPACE ' || p_tablespace;
  end if;
  if p_compress then
    v_ddl := v_ddl || ' COMPRESS BASIC';
  end if;
  if p_logging then
    v_ddl := v_ddl || ' LOGGING';
  else
    v_ddl := v_ddl || ' NOLOGGING';
  end if;
  v_ddl := v_ddl || ' AS SELECT  * FROM ' || p_source_table;
  if p_create_empty then
    v_ddl := v_ddl || ' WHERE 1 = 0';
  end if;
  return v_ddl;

end get_create_table_as_select;

function get_table_truncate_ddl
(
    p_table in varchar2,
    p_drop_storage in boolean default true,
    p_cascade in boolean default false
) return varchar2
is
  v_ddl varchar2(1000);
begin

  v_ddl := 'TRUNCATE TABLE ' || p_table;
  if p_drop_storage then
    v_ddl := v_ddl || ' DROP STORAGE';
  else
    v_ddl := v_ddl || ' REUSE STORAGE';
  end if;
  if p_cascade then
    v_ddl := v_ddl || ' CASCADE';
  end if;

  return v_ddl;
end get_table_truncate_ddl;




function get_insert_dml
(
    p_target_table in varchar2,
    p_source_table in varchar2,
    p_direct_path_load in boolean default true
) return varchar2
is
  v_ddl varchar2(32000);
  v_cols varchar2(32000);
  v_insert varchar2(32000);
  v_select varchar2(32000);

  cursor cols is
  select
  tc.column_name
  from 
  user_tab_columns tc
  where tc.table_name = p_source_table
  order by tc.column_id;

begin
  --get the set of columns using the source table
  for c in cols loop
    --insert /*+APPEND*/ into target_table (c1,c2,c3) select c1,c2,c3 from source_table
    v_cols := v_cols || case when v_cols is null then null else ', ' end || c.column_name;
  end loop;

  v_insert := 'INSERT ';
  if p_direct_path_load then
    v_insert := v_insert || '/*+APPEND*/';
  end if;

  v_insert := v_insert || ' INTO ' || p_target_table || '(' || v_cols || ')';
  v_select := ' SELECT ' || v_cols || ' FROM ' || p_source_table;
  return (v_insert || v_select);

end get_insert_dml;

procedure alter_table_foreign_key
(
    p_owner in varchar2,
    p_table in varchar2,
    p_constraint in varchar2,
    p_enabled in boolean default false,
    p_validate in boolean default false,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_ddl varchar2(1000);
begin
  --ALTER TABLE SH.COSTS ENABLE  CONSTRAINT COSTS_FK_TIMES
  --ALTER TABLE SH.COSTS ENABLE NOVALIDATE  CONSTRAINT COSTS_FK_TIMES
  --ALTER TABLE SH.COSTS DISABLE  CONSTRAINT COSTS_FK_TIMES
  --ALTER TABLE SH.COSTS DISABLE VALIDATE  CONSTRAINT COSTS_FK_TIMES
  
  v_ddl := 'ALTER TABLE ' || p_owner || '.' || p_table;
  case 
  when p_enabled and p_validate then
    v_ddl := v_ddl || ' ENABLE';
  when p_enabled and not p_validate then
    v_ddl := v_ddl || ' ENABLE NOVALIDATE';
  when not p_enabled and not p_validate then
    v_ddl := v_ddl || ' DISABLE';
  when not p_enabled and p_validate then
    v_ddl := v_ddl || ' DISABLE VALIDATE';
  end case;
  v_ddl := v_ddl || ' CONSTRAINT ' || p_constraint;  
  run_ddl(v_ddl, p_script, p_execute);
  
end alter_table_foreign_key;

procedure alter_related_foreign_keys
(
    p_referenced_table in varchar2,
    p_enabled in boolean default false,
    p_validate in boolean default false,
    p_script in boolean default true,
    p_execute in boolean default false
)
is

  v_owner varchar2(30) := user;

  cursor c is
  select 
  fk.owner, 
  fk.constraint_name, 
  fk.table_name 
  from 
  all_constraints fk, 
  all_constraints pk 
  where 
  fk.CONSTRAINT_TYPE = 'R' 
  and pk.owner = v_owner 
  and fk.r_owner = pk.owner
  and fk.R_CONSTRAINT_NAME = pk.CONSTRAINT_NAME
  and pk.TABLE_NAME = p_referenced_table;
           
begin

  for r in c loop
    alter_table_foreign_key(
                   r.owner, 
                   r.table_name, 
                   r.constraint_name, 
                   p_enabled, 
                   p_validate, 
                   p_script, 
                   p_execute);
  end loop;
  
end alter_related_foreign_keys;


procedure move_table
(
    p_table in varchar2,
    p_update_indexes in boolean default false,
    p_move_online in boolean default false,
    p_script in boolean default true,
    p_execute in boolean default false,
    p_tablespace in varchar2 default null
)
is
  v_ddl varchar2(1000);
  v_owner varchar2(30) := user;
begin
  --alter table "SH"."CHANNELS" move tablespace "SALES_HISTORY_STAGING"
  v_ddl := 'ALTER TABLE ' || v_owner || '.' || p_table || ' MOVE';
  if p_tablespace is not null then
    v_ddl := v_ddl || ' TABLESPACE ' || p_tablespace;
  end if;
  if p_update_indexes then
    v_ddl := v_ddl || ' UPDATE INDEXES';
  end if;
  if p_move_online then
    v_ddl := v_ddl || ' ONLINE';
  end if;

  run_ddl(v_ddl, p_script, p_execute);

end move_table;

procedure move_index
(
    p_index in varchar2, 
    p_script in boolean default true, 
    p_execute in boolean default false, 
    p_tablespace in varchar2 default null
)
is
  v_ddl varchar2(100);
begin
  --move non partitioned index
  --alter index "SH"."TIMES_PK" rebuild tablespace sales_history_index
  v_ddl := 'ALTER INDEX ' || p_index || ' REBUILD';
  if p_tablespace is not null then
    v_ddl := v_ddl || ' TABLESPACE ' || p_tablespace;
  end if;

  run_ddl(v_ddl, p_script, p_execute);

end move_index;

procedure move_table_partition_single
(
    p_table in varchar2, 
    p_partition_name in varchar2,
    p_tablespace in varchar2 default null,  
    p_logging in boolean default true,
    p_script in boolean default true, 
    p_execute in boolean default false 
)
is
  v_ddl varchar2(1000);
begin
  --move the partition to the new tablespace
  --ALTER TABLE costs MOVE PARTITION COSTS_1997 TABLESPACE sales_history_data NOLOGGING;

  --show the current partition information for the table
  --dbms_output.put_line(p_table || ' partition=' || p_partition_name || ' tablespace=' || r.tablespace_name);
  v_ddl :=  'ALTER TABLE ' || p_table || ' MOVE PARTITION ' || p_partition_name;
  if p_tablespace is not null then
  v_ddl := v_ddl || ' TABLESPACE ' || p_tablespace;
  end if;
  if not p_logging then
  v_ddl := v_ddl || ' NOLOGGING';  
  end if;
  run_ddl(v_ddl, p_script, p_execute);

end move_table_partition_single;

procedure move_table_partitions
(
    p_table in varchar2, 
    p_tablespace in varchar2 default null,   
    p_logging in boolean default true,
    p_script in boolean default true, 
    p_execute in boolean default false 
)
is
  v_ddl varchar2(1000);

  cursor c is
  select table_name, partition_name, tablespace_name
  from user_tab_partitions 
  where table_name = p_table
  order by partition_name;

begin
  --move the partitions to the new tablespace
  --ALTER TABLE costs MOVE PARTITION COSTS_1997 TABLESPACE sales_history_data NOLOGGING;

  for r in c loop

    move_table_partition_single(p_table, r.partition_name, p_tablespace, p_logging, p_script, p_execute);

  end loop;

end move_table_partitions;

procedure move_index_partition_single
(
    p_index in varchar2, 
    p_partition_name in varchar2,
    p_script in boolean default true, 
    p_execute in boolean default false, 
    p_tablespace in varchar2 default null
)
is
  v_ddl varchar2(1000);
begin
  --move the index partition to the new tablespace
  --ALTER INDEX COSTS_PROD_BIX REBUILD PARTITION COSTS_Q4_2003 tablespace sales_history_index

  --show the current partition information for the index
  --dbms_output.put_line(p_index || ' partition=' || r.partition_name || ' tablespace=' || r.tablespace_name || ' STATUS= ' || r.status);
  v_ddl :=  'ALTER INDEX ' || p_index || ' REBUILD PARTITION ' || p_partition_name;
  if p_tablespace is not null then
    v_ddl := v_ddl || ' TABLESPACE ' || p_tablespace;
  end if;

  run_ddl(v_ddl, p_script, p_execute);

end move_index_partition_single;

procedure move_index_partitions
(
    p_index in varchar2, 
    p_script in boolean default true, 
    p_execute in boolean default false, 
    p_tablespace in varchar2 default null
)
is
  v_ddl varchar2(1000);

  cursor c is
  select 
  partition_name, 
  status, 
  tablespace_name 
  from user_ind_partitions
  where index_name = p_index
  order by partition_name;

begin
  --move the index partitions to the new tablespace
  --ALTER INDEX COSTS_PROD_BIX REBUILD PARTITION COSTS_Q4_2003 tablespace sales_history_index

  for r in c loop

    move_index_partition_single(p_index, r.partition_name, p_script, p_execute, p_tablespace);
  
  end loop;

end move_index_partitions;

procedure move_index_partitions_for_table
(
    p_table in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false,
    p_tablespace in varchar2 default null    
)
is

cursor c is
select
index_name 
from user_indexes
where 
partitioned = 'YES'
and table_name = p_table
order by index_name;

begin

for r in c loop

  move_index_partitions(r.index_name, p_script, p_execute,p_tablespace);

end loop;

end move_index_partitions_for_table;


procedure rebuild_index_partitions
(
    p_index in varchar2, 
    p_unusable_only in boolean default true,
    p_script in boolean default true, 
    p_execute in boolean default false
)
is
  v_ddl varchar2(1000);

  cursor c is
  select 
  partition_name, 
  status, 
  tablespace_name 
  from user_ind_partitions
  where index_name = p_index
  order by partition_name;

begin
  --rebuild the index partitions in their current tablespaces
  --ALTER INDEX COSTS_PROD_BIX REBUILD PARTITION COSTS_Q4_2003

  for r in c loop
    if (not p_unusable_only) or (p_unusable_only and r.status <> 'USABLE') then 
      move_index_partition_single(p_index, r.partition_name, p_script, p_execute);
    end if;
  end loop;

end rebuild_index_partitions;


procedure rebuild_index_partitions_for_table
(
    p_table in varchar2,
    p_unusable_only in boolean default true,
    p_script in boolean default true,
    p_execute in boolean default false
)
is

cursor c is
select
index_name 
from user_indexes
where 
partitioned = 'YES'
and table_name = p_table
order by index_name;

begin

for r in c loop

  rebuild_index_partitions(r.index_name, p_unusable_only, p_script, p_execute);

end loop;

end rebuild_index_partitions_for_table;

procedure rename_table_partition
 (
    p_table in varchar2, 
    p_partition_name in varchar2, 
    p_new_partition_name in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
 )
 is
   v_ddl varchar2(128);
 begin
  --rename table partitions as needed
  --ALTER TABLE costs RENAME PARTITION COSTS_H2_1997 TO COSTS_1997;
  v_ddl := 'ALTER TABLE ' || p_table || ' RENAME PARTITION ' || p_partition_name || ' TO ' || p_new_partition_name;

  run_ddl(v_ddl, p_script, p_execute);

end rename_table_partition;

procedure rename_index_partition
(
    p_index in varchar2, 
    p_partition_name in varchar2, 
    p_new_partition_name in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_ddl varchar2(128);
begin
  --rename index partitions
  -- ALTER INDEX COSTS_TIME_BIX RENAME PARTITION COSTS_Q4_2003 TO COSTS_2003;
  v_ddl := 'ALTER INDEX ' || p_index || ' RENAME PARTITION ' || p_partition_name || ' TO ' || p_new_partition_name;

  run_ddl(v_ddl, p_script, p_execute);

end rename_index_partition;

procedure merge_range_partitions
(
    p_table in varchar2,
    p_source_partitions in varchar2,
    p_target_partition in varchar2,
    p_update_indexes in boolean default true,
    p_online in boolean default true,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_ddl varchar2(4000);
begin
  --merge quarterly partitions into yearly partitions
  --local index partitions get merged with update indexes clause
  --ALTER TABLE costs 
  --  MERGE PARTITIONS COSTS_Q1_2003, COSTS_Q2_2003,COSTS_Q3_2003,COSTS_Q4_2003 INTO PARTITION COSTS_Q4_2003
  --  UPDATE INDEXES 
  --  ONLINE;
  v_ddl := 'ALTER TABLE ' || p_table;
  v_ddl := v_ddl || ' MERGE PARTITIONS ' || p_source_partitions || ' INTO PARTITION ' || p_target_partition;
  if p_update_indexes then
    v_ddl := v_ddl || ' UPDATE INDEXES';
  end if;
  if p_online then
    v_ddl := v_ddl || ' ONLINE';
  end if;

  run_ddl(v_ddl, p_script, p_execute);

end merge_range_partitions;

procedure add_range_partition
(
    p_table in varchar2,
    p_partition_name in varchar2,
    p_range_expression in varchar2,
    p_tablespace in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_ddl varchar2(4000);
begin
  --adding a new range partition
  /*
  ALTER TABLE costs
      ADD PARTITION costs_2023 VALUES LESS THAN (TO_DATE(' 2024-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS')) segment creation deferred
      PCTFREE 5 PCTUSED 40 INITRANS 1 MAXTRANS 255 
      NOCOMPRESS NOLOGGING 
      TABLESPACE sales_history_data;
  */
  v_ddl := 'ALTER TABLE ' || p_table;
  v_ddl := v_ddl || ' ADD PARTITION ' || p_partition_name;
  v_ddl := v_ddl || ' VALUES LESS THAN (' || p_range_expression || ') SEGMENT CREATION DEFERRED';
  v_ddl := v_ddl || ' PCTFREE 0 PCTUSED 40 INITRANS 1 MAXTRANS 255';
  v_ddl := v_ddl || ' COMPRESS BASIC NOLOGGING';
  v_ddl := v_ddl || ' TABLESPACE ' || p_tablespace;

  run_ddl(v_ddl, p_script, p_execute);

end add_range_partition;

procedure add_range_partition_year
(
    p_table in varchar2,
    p_year in number,
    p_tablespace in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_range_expression varchar2(1000);
  v_partition_name varchar2(128);
begin
  --adding a new range partition
  /*
  ALTER TABLE costs
      ADD PARTITION costs_2023 VALUES LESS THAN (TO_DATE(' 2024-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS')) segment creation deferred
      PCTFREE 5 PCTUSED 40 INITRANS 1 MAXTRANS 255 
      NOCOMPRESS NOLOGGING 
      TABLESPACE sales_history_data;
  */

  v_partition_name := p_table || '_' || p_year;
  v_range_expression := 'TO_DATE('' ' || to_char(p_year + 1) || '''-01-01 00:00:00'',''SYYYY-MM-DD HH24:MI:SS'')';

  add_range_partition(p_table, v_partition_name, v_range_expression, p_tablespace, p_script, p_execute);

end add_range_partition_year;

procedure add_range_partition_quarters
(
    p_table in varchar2,
    p_year in number,
    p_tablespace in varchar2,
    p_script in boolean default true,
    p_execute in boolean default false
)
is
  v_range_expression varchar2(1000);
  v_partition_name varchar2(128);
begin
  --adding a new range partition
  /*
  ALTER TABLE costs
      ADD PARTITION costs_2023 VALUES LESS THAN (TO_DATE(' 2024-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS')) segment creation deferred
      PCTFREE 5 PCTUSED 40 INITRANS 1 MAXTRANS 255 
      NOCOMPRESS NOLOGGING 
      TABLESPACE sales_history_data;
  */

  v_partition_name := p_table || '_' || p_year || '_Q1';
  v_range_expression := 'TO_DATE('' ' || to_char(p_year) || '-04-01 00:00:00'',''SYYYY-MM-DD HH24:MI:SS'')';
  add_range_partition(p_table, v_partition_name, v_range_expression, p_tablespace, p_script, p_execute);

  v_partition_name := p_table || '_' || p_year || '_Q2';
  v_range_expression := 'TO_DATE('' ' || to_char(p_year) || '-07-01 00:00:00'',''SYYYY-MM-DD HH24:MI:SS'')';
  add_range_partition(p_table, v_partition_name, v_range_expression, p_tablespace, p_script, p_execute);

  v_partition_name := p_table || '_' || p_year || '_Q3';
  v_range_expression := 'TO_DATE('' ' || to_char(p_year) || '-10-01 00:00:00'',''SYYYY-MM-DD HH24:MI:SS'')';
  add_range_partition(p_table, v_partition_name, v_range_expression, p_tablespace, p_script, p_execute);

  v_partition_name := p_table || '_' || p_year || '_Q4';
  v_range_expression := 'TO_DATE('' ' || to_char(p_year + 1) || '-01-01 00:00:00'',''SYYYY-MM-DD HH24:MI:SS'')';
  add_range_partition(p_table, v_partition_name, v_range_expression, p_tablespace, p_script, p_execute);

end add_range_partition_quarters;

--package initialization
begin
  null;
end admin$schema;