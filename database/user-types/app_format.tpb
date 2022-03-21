create or replace type body app#format is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022


  -- Member procedures and functions
  constructor function app#format return self as result is
  begin
  
    self.initialize;
  
    return;
  
  end app#format;

  member procedure initialize is
  begin
  
    self.data_length         := 0;
    self.data_length_varchar := 0;
    --instantiate the clob
    self.reset_data_varchar;
    self.reset_data;
  
  end initialize;

  member procedure reset_data_varchar is
  begin
  
    self.data_varchar := null;
  
  end reset_data_varchar;

  member procedure reset_data is
  begin
  
    /*    dbms_lob.erase(self.data,
    self.data_length,
    1);*/
    self.data := null;
    dbms_lob.createtemporary(self.data,
                             false,
                             dbms_lob.call);
  
  end reset_data;

  member procedure append
  (
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ) is
  begin
  
    app#fmt.append(self.data,
                   p_value,
                   p_include_crlf,
                   p_enclose_sq);
  
  end append;

  member procedure append_varchar
  (
    p_value        in varchar2,
    p_include_crlf in boolean default false,
    p_enclose_sq   in boolean default false
  ) is
  begin
  
    app#fmt.append_vc(self.data_varchar,
                      p_value,
                      p_include_crlf,
                      p_enclose_sq);
  
  end append_varchar;

  member procedure append_clob(p_value in out nocopy clob) is
  begin
  
    dbms_lob.append(self.data,
                    p_value);
  
  end append_clob;

  member procedure set_data_lengths is
  begin
  
    self.data_length         := nvl(dbms_lob.getlength(self.data),
                                    0);
    self.data_length_varchar := nvl(length(self.data_varchar),
                                    0);
  
  end set_data_lengths;

  member procedure data_to_varchar is
  begin
  
    self.set_data_lengths;
    if self.data_length < 32000 then
      self.data_varchar := self.data;
    end if;
  
  end data_to_varchar;

  member procedure data_varchar_to_data is
  begin
  
    self.reset_data;
    self.append(self.data_varchar);
    self.reset_data_varchar;
    self.set_data_lengths;
  
  end data_varchar_to_data;

end;
/

