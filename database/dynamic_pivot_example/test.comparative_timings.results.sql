/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.12.44.090475000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.12.44.090494000 PM AMERICA/DENVER
/*****     *****     UNIT TESTING*****     *****/
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.12.44.090500000 PM AMERICA/DENVER
*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0059 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2438 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.6594 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0079 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2389 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.5198 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0083 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2670 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.7605 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.12.52.802230000 PM AMERICA/DENVER
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS*****     *****/
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.12.52.802246000 PM AMERICA/DENVER
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROWSOURCE HIERARCHICAL JSON VARCHAR ONLY
00,017 records in  00.0835 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  02.9697 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  30.2830 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0802 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  02.9897 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  30.0524 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROWSOURCE FLAT JSON VARCHAR ONLY
00,017 records in  00.0277 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9506 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.6814 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0276 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9756 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.5378 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.14.20.461863000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS*****     *****/
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.14.20.461879000 PM AMERICA/DENVER
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0279 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  00.9588 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  09.4831 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from flat json to object hierarchy
00,017 records in  00.0102 seconds from dynamic_pivot_pipeline_objects_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
01,700 records in  00.9568 seconds from dynamic_pivot_pipeline_objects_large_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
17,000 records in  09.4640 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.14.41.362798000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES*****     *****/
/*****     *****     UNIT TESTING     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.14.41.362813000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 07.14.41.362816000 PM AMERICA/DENVER
/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS*****     *****/


PL/SQL procedure successfully completed.

/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.17.33.648000000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.17.33.648000000 PM AMERICA/DENVER
/*****     *****     UNIT TESTING*****     *****/
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.17.33.648000000 PM AMERICA/DENVER
*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0060 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2550 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.5900 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0080 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2470 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.5000 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0070 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2720 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.7600 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.17.42.293000000 PM AMERICA/DENVER
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS*****     *****/
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.17.42.293000000 PM AMERICA/DENVER
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROWSOURCE HIERARCHICAL JSON VARCHAR ONLY
00,017 records in  00.0870 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  03.2090 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  31.6550 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0840 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.1480 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  31.5840 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROWSOURCE FLAT JSON VARCHAR ONLY
00,017 records in  00.0280 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9280 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.4450 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9440 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.3770 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.19.12.812000000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS*****     *****/
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.19.12.812000000 PM AMERICA/DENVER
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0110 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  00.9150 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  09.0990 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from flat json to object hierarchy
00,017 records in  00.0100 seconds from dynamic_pivot_pipeline_objects_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
01,700 records in  00.8960 seconds from dynamic_pivot_pipeline_objects_large_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
17,000 records in  09.0680 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.19.32.811000000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES*****     *****/
/*****     *****     UNIT TESTING     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.19.32.811000000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 07.19.32.811000000 PM AMERICA/DENVER
/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS*****     *****/


PL/SQL procedure successfully completed.

