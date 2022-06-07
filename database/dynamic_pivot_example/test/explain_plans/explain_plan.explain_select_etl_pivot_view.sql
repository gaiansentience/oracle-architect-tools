EXPLAIN PLAN FOR
select /*+ gather_plan_statistics */ * from oa_dpc_etl_pivot_v;

SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


/*

Plan hash value: 3951539355
 
-------------------------------------------------------------------------------------------------------------------------------------
| Id  | Operation                 | Name               | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |    TQ  |IN-OUT| PQ Distrib |
-------------------------------------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT          |                    |   190K|    13G|       |   667   (1)| 00:00:01 |        |      |            |
|   1 |  PX COORDINATOR           |                    |       |       |       |            |          |        |      |            |
|   2 |   PX SEND QC (RANDOM)     | :TQ10001           |   190K|    13G|       |   667   (1)| 00:00:01 |  Q1,01 | P->S | QC (RAND)  |
|   3 |    VIEW                   |                    |   190K|    13G|       |   667   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   4 |     TRANSPOSE             |                    |       |       |       |            |          |  Q1,01 | PCWC |            |
|   5 |      SORT GROUP BY PIVOT  |                    |   190K|  8349K|    10M|   667   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   6 |       PX RECEIVE          |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,01 | PCWP |            |
|   7 |        PX SEND HASH       | :TQ10000           |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | P->P | HASH       |
|   8 |         PX BLOCK ITERATOR |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWC |            |
|   9 |          TABLE ACCESS FULL| OA_DPC_PAIR_VALUES |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWP |            |
-------------------------------------------------------------------------------------------------------------------------------------
 
Note
-----
   - Degree of Parallelism is 4 because of table property

*/