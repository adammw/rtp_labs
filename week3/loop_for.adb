with Ada.Text_Io;
use Ada.Text_Io;
procedure Loop_For is
  type Day_Type is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
  Day : Day_Type := Day_Type'First;
begin
  loop
    Put_Line(Day'Img);
    if Day = Day_Type'Last then
      exit;
    else
      Day := Day_Type'Succ(Day);
    end if;
  end loop;
end Loop_For;
