EXPLAIN PLAN FOR
select /*+ gather_plan_statistics */ * from oa_dpc_etl_ptf_rt_xml_v;

SET LINESIZE 130
SET PAGESIZE 0
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);


/*


Plan hash value: 3678160750
 
-----------------------------------------------------------------------------------------------------------------------------------------
| Id  | Operation                     | Name               | Rows  | Bytes |TempSpc| Cost (%CPU)| Time     |    TQ  |IN-OUT| PQ Distrib |
-----------------------------------------------------------------------------------------------------------------------------------------
|   0 | SELECT STATEMENT              |                    | 34056 |  2146M|       |   569   (1)| 00:00:01 |        |      |            |
|   1 |  PX COORDINATOR               |                    |       |       |       |            |          |        |      |            |
|   2 |   PX SEND QC (RANDOM)         | :TQ10001           | 34056 |  2146M|       |   569   (1)| 00:00:01 |  Q1,01 | P->S | QC (RAND)  |
|   3 |    POLYMORPHIC TABLE FUNCTION | F                  | 34056 |   535M|       |            |          |  Q1,01 | PCWC |            |
|   4 |     VIEW                      |                    | 34056 |  5021K|       |   569   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   5 |      SORT GROUP BY            |                    | 34056 |  1496K|    10M|   569   (1)| 00:00:01 |  Q1,01 | PCWP |            |
|   6 |       PX RECEIVE              |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,01 | PCWP |            |
|   7 |        PX SEND HASH           | :TQ10000           |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | P->P | HASH       |
|   8 |         PX BLOCK ITERATOR     |                    |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWC |            |
|   9 |          TABLE ACCESS FULL    | OA_DPC_PAIR_VALUES |   190K|  8349K|       |   125   (0)| 00:00:01 |  Q1,00 | PCWP |            |
-----------------------------------------------------------------------------------------------------------------------------------------
 
Polymorphic Table Function
------------------------------------------------------
 
   3 - type = row, Read Columns = (XML_DOC), New Columns  = (area, shading, depth, curvedArea, a_degrees, c_degrees, length, color, circumference, sumInteriorAngles, basePerimeter, side, volume, baseSides, totalSideArea, a_side, radius, slope, composition, b_side, sides, surfaceArea, width, interiorAngles, slantHeight, sideArea, c_side, sideLength, y_intercept, base, baseCircumference, b_degrees, equation, height, baseArea, totalSurfaceArea, lateralArea, baseLength), Pass Through Columns = (ITEM_ID, ITEM_NAME, ITEM_TYPE)
 
Note
-----
   - Degree of Parallelism is 4 because of table property
   - Unoptimized XML construct detected (enable XMLOptimizationCheck for more information)

*/