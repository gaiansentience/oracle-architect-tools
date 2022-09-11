--create the common source view if missing
@@view.ptf_test_data_source_v.sql;

@@create_views_ptf_add_random.sql;
@@create_views_ptf_add_user_date.sql;
@@create_views_ptf_hide_cols.sql;
@@create_views_ptf_pass_through.sql;
@@create_views_ptf_row_as_json.sql;
@@create_views_ptf_row_as_json_alt.sql;