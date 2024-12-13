```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   MyArr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub is My_Array(1..5);
   SubArr : My_Sub;
begin
   --Safe subtype conversion and array slicing using explicit assignment
   SubArr := My_Sub'(MyArr(1..5));
   --Further processing of SubArr
exception
   when others =>
      Put_Line("Error occurred");
end Example_Solution;
```