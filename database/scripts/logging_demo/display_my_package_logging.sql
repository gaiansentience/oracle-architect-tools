-- Created on 9/09/2007 by ANTHONY 
--view logging environment for my_package
set serveroutput on

declare
  --also show what environment table is set to
  p_show_environment boolean := false;
begin
  --set logging state to the environment table
  my_package.logger.init;
  my_package.logger.print_settings(p_show_environment);
  --change a setting
  my_package.logger.toggle_exceptions(true);
  my_package.logger.print_settings(p_show_environment);
  
end;
/
