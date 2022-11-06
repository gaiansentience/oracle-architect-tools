create or replace package admin$schema
authid current_user
as

    procedure run_statement
    (
        p_statement in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure create_role
    (
        p_role in varchar2,
        p_script in boolean default true, 
        p_execute in boolean default false
    );
    
    procedure grant_role
    (
        p_role in varchar2,
        p_grantee in varchar2,
        p_grant_option in boolean default false,
        p_script in boolean default true, 
        p_execute in boolean default false
    );        
    
    function get_synonym_ddl
    (
        p_synonym_name in varchar2, 
        p_object in varchar2, 
        p_owner in varchar2, 
        p_public in boolean default false
    ) return varchar2;
    
    procedure create_public_synonyms
    (
        p_tables in boolean default true,
        p_views in boolean default true,
        p_materialized_views in boolean default true,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure grant_dml_privileges
    (
        p_user in varchar2,
        p_tables in boolean default false,
        p_views in boolean default true,
        p_insert in boolean default true,
        p_update in boolean default true,
        p_delete in boolean default true,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure grant_select_privileges
    (
        p_user in varchar2,
        p_tables in boolean default false,
        p_views in boolean default true,
        p_materialized_views in boolean default true,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure create_views_for_user
    (
        p_user in varchar2,
        p_tables in boolean default true,
        p_views in boolean default true,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    function table_exists
    (
        p_table in varchar2
    ) return boolean;
    
    function table_rowcount
    (
        p_table in varchar2
    ) return number;
    
    function table_rowcounts_match
    (
        p_table in varchar2,
        p_compare_table in varchar2
    ) return boolean;
    
    function get_table_drop_ddl
    (
        p_table in varchar2,
        p_purge_storage in boolean default false
    ) return varchar2;
    
    function get_create_table_as_select
    (
        p_source_table in varchar2,
        p_suffix in varchar2 default 'TEMP',
        p_create_empty in boolean default true,
        p_tablespace in varchar2 default null,
        p_logging in boolean default true,
        p_compress in boolean default false
    ) return varchar2;
    
    function get_table_truncate_ddl
    (
        p_table in varchar2,
        p_drop_storage in boolean default true,
        p_cascade in boolean default false
    ) return varchar2;
    
    function get_insert_dml
    (
        p_target_table in varchar2,
        p_source_table in varchar2,
        p_direct_path_load in boolean default true
    ) return varchar2;
    
    procedure alter_table_foreign_key
    (
        p_owner in varchar2,
        p_table in varchar2,
        p_constraint in varchar2,
        p_enabled in boolean default false,
        p_validate in boolean default false,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure alter_related_foreign_keys
    (
        p_referenced_table in varchar2,
        p_enabled in boolean default false,
        p_validate in boolean default false,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    --pass null for tablespace to rebuild segments only
    procedure move_table
    (
        p_table in varchar2,
        p_update_indexes in boolean default false,
        p_move_online in boolean default false,
        p_script in boolean default true,
        p_execute in boolean default false,
        p_tablespace in varchar2 default null
    );
    
    --move all non partitioned tables
    --pass null for tablespace to rebuild segments only
    procedure move_tables
    (    
        p_move_online in boolean default false,
        p_script in boolean default true,
        p_execute in boolean default false,
        p_tablespace in varchar2 default null
    );
    
    --pass null for tablespace to rebuild segments only
    procedure move_index
    (
        p_index in varchar2, 
        p_script in boolean default true, 
        p_execute in boolean default false, 
        p_tablespace in varchar2 default null
    );
    
    --move all non partitioned indexes
    --pass null for tablespace to rebuild segments only
    procedure move_indexes
    (
        p_script in boolean default true, 
        p_execute in boolean default false, 
        p_tablespace in varchar2 default null
    );
    
    procedure move_table_partition_single
    (
        p_table in varchar2, 
        p_partition_name in varchar2,
        p_tablespace in varchar2 default null,  
        p_logging in boolean default true,
        p_script in boolean default true, 
        p_execute in boolean default false 
    );
    
    procedure move_table_partitions
    (
        p_table in varchar2, 
        p_tablespace in varchar2 default null,  
        p_logging in boolean default true,
        p_script in boolean default true, 
        p_execute in boolean default false 
    );
    
    procedure move_index_partition_single
    (
        p_index in varchar2, 
        p_partition_name in varchar2,
        p_script in boolean default true, 
        p_execute in boolean default false, 
        p_tablespace in varchar2 default null
    );
    
    procedure move_index_partitions
    (
        p_index in varchar2, 
        p_script in boolean default true, 
        p_execute in boolean default false, 
        p_tablespace in varchar2 default null
    );
    
    procedure move_index_partitions_table
    (
        p_table in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false,
        p_tablespace in varchar2 default null    
    );
    
    procedure rebuild_index_partitions
    (
        p_index in varchar2, 
        p_unusable_only in boolean default true,
        p_script in boolean default true, 
        p_execute in boolean default false
    );
    
    procedure rebuild_index_partitions_table
    (
        p_table in varchar2,
        p_unusable_only in boolean default true,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure rename_table_partition
    (
        p_table in varchar2, 
        p_partition_name in varchar2, 
        p_new_partition_name in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false
    );
     
    procedure rename_index_partition
    (
        p_index in varchar2, 
        p_partition_name in varchar2, 
        p_new_partition_name in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure merge_range_partitions
    (
        p_table in varchar2,
        p_source_partitions in varchar2,
        p_target_partition in varchar2,
        p_update_indexes in boolean default true,
        p_online in boolean default true,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure add_range_partition
    (
        p_table in varchar2,
        p_partition_name in varchar2,
        p_range_expression in varchar2,
        p_tablespace in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure add_range_partition_year
    (
        p_table in varchar2,
        p_year in number,
        p_tablespace in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure add_range_partition_quarters
    (
        p_table in varchar2,
        p_year in number,
        p_tablespace in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false
    );
    
    procedure create_directory
    (
        p_ora_dir in varchar2, 
        p_path in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false   
    );
    
    procedure drop_directory
    (
        p_ora_dir in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false      
    );
    
    procedure revoke_directory_access
    (
        p_user in varchar2, 
        p_ora_dir in varchar2,
        p_script in boolean default true,
        p_execute in boolean default false      
    );
    
    procedure grant_directory_access
    (
        p_user in varchar2, 
        p_ora_dir in varchar2, 
        p_write in boolean default false,
        p_script in boolean default true,
        p_execute in boolean default false      
    );

end admin$schema;