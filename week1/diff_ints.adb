with Ada.Text_Io, Ada.Integer_Text_IO;
use Ada.Text_Io, Ada.Integer_Text_IO;
procedure Diff_Ints is
  A, B, C : Integer;
begin
  Put("A=");
  Get(A);
  Put("B=");
  Get(B);
  Put("C=");
  Get(C);

  if A = B and B = C and C = A then
    Put_Line("All the same");
  elsif A = B or A = C or B = C then
    Put_Line("Two the same");
  else
    Put_Line("All different");
  end if;
end Diff_Ints;
