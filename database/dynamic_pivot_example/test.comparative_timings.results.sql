/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.35.31.227184000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.35.31.227212000 PM AMERICA/DENVER
/*****     *****     UNIT TESTING*****     *****/
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.35.31.227219000 PM AMERICA/DENVER
*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0035 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2464 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.5539 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0033 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2427 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.5674 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0035 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2651 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  03.6939 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.35.40.807112000 PM AMERICA/DENVER
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS*****     *****/
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.35.40.807131000 PM AMERICA/DENVER
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROWSOURCE HIERARCHICAL JSON VARCHAR ONLY
00,017 records in  00.1103 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  05.7506 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  31.0255 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0685 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.0096 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  30.2641 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROWSOURCE FLAT JSON VARCHAR ONLY
00,017 records in  00.0119 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9323 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.6106 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0118 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9431 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.6309 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.37.12.176683000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS*****     *****/
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.37.12.176700000 PM AMERICA/DENVER
ROWSOURCE NESTED TABLES TO TYPED COLUMNS
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0110 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  00.9504 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  09.6481 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.37.22.786266000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES*****     *****/
/*****     *****     UNIT TESTING     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.37.22.786279000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.37.22.786283000 PM AMERICA/DENVER
/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS*****     *****/

/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.49.19.643000000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.49.19.643000000 PM AMERICA/DENVER
/*****     *****     UNIT TESTING*****     *****/
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.49.19.643000000 PM AMERICA/DENVER
*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0070 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2450 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.5120 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0070 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2450 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.4790 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0070 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2790 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.7310 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.49.28.155000000 PM AMERICA/DENVER
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS*****     *****/
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.49.28.155000000 PM AMERICA/DENVER
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROWSOURCE HIERARCHICAL JSON VARCHAR ONLY
00,017 records in  00.0840 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  03.1220 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  31.2490 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROWSOURCE HIERARCHICAL JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0850 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.1370 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  31.5640 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROWSOURCE FLAT JSON VARCHAR ONLY
00,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9390 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.4550 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROWSOURCE FLAT JSON COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0290 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9290 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.4910 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.50.58.268000000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING POLYMORPHIC TABLE FUNCTIONS*****     *****/
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.50.58.268000000 PM AMERICA/DENVER
ROWSOURCE NESTED TABLES TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0270 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  00.9260 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  09.2120 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
ROWSOURCE FLAT JSON TO OBJECT TYPE HIERARCHY
***** using pipelined function to pivot row name|value pairs from flat json to object hierarchy
00,017 records in  00.0090 seconds from dynamic_pivot_pipeline_objects_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
01,700 records in  00.9080 seconds from dynamic_pivot_pipeline_objects_large_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
17,000 records in  09.1980 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert json name|value pairs to subtyped object hierarchy columns pipelined]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.51.18.548000000 PM AMERICA/DENVER
/*****     *****     ROW PIVOT USING PIPELINED OBJECT TYPES AND SUBTYPES*****     *****/
/*****     *****     UNIT TESTING     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.51.18.548000000 PM AMERICA/DENVER
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 08.51.18.548000000 PM AMERICA/DENVER
/*****     *****     DYNAMIC ROW TO COLUMN PIVOT COMPARISON: RUN ALL TESTS*****     *****/