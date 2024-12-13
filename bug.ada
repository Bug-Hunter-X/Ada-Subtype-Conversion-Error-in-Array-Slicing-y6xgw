```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub is My_Array(1..5);
   SubArr : My_Sub;
begin
   SubArr := MyArr(1..5); -- This is where the error might occur if not handled properly
   --Further processing of SubArr
exception
   when others =>
      Put_Line("Error occurred");
end Example;
```