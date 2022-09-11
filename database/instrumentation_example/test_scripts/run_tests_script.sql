begin
   test#my_package.test_no_logging;
   --now turn on the logs
   test#my_package.test_with_logging;
end;
/
