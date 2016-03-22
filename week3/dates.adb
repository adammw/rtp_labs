-- dates.adb
--
-- A program to read dates from the keyboard in the form
--    day_no  month_no        e.g. 30 8
-- and output the next day's date in the form
--    day_no  month           e.g. 31 AUG
-- Assume it is not a leap year.
-- The program loops until a zero day number is entered.
--
-- version 2.0 8-Mar-07

with Ada.Text_Io, Ada.Integer_Text_Io;
procedure Dates is

  package Int_Io renames Ada.Integer_Text_Io;
  use Ada.Text_Io;
  -------------------------------------------------------------------
  -- your type and var declarations here
  -------------------------------------------------------------------
  type Month_Type is (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec);

  subtype Day_Num_Type is Integer range 1 .. 31;
  subtype Year_Type is Integer;

  type Date_Type is record
    Day_No : Day_Num_Type;
    Month : Month_Type;
    Year : Year_Type;
  end record;

  Today, Next_Day : Date_Type;

  Temp : Natural;

  function Days_In ( Month : Month_Type; YearNo : Year_Type ) return Integer is
    Non_Leap_Year_Days_In : constant array(Month_Type) of Integer := (
      Jan => 31,
      Feb => 28,
      Mar => 31,
      Apr => 30,
      May => 31,
      Jun => 30,
      Jul => 31,
      Aug => 31,
      Sep => 30,
      Oct => 31,
      Nov => 30,
      Dec => 31
    );
  begin
    if (Month = Feb and YearNo mod 4 = 0 and (YearNo mod 100 /= 0 or YearNo mod 400 = 0)) then
      return 29;
    else
      return Non_Leap_Year_Days_In(Month);
    end if;
  end Days_In;


  -- calculate the day after D
  function Tomorrow ( D : Date_Type ) return Date_Type is
    Day_No : Integer;
    Month_No : Integer;
    Tommorrow_Date : Date_Type;
  begin
    Tommorrow_Date := D;
    Day_No := Tommorrow_Date.Day_No + 1;

    -- loop month
    while Day_No > Days_In(Tommorrow_Date.Month, Tommorrow_Date.Year) loop
      Day_No := Day_No - Days_In(Tommorrow_Date.Month, Tommorrow_Date.Year);
      Month_No := Month_Type'Pos(Tommorrow_Date.Month) + 1;
      if Month_No >= 12 then
        Month_No := 0;
      end if;
      Tommorrow_Date.Month := Month_Type'Val(Month_No);
    end loop;

    Tommorrow_Date.Day_No := Day_No;
    return Tommorrow_Date;
  end Tomorrow;

  -- display D
  procedure Print ( D : in Date_Type ) is
  begin
    Put_Line(D.Day_No'Img & " " & D.Month'Img & " " & D.Year'Img);
  end Print;

begin
  loop
    Put("Enter date as dd mm yyyy (0 0 0 to stop):");

    Int_Io.Get(Temp);   -- read day
    Skip_Line;
    exit when Temp = 0;
    Today.Day_No := Temp;

    Int_Io.Get(Temp);   -- read month as an integer
    Skip_Line;
    exit when Temp = 0;
    Today.Month := Month_Type'Val(Temp - 1);

    Int_Io.Get(Temp);   -- read year as an integer
    Skip_Line;
    exit when Temp = 0;
    Today.Year := Temp;

    Put("Today is: ");
    Print(Today);

    --  compute tomorrow's date
    Next_Day := Tomorrow(Today);

    --  print
    Put("Tommorow is: ");
    Print(Next_Day);
  end loop;
end Dates;
