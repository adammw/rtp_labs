with Ada.Text_Io;
use Ada.Text_Io;
procedure Enum is
  type Day_Type is (Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday);
  subtype Weekday is Day_Type range Monday .. Friday;
begin
  Put("Days: ");
  for Day in Day_Type loop
    Put(Day'img & " ");
  end loop;
  Put_Line("");

  Put("Days (reversed): ");
  for Day in reverse Day_Type'Range loop
    Put(Day'img & " ");
  end loop;
  Put_Line("");

  Put("Weekdays: ");
  for Day in Weekday loop
    Put(Day'img & " ");
  end loop;
  Put_Line("");

  Put("Letters A-K: ");
  for Char in Character range 'A' .. 'K' loop
    Put(Char & " ");
  end loop;
  Put_Line("");
end Enum;
