with Ada.Text_Io, Ada.Float_Text_IO;
use Ada.Text_Io, Ada.Float_Text_IO;
procedure Floats is
  A, B : Float;
begin
  Put("A=");
  Get(A);
  Put("B=");
  Get(B);

  if A > B then
    Put_Line(A'img);
  else
    Put_Line(B'img);
  end if;
end Floats;
