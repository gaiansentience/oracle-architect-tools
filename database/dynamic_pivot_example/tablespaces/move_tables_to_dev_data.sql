set serveroutput on;
declare
      p_script boolean := true;
      p_execute boolean := true;
      p_tablespace varchar2(200) := 'DEV_DATA';
begin
  
    admin$schema.move_tables(
        p_script => p_script,
        p_execute => p_execute,
        p_tablespace => p_tablespace
    );

end;
/