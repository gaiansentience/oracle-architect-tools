create or replace type body app#attrib is

  -- Member procedures and functions
  constructor function app#attrib return self as result is
  begin

    self.initialize;

    return;

  end app#attrib;

  constructor function app#attrib(p_formatted_attribute in varchar2) return self as result is
  begin

    self.initialize;

    self.parse(p_formatted_attribute);

    return;

  end app#attrib;

  constructor function app#attrib
  (
    p_name  in varchar2,
    p_value in varchar2
  ) return self as result is
  begin

    self.initialize;
    self.name  := p_name;
    self.value := p_value;
    self.build;

    return;

  end app#attrib;

  member procedure initialize is
  begin

    self.name      := null;
    self.value     := null;
    self.attribute := null;

  end initialize;

  member procedure build is

  begin

    self.attribute := self.name || app#fmt.equal || app#fmt.quote(self.value,
                                                                  true);

  end build;

  member procedure parse(p_attribute in varchar2) is
    i number;
  begin

    self.attribute := p_attribute;

    --find the = sign (name="value")
    i := instr(self.attribute,
               app#fmt.equal);

    --get the name
    self.name := substr(self.attribute,
                        1,
                        i - 1);
    self.name := trim(self.name);

    --get the value
    self.value := substr(self.attribute,
                         i + 1);
    self.value := trim(self.value);
    self.value := ltrim(self.value,
                        '"');
    self.value := rtrim(self.value,
                        '"');

  end parse;

end;
/

