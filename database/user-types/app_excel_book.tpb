create or replace type body app#excel_book is

-- Author  : Anthony Harper
-- Created : 12/20/2009
-- Reviewed: 03/21/2022

  -- Member procedures and functions

  constructor function app#excel_book return self as result is
  begin
  
    self.initialize;
    self.initialize_book;
  
    return;
  
  end app#excel_book;

  constructor function app#excel_book
  (
    p_author  in varchar2,
    p_company in varchar2
  ) return self as result is
  begin
  
    self.initialize;
    self.initialize_book;
    self.author  := p_author;
    self.company := p_company;
  
    return;
  
  end app#excel_book;

  member procedure initialize_book is
  begin
  
    self.tables     := null;
    self.attributes := null;
    self.styles     := null;
    self.filename   := null;
    self.author     := null;
    self.created    := systimestamp;
    self.company    := null;
    self.version    := '10.6856';
    self.book_xml   := null;
    dbms_lob.createtemporary(self.book_xml,
                             false,
                             dbms_lob.call);
  
  end initialize_book;

  member procedure add_table(p_table in app#excel_table) is
    i number;
  begin
  
    if self.tables.exists(1) = false then
      --if the collection is anatomically null
      --initialize it by using the default constructor
      self.tables := app#excel_tables(p_table);
    else
      --get the next item in the collection
      i := self.tables.count + 1;
      --add an element to the collection
      self.tables.extend;
      --assign the attribute to the new element
      self.tables(i) := p_table;
    end if;
  
  end add_table;

  member procedure set_workbook_attributes is
  begin
    /*  <Workbook xmlns=""
    xmlns:o=""
    xmlns:x=""
    xmlns:ss=""
    xmlns:html="">*/
  
    self.attributes.add_attribute('xmlns',
                                  'urn:schemas-microsoft-com:office:spreadsheet');
    self.attributes.add_attribute('xmlns:o',
                                  'urn:schemas-microsoft-com:office:office');
    self.attributes.add_attribute('xmlns:x',
                                  'urn:schemas-microsoft-com:office:excel');
    self.attributes.add_attribute('xmlns:ss',
                                  'urn:schemas-microsoft-com:office:spreadsheet');
    self.attributes.add_attribute('xmlns:html',
                                  'http://www.w3.org/TR/REC-html40');
  
  end set_workbook_attributes;

  member procedure document_styles is
  begin
  
    ----load all applicable styles to the styles collection
  
    --format collection as xml
    self.styles.to_xml;
    --append to internal clob
    app#fmt.append_clob(self.data,
                        self.styles.styles_xml);
  
  end document_styles;

  member procedure document_properties is
    v_attribute           app#attrib;
    v_document_properties varchar2(100) := 'DocumentProperties';
    v_author              varchar2(100) := 'Author';
    v_last_author         varchar2(100) := 'LastAuthor';
    v_created             varchar2(100) := 'Created';
    v_company             varchar2(100) := 'Company';
    v_version             varchar2(100) := 'Version';
    v_fmt_date            varchar2(100) := 'YYYY-MM-DD';
    v_fmt_timetz          varchar2(100) := 'HH24:MI:SS:ff TZH:TZM';
    v_ts_formatted        varchar2(1000);
  begin
    v_attribute := new app#attrib('xmlns',
                                  'urn:schemas-microsoft-com:office:office');
  
    self.open_element(v_document_properties,
                      v_attribute.attribute);
    self.add_element(v_author,
                     self.author);
    self.add_element(v_last_author,
                     self.author);
  
    v_ts_formatted := to_char(self.created,
                              v_fmt_date) || 'T';
    v_ts_formatted := v_ts_formatted || to_char(self.created,
                                                v_fmt_timetz);
  
    self.add_element(v_created,
                     v_ts_formatted);
    self.add_element(v_company,
                     self.company);
    self.add_element(v_version,
                     self.version);
  
    self.close_element(v_document_properties);
  
  end document_properties;

  member procedure to_xml is
    v_workbook varchar2(100) := 'workbook';
  begin
  
    self.xml_declaration;
  
    self.set_workbook_attributes;
    self.open_element(v_workbook,
                      self.attributes.attributes_formatted);
  
    self.document_properties;
    self.document_styles;
  
    for i in 1 .. self.tables.count loop
      self.tables(i) .to_xml;
      app#fmt.append(self.data,
                     self.tables(i).table_xml);
    
    end loop;
  
    self.close_element(v_workbook);
  
    self.book_xml := self.data;
  
  end to_xml;

end;
/

