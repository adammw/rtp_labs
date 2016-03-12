with Ada.Text_IO, Ada.Strings.Unbounded, Ada.Strings.Unbounded.Text_IO, Ada.Characters.Handling;
use Ada.Text_IO, Ada.Strings.Unbounded, Ada.Strings.Unbounded.Text_IO, Ada.Characters.Handling;

procedure Hello is
  Name : Unbounded_String;
  Input : Character;

  function Title_Case (Str : in String) return String is
    Result : String(Str'Range);
    LastCharacterWasSpace : Boolean := True;
  begin
    for C in Str'Range loop
      if Str(C) = ' ' then
        LastCharacterWasSpace := True;
        Result(C) := Str(C);
      elsif LastCharacterWasSpace then
        Result(C) := To_Upper(Str(C));
        LastCharacterWasSpace := False;
      else
        Result(C) := To_Lower(Str(C));
        LastCharacterWasSpace := False;
      end if;
    end loop;
    return Result;
  end Title_Case;
begin
  Put_Line("It's the Hello World example.");
  loop
    Put_Line("What's your name?");
    Get_Line(Name);
    Put_Line("Hello " & Title_Case(To_String(Name)) & "!");
    Put_Line("It's a me, Mario!");
    Put_Line("Again? (Y/N)");
    Get(Input); Skip_Line;
    exit when Input /= 'y' and Input /= 'Y';
  end loop;
end Hello;
