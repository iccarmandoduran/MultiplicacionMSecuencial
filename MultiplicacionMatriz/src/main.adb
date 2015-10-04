with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Main is
   matrizA : array (0..500,0..500) of Integer;
   matrizB : array (0..500,0..500) of Integer;
   matrizC : array (0..500,0..500) of Integer;
   suma:Integer;
begin
   for i in 0..499 loop
         for j in 0..499 loop
            matrizA(i,j):=2;
            matrizB(i,j):=2;
         end loop;
      end loop;

   for i in 0..499 loop
         for j in 0..499 loop
            suma:=0;
            for k in 0..499 loop
               suma:=suma+(matrizA(i,k)* matrizB(k, j));
            end loop;
            matrizC(i,j):= suma;
         end loop;
      end loop;

   Put_Line("Multiplica Matrices");
   for i in 0..499 loop
      for j in 0..499 loop
      Put(matrizC(i,j));
      end loop;
      Put_Line("");
   end loop;


end Main;
