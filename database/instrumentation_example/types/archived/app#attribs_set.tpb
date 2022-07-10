create or replace type body app#attribs_set is

  -- Member procedures and functions
  -- Member functions and procedures
  constructor function app#attribs_set return self as result is

  begin

    self.initialize;
    return;

  end app#attribs_set;

  constructor function app#attribs_set(p_formatted_attribute_set in varchar2) return self as result is
  begin

    self.initialize;
    self.attributes_formatted := trim(p_formatted_attribute_set);
    --need to parse all attributes into the attribute collection
    self.parse_all;
    return;

  end app#attribs_set;

  constructor function app#attribs_set
  (
    p_name  in varchar2,
    p_value in varchar2
  ) return self as result is
    v_attribute app#attrib;
  begin
    v_attribute := new app#attrib(p_name,
                                  p_value);

    self.initialize;
    self.attributes := app#attribs(v_attribute);

    return;

  end app#attribs_set;

  member procedure initialize is
  begin

    if self.attributes.exists(1) = true then
      self.attributes.delete;
    end if;
    self.attributes_formatted := null;

  end initialize;

  member procedure add_attribute(p_attribute in app#attrib) is
    i number;
  begin

    if self.attributes.exists(1) = false then
      --if the collection is anatomically null
      --initialize it by using the default constructor
      self.attributes := app#attribs(p_attribute);
    else
      --get the next item in the collection
      i := self.attributes.count + 1;
      --add an element to the collection
      self.attributes.extend;
      --assign the attribute to the new element
      self.attributes(i) := p_attribute;
    end if;

    --since an attribute was added,
    --build the formatted collection so it can be used
    self.format_all;

  end add_attribute;

  member procedure add_attribute
  (
    p_name  in varchar2,
    p_value in varchar2
  ) is
    v_attribute app#attrib;
  begin

    v_attribute := new app#attrib(p_name,
                                  p_value);

    self.add_attribute(v_attribute);

  end add_attribute;

  member procedure add_formatted_attribute(p_formatted_attribute in varchar2) is
    v_attribute app#attrib;
  begin
    v_attribute := new app#attrib(p_formatted_attribute);
    self.add_attribute(v_attribute);

  end add_formatted_attribute;

  member procedure format_all is
    i               number;
    v_formatted_set varchar2(4000);

  begin

    self.attributes_formatted := null;

    if self.attributes.exists(1) = false then
      self.attributes_formatted := null;
    else

      for i in 1 .. self.attributes.count loop

        v_formatted_set := trim(v_formatted_set) || ' ' || self.attributes(i).attribute;

        self.attributes_formatted := v_formatted_set;

      end loop;

    end if;

  end format_all;

  member procedure parse_all is
    v_position number;
    v_done     boolean := false;
    v_temp     varchar2(32000);
    v_attrib   varchar2(4000);
    v_last     boolean := false;
  begin

    --with the full set of formatted attributes,
    --parse into the attributes collection
    v_temp := self.attributes_formatted;
    v_temp := trim(v_temp);

    if v_temp is null then
      v_done := true;
    end if;

    while v_done = false loop

      v_position := instr(v_temp,
                          ' ');
      --if there is only one attribute
      --or this is the last attribute
      --parse to the end of v_temp
      if v_position = 0 then
        v_last     := true;
        v_position := length(v_temp);
      end if;

      v_attrib := substr(v_temp,
                         1,
                         v_position);

      if v_last = false then
        v_temp := substr(v_temp,
                         v_position);
      else
        v_temp := null;
      end if;

      v_temp := trim(v_temp);

      self.add_formatted_attribute(v_attrib);

      if v_temp is null then
        v_done := true;
      end if;

    end loop;

  end parse_all;

end;
/

