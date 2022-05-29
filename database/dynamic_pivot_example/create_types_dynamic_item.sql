create or replace type t_dynamic_item_value_pair as object(
    value_id number,
    value_name varchar2(100),
    value_type varchar2(100),
    value_data varchar2(4000),
    member function get_json return clob
);
/

create or replace type body t_dynamic_item_value_pair is
    member function get_json return clob
    is
    o_doc json_object_t := new json_object_t;
    o_e json_object_t := new json_object_t;
    begin
        o_doc := new json_object_t();
        
        o_doc.put(self.value_name, self.value_data);                
        o_e.put('valueId', self.value_id);
        o_e.put('valueType', self.value_type);
        o_doc.put(self.value_name || 'ValueDefinition', o_e);
        /*
        o_doc.put(self.value_name, self.value_data);        
        o_doc.put('valueId', self.value_id);
        o_doc.put('valueType', self.value_type);
        */
        return o_doc.to_clob;
    end get_json;
end;
/

create or replace type t_dynamic_item_value_pair_table as table of t_dynamic_item_value_pair;
/
create or replace type t_dynamic_item as object(
    item_id number,
    item_name varchar2(100),
    item_type varchar2(100),
    item_values t_dynamic_item_value_pair_table,
    member function get_json return clob,
    member function get_pair_value(p_value_name in varchar2) return varchar2
);
/

create or replace type body t_dynamic_item is
    member function get_json return clob
    is
    o_doc json_object_t := new json_object_t();
    o_a json_array_t := new json_array_t();
    o_ae json_object_t;
    l_clob clob;
    l_pretty clob;
    begin
        o_doc.put('itemId', self.item_id);
        o_doc.put('itemName', self.item_name);
        o_doc.put('itemType', self.item_type);
        o_doc.put('itemValues', o_a);
        o_a := o_doc.get_array('itemValues');
        if self.item_values.count > 0 then
        for i in self.item_values.first .. self.item_values.last loop
            o_ae := new json_object_t(self.item_values(i).get_json());
            /*
            o_ae := new json_object_t();
            o_ae.put('valueId', self.value_pairs(i).value_id);
            o_ae.put('valueName', self.value_pairs(i).value_name);
            o_ae.put('valueType', self.value_pairs(i).value_type);
            o_ae.put('valueData', self.value_pairs(i).value_data);
            */
            o_a.append(o_ae);
        end loop;
        end if;
        --return o_doc.to_clob;
        l_clob := o_doc.to_clob;
        select json_serialize(l_clob returning clob pretty)
        into l_pretty
        from dual;
        return l_pretty;
    end get_json;
    
    member function get_pair_value(p_value_name in varchar2) return varchar2
    is
        l_value varchar2(4000);
    begin
        if self.item_values.count > 0 then
        for i in self.item_values.first .. self.item_values.last loop
            if self.item_values(i).value_name = p_value_name then
                l_value := self.item_values(i).value_data;
                exit;
            end if;
        end loop;
        end if;
        return l_value;
    end get_pair_value;
end;
/