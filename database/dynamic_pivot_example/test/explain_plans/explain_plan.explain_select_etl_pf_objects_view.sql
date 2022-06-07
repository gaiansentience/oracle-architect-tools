EXPLAIN PLAN FOR
select /*+ gather_plan_statistics parallel(src, 4) */ * from oa_dpc_etl_pf_objects_v src;

SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


/*
--pipelined function is parallel enabled
--optimizer should choose a parallel path
Plan hash value: 2828649715
 
----------------------------------------------------------------------------------------------------------------
| Id  | Operation                         | Name               | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |
----------------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT                  |                    |  8168 | 16336 |       |    29   (0)| 00:00:01 |
|   1 |  COLLECTION ITERATOR PICKLER FETCH| GET_SHAPES         |  8168 | 16336 |       |    29   (0)| 00:00:01 |
|   2 |   VIEW                            |                    | 34056 |  5021K|       |   569   (1)| 00:00:01 |
|   3 |    SORT GROUP BY                  |                    | 34056 |  1496K|    10M|   569   (1)| 00:00:01 |
|   4 |     TABLE ACCESS FULL             | OA_DPC_PAIR_VALUES |   190K|  8349K|       |   125   (0)| 00:00:01 |
----------------------------------------------------------------------------------------------------------------

*/