TESTING ON ORACLE XE version 21

*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0030 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2440 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.5220 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0030 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2410 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.4810 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0040 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2630 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.7350 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
*****ROW PIVOT OPTION COMPARISON
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROW PIVOT POLYMORPHIC HIERARCHICAL JSON ROWSOURCE VARCHAR ONLY
00,017 records in  00.0700 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  03.1260 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  31.4170 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROW PIVOT POLYMORPHIC HIERARCHICAL JSON ROWSOURCE COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0700 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.1100 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  31.3580 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROW PIVOT POLYMORPHIC FLAT JSON ROWSOURCE VARCHAR ONLY
00,017 records in  00.0100 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9080 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.2710 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROW PIVOT POLYMORPHIC FLAT JSON ROWSOURCE COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0110 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9050 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.4020 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
*****ROW PIVOT PIPELINED OBJECT HIERARCHIES ROWSOURCE NESTED TABLES TO TYPED COLUMNS
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0150 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  01.2960 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  12.9820 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]


TESTING ON ORACLE EE version 19 (vmbox)

*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0068 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2466 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.7593 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0101 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2396 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.5162 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0084 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2650 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.7615 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
*****ROW PIVOT OPTION COMPARISON
*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs
*****ROW PIVOT POLYMORPHIC HIERARCHICAL JSON ROWSOURCE VARCHAR ONLY
00,017 records in  00.0807 seconds from dynamic_pivot_polymorphic_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
01,700 records in  03.0070 seconds from dynamic_pivot_polymorphic_large_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
17,000 records in  30.2658 seconds from dynamic_pivot_polymorphic_xlarge_v [convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)]
*****ROW PIVOT POLYMORPHIC HIERARCHICAL JSON ROWSOURCE COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0818 seconds from dynamic_pivot_polymorphic_typed_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
01,700 records in  03.0010 seconds from dynamic_pivot_polymorphic_typed_large_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
17,000 records in  30.2188 seconds from dynamic_pivot_polymorphic_typed_xlarge_v [convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)]
*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs
*****ROW PIVOT POLYMORPHIC FLAT JSON ROWSOURCE VARCHAR ONLY
00,017 records in  00.0272 seconds from dynamic_pivot_polymorphic_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9553 seconds from dynamic_pivot_polymorphic_large_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.7656 seconds from dynamic_pivot_polymorphic_xlarge_flat_v [convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)]
*****ROW PIVOT POLYMORPHIC FLAT JSON ROWSOURCE COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER
00,017 records in  00.0265 seconds from dynamic_pivot_polymorphic_typed_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
01,700 records in  00.9622 seconds from dynamic_pivot_polymorphic_typed_large_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
17,000 records in  09.6387 seconds from dynamic_pivot_polymorphic_typed_xlarge_flat_v [convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)]
*****ROW PIVOT PIPELINED OBJECT HIERARCHIES ROWSOURCE NESTED TABLES TO TYPED COLUMNS
***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy
00,017 records in  00.0381 seconds from dynamic_pivot_pipeline_objects_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
01,700 records in  01.4176 seconds from dynamic_pivot_pipeline_objects_large_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]
17,000 records in  14.1367 seconds from dynamic_pivot_pipeline_objects_xlarge_v [convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)]


PL/SQL procedure successfully completed.

