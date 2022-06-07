EXPLAIN PLAN FOR
select /*+ gather_plan_statistics */ * from oa_dpc_etl_xml_table_v;

SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


/*

Plan hash value: 715147448
 
-------------------------------------------------------------------------------------------------------------------------------------
| Id  | Operation                 | Name               | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |    TQ  |IN-OUT| PQ Distrib |
-------------------------------------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT          |                    |   278M|    58G|       |   222K  (1)| 00:00:09 |        |      |            |
|   1 |  PX COORDINATOR           |                    |       |       |       |            |          |        |      |            |
|   2 |   PX SEND QC (RANDOM)     | :TQ10001           |   278M|    58G|       |   222K  (1)| 00:00:09 |  Q1,01 | P->S | QC (RAND)  |
|   3 |    NESTED LOOPS           |                    |   278M|    58G|       |   222K  (1)| 00:00:09 |  Q1,01 | PCWP |            |
|   4 |     VIEW                  |                    | 34056 |  5021K|       |   569   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   5 |      SORT GROUP BY        |                    | 34056 |  1496K|    10M|   569   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   6 |       PX RECEIVE          |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,01 | PCWP |            |
|   7 |        PX SEND HASH       | :TQ10000           |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | P->P | HASH       |
|   8 |         PX BLOCK ITERATOR |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWC |            |
|   9 |          TABLE ACCESS FULL| OA_DPC_PAIR_VALUES |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWP |            |
|  10 |     XMLTABLE EVALUATION   |                    |       |       |       |            |          |  Q1,01 | PCWP |            |
-------------------------------------------------------------------------------------------------------------------------------------
 
Note
-----
   - Degree of Parallelism is 4 because of table property
   - Unoptimized XML construct detected (enable XMLOptimizationCheck for more information)
   
*/