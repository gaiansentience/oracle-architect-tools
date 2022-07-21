create or replace trigger app#environment_br_diu
  before insert or update or delete on app#environment
  for each row
declare
  -- local variables here
begin

  if inserting then
    if :new.env_id is null then
      /* OLD SYNTAX
      select app#environment_seq_id.nextval
      into   :new.env_id
      from   dual;
      */
      :new.env_id := app#environment_seq_id.nextval;
    end if;
  elsif updating then
    --updating
    null;
  else
    --deleting
    null;
  end if;

end app#environment_br_diu;
/
