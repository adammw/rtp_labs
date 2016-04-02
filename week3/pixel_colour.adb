with Ada.Text_Io, Ada.Integer_Text_IO, Ada.Unchecked_Conversion, Ada.Strings.Fixed;
use Ada.Text_Io, Ada.Integer_Text_IO;
procedure Pixel_Colour is
  type Pixel_Colour_Type is (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White);
  for Pixel_Colour_Type use
   (Black => 40,
    Red => 41,
    Green => 42,
    Yellow => 43,
    Blue => 44,
    Magenta => 45,
    Cyan => 46,
    White => 47);
  function Colour_To_Integer is new Ada.Unchecked_Conversion (Source => Pixel_Colour_Type, Target => Integer);
  type Pixel_Data_Type is array (Positive range <>) of Pixel_Colour_Type;
  Pixel_Data : constant Pixel_Data_Type := (Yellow, Black, Yellow, Black, Red, Green, Blue, White);
begin
  for I in Pixel_Data'Range loop
    Put( Character'Val(16#1b#) & "[" );
    Put( Colour_To_Integer(Pixel_Data(I)), Width => 0);
    Put( "m " );
  end loop;
  Put( Character'Val(16#1b#) & "[0m" );
end Pixel_Colour;
