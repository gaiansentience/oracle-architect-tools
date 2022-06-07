/*
drop table test purge;

create table test nologging compress basic parallel 4 as select /*+ parallel(src, 4)*/ * from oa_dpc_etl_json_table_v src;
*/

EXPLAIN PLAN FOR
create table test nologging compress basic parallel 4 as select /*+ gather_plan_statistics parallel(src, 4)*/ * from oa_dpc_etl_json_table_v src;



SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);

/*

Plan hash value: 535825993
 
----------------------------------------------------------------------------------------------------------------------------------------------
| Id  | Operation                          | Name               | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |    TQ  |IN-OUT| PQ Distrib |
----------------------------------------------------------------------------------------------------------------------------------------------
|   0 | CREATE TABLE STATEMENT             |                    |   278M|  4294G|       |   156M  (1)| 01:41:48 |        |      |            |
|   1 |  PX COORDINATOR                    |                    |       |       |       |            |          |        |      |            |
|   2 |   PX SEND QC (RANDOM)              | :TQ10001           |   278M|  4294G|       |   222K  (1)| 00:00:09 |  Q1,01 | P->S | QC (RAND)  |
|   3 |    LOAD AS SELECT (HYBRID TSM/HWMB)| TEST               |       |       |       |            |          |  Q1,01 | PCWP |            |
|   4 |     OPTIMIZER STATISTICS GATHERING |                    |   278M|  4294G|       |   222K  (1)| 00:00:09 |  Q1,01 | PCWP |            |
|   5 |      NESTED LOOPS                  |                    |   278M|  4294G|       |   222K  (1)| 00:00:09 |  Q1,01 | PCWP |            |
|   6 |       VIEW                         |                    | 34056 |   535M|       |   569   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   7 |        SORT GROUP BY               |                    | 34056 |  1496K|    10M|   569   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   8 |         PX RECEIVE                 |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,01 | PCWP |            |
|   9 |          PX SEND HASH              | :TQ10000           |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | P->P | HASH       |
|  10 |           PX BLOCK ITERATOR        |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWC |            |
|  11 |            TABLE ACCESS FULL       | OA_DPC_PAIR_VALUES |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWP |            |
|  12 |       JSONTABLE EVALUATION         |                    |       |       |       |            |          |  Q1,01 | PCWP |            |
----------------------------------------------------------------------------------------------------------------------------------------------
 
Note
-----
   - Degree of Parallelism is 4 because of table property

*/
