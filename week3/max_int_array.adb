with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Max_Int_Array is
  type Int_Array is array(Character range <>) of Integer;

  function Max(Items : in Int_Array) return Integer is
    Max_Value : Integer := Items(Items'First);
  begin
    for I in Items'Range loop
      if Items(I) > Max_Value then
        Max_Value := Items(I);
      end if;
    end loop;
    return Max_Value;
  end Max;

  Test_Array : Int_Array := (5, 9, -1, 22, 8, 74, -9);
begin
  Put("Max=");
  Put(Max(Test_Array));
end Max_Int_Array;
