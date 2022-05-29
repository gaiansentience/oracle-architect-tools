set serveroutput on;
declare
    procedure test_option(p_source in varchar2, p_comment in varchar2)
    is
    i number;
    l_result varchar2(1000);
    begin
        dynamic_pivot_test_data.start_timing;
        execute immediate 'select count(*) from ' || p_source into i;
        l_result := to_char(i,'fm09,999') || ' records in ' || dynamic_pivot_test_data.stop_timing();
        l_result := l_result || ' from ' || p_source;
        l_result := l_result || ' [' || p_comment || ']';
        dbms_output.put_line(l_result);
    end test_option;
begin
    dbms_output.put_line('*****generating test data as name|value rows and converting to single rows with multiple values (as json or as nested table)');
    dbms_output.put_line('*****generate name|value rows using json source document created in plsql');
    test_option('dynamic_pivot_test_data_v','generate name|value pair test data with many name/value rows per item');
    test_option('dynamic_pivot_test_data_large_v','generate name|value pair test data with many name/value rows per item');
    test_option('dynamic_pivot_test_data_xlarge_v','generate name|value pair test data with many name/value rows per item');
    
    dbms_output.put_line('*****consolidate name|value pairs to row json using sql');
    test_option('dynamic_pivot_data_to_json_v','formats item name|value pairs as json using sql');
    test_option('dynamic_pivot_data_to_json_large_v','formats item name|value pairs as json using sql');
    test_option('dynamic_pivot_data_to_json_xlarge_v','formats item name|value pairs as json using sql');
    dbms_output.put_line('*****consolidate name|value pairs to row json using plsql AND to nested tables using objects');
    test_option('dynamic_item_object_v','formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects');
    test_option('dynamic_item_object_large_v','formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects');
    test_option('dynamic_item_object_xlarge_v','formats item name|value pairs as json using plsql/ALSO/creates nested tables of name|value pairs using objects');
    dbms_output.put_line('*****ROW PIVOT OPTION COMPARISON');
    
    dbms_output.put_line('*****using polymorphic function to pivot row name|value pairs from json using hierarchical json array for name|value pairs');
    dbms_output.put_line('*****ROW PIVOT POLYMORPHIC HIERARCHICAL JSON ROWSOURCE VARCHAR ONLY');
    test_option('dynamic_pivot_polymorphic_v','convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)');
    test_option('dynamic_pivot_polymorphic_large_v','convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)');
    test_option('dynamic_pivot_polymorphic_xlarge_v','convert hierarchical row json name|value pairs to varchar2 columns polymorphic (USES json_array_t)');
    dbms_output.put_line('*****ROW PIVOT POLYMORPHIC HIERARCHICAL JSON ROWSOURCE COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER');
    test_option('dynamic_pivot_polymorphic_typed_v','convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)');
    test_option('dynamic_pivot_polymorphic_typed_large_v','convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)');
    test_option('dynamic_pivot_polymorphic_typed_xlarge_v','convert hierarchical row json name|value pairs to varchar2|number columns polymorphic (uses json_array_t)');
    
    dbms_output.put_line('*****using polymorphic function to pivot row name|value pairs from json using flat json format for name|value pairs');
    dbms_output.put_line('*****ROW PIVOT POLYMORPHIC FLAT JSON ROWSOURCE VARCHAR ONLY');
    test_option('dynamic_pivot_polymorphic_flat_v','convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)');
    test_option('dynamic_pivot_polymorphic_large_flat_v','convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)');
    test_option('dynamic_pivot_polymorphic_xlarge_flat_v','convert flat row json name|value pairs to varchar2 columns polymorphic (AVOIDS json_array_t)');
    dbms_output.put_line('*****ROW PIVOT POLYMORPHIC FLAT JSON ROWSOURCE COLUMNS DYNAMICALLY TYPED TO VARCHAR|NUMBER');
    test_option('dynamic_pivot_polymorphic_typed_flat_v','convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)');
    test_option('dynamic_pivot_polymorphic_typed_large_flat_v','convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)');
    test_option('dynamic_pivot_polymorphic_typed_xlarge_flat_v','convert flat row json name|value pairs to varchar2|number columns polymorphic (AVOIDS json_array_t)');
    dbms_output.put_line('*****ROW PIVOT PIPELINED OBJECT HIERARCHIES ROWSOURCE NESTED TABLES TO TYPED COLUMNS');
    dbms_output.put_line('***** using pipelined function to pivot row name|value pairs from nested tables to object hierarchy');
    test_option('dynamic_pivot_pipeline_objects_v','convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)');
    test_option('dynamic_pivot_pipeline_objects_large_v','convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)');
    test_option('dynamic_pivot_pipeline_objects_xlarge_v','convert nested table name|value pairs to subtyped object hierarchy columns pipelined (AVOIDS json completely)');

end; 