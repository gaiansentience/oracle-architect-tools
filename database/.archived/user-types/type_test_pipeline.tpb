create or replace type body type_test_pipeline is

  static procedure append
  (
    p_target     in out nocopy varchar2,
    p_value      in varchar2,
    p_newline    in boolean default true,
    p_enclose_sq in boolean default false
  ) is
    v_value varchar2(32000);
    sq      varchar2(1) := chr(39);
    crlf    varchar2(2) := chr(13) || chr(10);
  begin
    if p_value is not null then
      v_value := p_value;

      if p_enclose_sq = true then
        v_value := sq || v_value || sq;
      end if;

      if p_newline = true then
        v_value := v_value || crlf;
      end if;

      p_target := p_target || v_value;
    end if;

  end append;

  static function get_to_type_cols(p_prefix in varchar2) return varchar2 is
    v_cols varchar2(32000);
  begin

    type_test_pipeline.append(v_cols,
                              'TYPE_TEST_PIPELINE(');
    type_test_pipeline.append(v_cols,
                              p_prefix || '.ID,');
    type_test_pipeline.append(v_cols,
                              p_prefix || '.NAME,');
    type_test_pipeline.append(v_cols,
                              p_prefix || '.DESCRIPTION,');
    type_test_pipeline.append(v_cols,
                              p_prefix || '.TITLE');
    type_test_pipeline.append(v_cols,
                              ') record_object');

    return v_cols;

  end get_to_type_cols;

end;
/

