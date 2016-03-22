with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Swap is
  A, B : Integer;

  procedure Swap_It (A, B: in out Integer) is
    Temp : Integer;
  begin
    Temp := B;
    B := A;
    A := Temp;
  end Swap_It;
begin
  Put("A=");
  Get(A); Skip_Line;
  Put("B=");
  Get(B); Skip_Line;
  Swap_It(A, B);
  Put_Line("A=" & A'Img & " B=" & B'Img);
end Swap;
