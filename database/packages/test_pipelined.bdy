create or replace package body test_pipelined is

  function add_filter
  (
    p_filter_column in varchar2 default null,
    p_filter_value  in varchar2 default null
  ) return varchar2 is
    v_sql     varchar2(32000);
    v_has_sq  boolean := false;
    v_sq      varchar2(1) := chr(39);
    v_replace varchar2(10) := '##QUOTE##';
  begin

    if p_filter_column is not null and p_filter_value is not null then
      --are there single quotes in the value?
      --if so use the replacement string in the value and the column
      if instr(p_filter_value,
               v_sq) > 0 then
        v_has_sq := true;
      end if;

      type_test_pipeline.append(v_sql,
                                'WHERE',
                                true);

      if v_has_sq = true then
        type_test_pipeline.append(v_sql,
                                  'REPLACE(',
                                  false);
      end if;
      type_test_pipeline.append(v_sql,
                                'UPPER(tp.' || p_filter_column,
                                false);
      type_test_pipeline.append(v_sql,
                                ')',
                                false);
      if v_has_sq = true then
        type_test_pipeline.append(v_sql,
                                  ',CHR(39),',
                                  false);
        type_test_pipeline.append(v_sql,
                                  v_replace,
                                  false,
                                  true);
        type_test_pipeline.append(v_sql,
                                  ')',
                                  false);
      end if;

      type_test_pipeline.append(v_sql,
                                ' LIKE ',
                                true);

      type_test_pipeline.append(v_sql,
                                'UPPER(',
                                false);
      if v_has_sq = false then
        type_test_pipeline.append(v_sql,
                                  '%' || p_filter_value || '%',
                                  false,
                                  true);
      else
        type_test_pipeline.append(v_sql,
                                  '%' || replace(p_filter_value,
                                                 chr(39),
                                                 v_replace) || '%',
                                  false,
                                  true);
      end if;
      type_test_pipeline.append(v_sql,
                                ')',
                                false);

    else
      v_sql := null;
    end if;

    return v_sql;
  end add_filter;

  function build_query
  (
    p_filter_column in varchar2 default null,
    p_filter_value  in varchar2 default null
  ) return varchar2 is
    v_sql    varchar2(32000);
    v_cols   varchar2(32000);
    v_filter varchar2(32000);
  begin

    type_test_pipeline.append(v_sql,
                              'select',
                              true);
    v_cols := type_test_pipeline.get_to_type_cols('tp');
    type_test_pipeline.append(v_sql,
                              v_cols,
                              false);
    type_test_pipeline.append(v_sql,
                              'from test_pipeline tp',
                              true);

    v_filter := add_filter(p_filter_column,
                           p_filter_value);

    type_test_pipeline.append(v_sql,
                              v_filter,
                              true);

    return v_sql;

  end build_query;

  function get_values
  (
    p_filter_column in varchar2 default null,
    p_filter_value  in varchar2 default null
  ) return type_test_pipeline_table
    pipelined is
    v_sql varchar2(32000);
    type cur_t is ref cursor;
    c cur_t;
    r type_test_pipeline;
  begin
    v_sql := build_query(p_filter_column,
                         p_filter_value);

    open c for v_sql;

    loop

      fetch c
        into r;

      exit when c%notfound;

      pipe row(r);

    end loop;

    close c;

    return;

  end get_values;

begin
  -- Initialization
  null;
end test_pipelined;
/

