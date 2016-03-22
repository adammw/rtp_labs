with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Subprograms is
  A, B, C, D : Integer;

  procedure Max_Min (A, B: in Integer; C, D: out Integer) is
  begin
    if A > B then
      C := A;
      D := B;
    else
      C := B;
      D := A;
    end if;
  end Max_Min;
begin
  Put("A=");
  Get(A); Skip_Line;
  Put("B=");
  Get(B); Skip_Line;
  Max_Min(A, B, C, D);
  Put_Line("C=" & C'Img & " D=" & D'Img);
end Subprograms;
