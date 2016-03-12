with Ada.Text_IO;
use Ada.Text_IO;

procedure Two_Tasks is
  T1 : constant := 1.1;
  T2 : constant := 2.67;
  task Thread1;
  task Thread2;

  task body Thread1 is begin
    loop Put_Line("Thread 1 calling!");
      delay T1;
    end loop;
  end Thread1;

  task body Thread2 is begin
    loop Put_Line("Thread 2 calling!");
      delay T2;
    end loop;
  end Thread2;
begin
  null;
end Two_Tasks;
