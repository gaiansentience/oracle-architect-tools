create or replace trigger test_pipeline_bri
  before insert on test_pipeline  
  for each row
declare
  -- local variables here
begin
  if :new.id is null then
    select test_pipeline_seq.nextval
    into   :new.id
    from   dual;
  end if;
end test_pipeline_bri;
/
