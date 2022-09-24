with multipliers as (
    select
        1024 as kb,
        1024 * 1024 as mb,
        1024 * 1024 * 1024 as gb
    from dual
), tablespaces as (
    select
        *
    from
        dba_tablespaces
), dbfiles as (
    select
        df.file_name
       ,df.file_id
       ,df.tablespace_name
       ,df.blocks
       --,bytes / m.kb file_kb
       --,maxbytes / m.kb as max_kb
       --,user_bytes / m.kb as user_kb       
       ,round(df.bytes / m.mb,2) as file_mb
       ,round(df.maxbytes / m.mb,2) as max_mb
       ,round(df.user_bytes / m.mb,2) as user_mb       
       ,round(df.bytes / m.gb,4) as file_gb
       ,round(df.maxbytes / m.gb,4) as max_gb
       ,round(df.user_bytes / m.gb,4) as user_gb
    from
        dba_data_files df 
        cross join multipliers m
), freespace_base as (
    select
        fs.tablespace_name
        ,fs.file_id
        ,fs.blocks
        --,fs.bytes / m.kb as free_kb
        ,round(fs.bytes / m.mb,2) as free_mb
        ,round(fs.bytes / m.gb,4) as free_gb
    from 
        dba_free_space fs
        cross join multipliers m
), freespace as (
    select
        fs.tablespace_name
       ,fs.file_id
       ,df.file_name
       ,sum(fs.blocks) as free_ttl_blocks
       ,round(sum(fs.free_mb)/min(df.file_mb),4)*100 as free_pct
       ,round((min(df.file_mb)-sum(fs.free_mb))/min(df.file_mb),4)*100 as used_pct
       --
       --,min(df.file_kb) as file_kb
       --,min(df.max_kb) as max_file_kb
       --,sum(fs.free_kb) as free_ttl_kb
       --
       ,min(df.file_mb) as file_mb
       ,min(df.max_mb) as max_file_mb
       ,sum(fs.free_mb) as free_ttl_mb
       --
       ,min(df.file_gb) as file_gb
       ,min(df.max_gb) as max_file_gb
       ,sum(fs.free_gb) as free_ttl_gb
    from
        freespace_base fs
        join dbfiles df
        on fs.file_id = df.file_id and fs.tablespace_name = df.tablespace_name
    group by
        fs.tablespace_name
       ,fs.file_id
       ,df.file_name
    order by
        fs.tablespace_name
), extents_base as (
    select
        e.owner
       ,e.segment_name
       ,e.segment_type
       ,e.tablespace_name
       ,e.blocks
       ,e.bytes
       ,e.bytes / m.kb ttl_kb
       ,round(e.bytes / m.mb,2) ttl_mb
       ,round(e.bytes / m.gb,4) ttl_gb
    from
        dba_extents e
        cross join multipliers m
), extents as (
    select
        e.owner
       ,e.segment_name
       ,e.segment_type
       ,e.tablespace_name
       ,sum(e.blocks) ttl_blocks
       ,sum(e.ttl_kb) ttl_kb
       ,sum(e.ttl_mb) ttl_mb
       ,sum(e.ttl_gb) ttl_gb
    from
        extents_base e
    group by
        e.tablespace_name
       ,e.owner
       ,e.segment_type
       ,e.segment_name
    order by
        e.tablespace_name
        --,e.owner
       ,sum(e.ttl_kb) desc
), userextents as (
    select
        e.owner
        ,e.segment_name
        ,e.segment_type
        ,e.tablespace_name
        ,e.ttl_blocks
        ,e.ttl_kb
        ,e.ttl_mb
        ,e.ttl_gb
    from
        extents e
    where
        e.tablespace_name not in ('SYSAUX','SYSTEM') 
        and e.tablespace_name not like 'UNDO%'
), userspace as (
    select
        e.owner
        ,e.tablespace_name
        ,e.segment_type
        ,sum(e.ttl_blocks) as ttl_blocks
        ,sum(e.ttl_kb) as ttl_kb
        ,sum(e.ttl_mb) as ttl_mb
        ,sum(e.ttl_gb) as ttl_gb
    from userextents e
    group by
        e.owner
        ,e.tablespace_name
        ,e.segment_type
    order by
        e.owner
        ,sum(e.ttl_mb) desc
)
select
    *
from 
--tablespaces
--dbfiles where tablespace_name like 'DEV\_%' escape '\'
freespace where tablespace_name like 'DEV\_%' escape '\'
--extents where tablespace_name like 'DEV\_%' escape '\'
--userspace where owner = 'DEV'
--userextents  where owner = 'DEV'