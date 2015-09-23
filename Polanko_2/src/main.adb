with Ada.Text_IO, Ada.Integer_Text_IO; --Entrada Salida de Enteros
use Ada.Text_IO, Ada.Integer_Text_IO; --Abreviar Usar


procedure Main is

   i,j:Integer;
   Num:Integer;
   Cuadrado,Suma_Cuadrado:Integer;
   Digitos_Bin:array(0..7) of Integer;
   Hexa:array(0..7) of Integer;
   Suma_Hexa:array(0..7) of Integer;



begin
   --i:=0;
   --Cilco Simple
--   Loop
  --    i:=i+1;
    --  Put(i);
      --exit when i=10;
   --End Loop;

   --Ciclo For
   --for i in 1..5 loop
     -- Put("For:");
      --Put(i*2);
      --Put_Line("");
   --end loop;

   --Ciclo While
   --while i<10 loop
     -- i:=i+1;
      --Put("While:");
      --Put(i);
      --Put_Line("");
     --end Loop;

   Put_Line("Programa de Decimal a Binario");
      Put_Line("Dame el Numero a Convertir");
         Get(Num);
         i:=0;
         j:=0;

   for i in 0..7 loop
      Digitos_Bin(i):=2;
   end Loop;
   Put_Line("");

   while Num/=0 loop
      Digitos_Bin(i):=Num mod 2;
         Num:=Num/2;
         i:=i+1;
   end loop;

   for i in 0..7 loop
      Hexa(i):=3;
   end loop;
   Put_Line("");

   Put_Line("El Numero en Binario Seria:");
   for i in reverse 0..7 Loop

         if Digitos_Bin(i)/=2 then
          Hexa(i):=Digitos_Bin(i);
         Put(Digitos_Bin(i));
         end if;

      end Loop;
   Put_Line("");

   Put_Line("Conversion a Hexadecimal");
   --for i in 0..7 loop
     -- if Hexa(i)/=3 then
       --  Put(Hexa(i));
         --end if;
      --end loop;

   Suma_Cuadrado:=0;

   for i in 0..7 loop

      Suma_Hexa(i):=-1;
   end loop;


   for i in 0..1 loop
      for j in 0..3 loop
         if Hexa(j)=1 then
            Cuadrado:=2**j;
            Suma_Cuadrado:=Suma_Cuadrado+Cuadrado;
         end if;
      end loop;
      Suma_Hexa(i):=Suma_Cuadrado;
      Suma_Cuadrado:=0;
   end loop;



   for i in 0..7 loop

      if Suma_Hexa(i)=1 then
         Put_Line("1");
      elsif Suma_Hexa(i)=2 then
         Put_Line("2");
      elsif Suma_Hexa(i)=3 then
         Put_Line("3");
      elsif Suma_Hexa(i)=4 then
         Put_Line("4");
      elsif Suma_Hexa(i)=5 then
         Put_Line("5");
      elsif Suma_Hexa(i)=6 then
         Put_Line("6");
      elsif Suma_Hexa(i)=7 then
         Put_Line("7");
      elsif Suma_Hexa(i)=8 then
         Put_Line("8");
      elsif Suma_Hexa(i)=9 then
         Put_Line("9");
      elsif Suma_Hexa(i)=10 then
         Put_Line("A");
      elsif Suma_Hexa(i)=11 then
         Put_Line("B");
      elsif Suma_Hexa(i)=12 then
         Put_Line("C");
      elsif Suma_Hexa(i)=13 then
         Put_Line("D");
      elsif Suma_Hexa(i)=14 then
         Put_Line("E");
      elsif Suma_Hexa(i)=15 then
         Put_Line("F");
     end if;
   end loop;

end Main;
