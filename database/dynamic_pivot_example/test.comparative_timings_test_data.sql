set serveroutput on;
declare
begin

    dynamic_pivot_unit_testing.test_initial_data_generation;
    
end; 

/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS     *****     *****
START TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.01.41.900547000 PM AMERICA/DENVER
*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0069 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2447 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  03.0413 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0079 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2431 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.5827 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0080 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2672 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.8689 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
FINISHED TESTING ON ORACLE VERSION 19  TESTING TIME: 29-MAY-22 05.01.51.171548000 PM AMERICA/DENVER
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS*****     *****/

/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS     *****     *****
START TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 05.02.17.427000000 PM AMERICA/DENVER
*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)
*****generate name|value rows using json source document created in plsql
00,083 records in  00.0060 seconds from dynamic_pivot_test_data_v [generate name|value pair test data with many name/value rows per item]
08,300 records in  00.2470 seconds from dynamic_pivot_test_data_large_v [generate name|value pair test data with many name/value rows per item]
83,000 records in  02.5420 seconds from dynamic_pivot_test_data_xlarge_v [generate name|value pair test data with many name/value rows per item]
*****consolidate name|value pairs to row json using sql
00,017 records in  00.0070 seconds from dynamic_pivot_data_to_json_v [formats item name|value pairs as json using sql]
01,700 records in  00.2440 seconds from dynamic_pivot_data_to_json_large_v [formats item name|value pairs as json using sql]
17,000 records in  02.4790 seconds from dynamic_pivot_data_to_json_xlarge_v [formats item name|value pairs as json using sql]
*****consolidate name|value pairs to row json using plsql AND to nested tables using objects
00,017 records in  00.0060 seconds from dynamic_item_object_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
01,700 records in  00.2680 seconds from dynamic_item_object_large_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
17,000 records in  02.7100 seconds from dynamic_item_object_xlarge_v [formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects]
FINISHED TESTING ON ORACLE VERSION 21  TESTING TIME: 29-MAY-22 05.02.25.936000000 PM AMERICA/DENVER
/*****     *****     GENERATE TEST DATA: NAME|VALUE PAIRS*****     *****/
