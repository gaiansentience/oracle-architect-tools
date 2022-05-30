set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_pipelined;
    
end;

/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.09.35.644766000 PM AMERICA/DENVER
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0323 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  00.9424 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  09.4511 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from flat json to object hierarchy
00,017 records in  00.0101 seconds from dynamic_pivot_pipeline_objects_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
01,700 records in  00.9338 seconds from dynamic_pivot_pipeline_objects_large_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
17,000 records in  09.4757 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.09.56.490349000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES*****     *****/

/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.10.16.226000000 PM AMERICA/DENVER
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0290 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  00.9150 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  09.1040 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from flat json to object hierarchy
00,017 records in  00.0100 seconds from dynamic_pivot_pipeline_objects_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
01,700 records in  00.9200 seconds from dynamic_pivot_pipeline_objects_large_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
17,000 records in  09.0930 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.10.36.297000000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES*****     *****/
