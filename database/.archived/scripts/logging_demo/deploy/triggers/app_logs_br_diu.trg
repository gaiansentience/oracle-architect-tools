create or replace trigger app#logs_br_diu
  before insert or update or delete on app#logs
  for each row
declare
  -- local variables here
begin

  if inserting then
    if :new.log_id is null then
      /* OLD SYNTAX
      select app#log_seq_id.nextval
      into   :new.log_id
      from   dual;
      */
      :new.log_id := app#log_seq_id.nextval;
    end if;
  elsif updating then
    --updating
    null;
  else
    --deleting
    null;
  end if;

end app#logs_br_diu;
/
