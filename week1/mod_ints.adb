with Ada.Text_Io;
use Ada.Text_Io;
procedure Mod_Ints is
begin
  for I in Integer range 0 .. 100 loop
    if I mod 3 = 0 then
      Put_Line(I'img);
    end if;
  end loop;
end Mod_Ints;
