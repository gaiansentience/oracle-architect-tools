set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_pipelined;
    
end;

/****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.03.29.408000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0330 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7420 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.2780 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0270 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.7450 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  07.2570 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 01-JUN-22 10.03.45.490000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.25.32.086954000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0423 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9671 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.7605 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0277 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9652 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.9192 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 19  TESTING TIME 30-MAY-22 05.25.53.769138000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/

/*****
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.26.02.515000000 PM AMERICA/DENVER
     STARTING TEST
----------------------------------------------------------------------------------------------------
***using pipelined function to pivot row name|value pairs from nested tables to object hierarchy***
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY (AVOIDS JSON COMPLETELY
000,017 records in  00.0360 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9420 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.1970 seconds from dynamic_pivot_pipeline_objects_xlarge_v
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
000,017 records in  00.0270 seconds from dynamic_pivot_pipeline_objects_v
001,700 records in  00.9270 seconds from dynamic_pivot_pipeline_objects_large_v
017,000 records in  09.1410 seconds from dynamic_pivot_pipeline_objects_xlarge_v
----------------------------------------------------------------------------------------------------
     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES
     ORACLE VERSION 21  TESTING TIME 30-MAY-22 05.26.22.785000000 PM AMERICA/DENVER
     FINISHED TEST
----------------------------------------------------------------------------------------------------
*****/
