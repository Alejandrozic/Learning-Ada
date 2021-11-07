------------
-- DRIVER --
------------

with Ada.Text_IO; use Ada.Text_IO;
with Complex_Numbers; use Complex_Numbers;
with Operations; use Operations;

procedure Main is
   
   InputA   : String(1..80);
   InputALength : Integer;
   InputAComplexNumber : ComplexNumber;
   
   InputB   : String(1..80);
   InputBLength : Integer;
   InputBComplexNumber : ComplexNumber;
   
   OperationSign   : Character;
   OperationResult : ComplexNumber;
   
begin
   -- Collect First Complex Number
   Put ("Enter the First Complex Number: ");
   Get_Line (InputA, InputALength);
   InputAComplexNumber := FromString(InputA);
   
   -- Collect Second Complex Number
   Put ("Enter the Second Complex Numberr: ");
   Get_Line (InputB, InputBLength);
   InputBComplexNumber := FromString(InputB);
   
   -- Output numbers entered
   Put_Line ("The Second Complex Number you entered is " & ToString(InputAComplexNumber));
   Put_Line ("The Second Complex Number you entered is " & ToString(InputBComplexNumber));
   
   -- Collect desired Operation
   Put ("Please Select Operation [-,+,*,/]: ");
   Get (OperationSign);
   
   -- Operation Logic/Switch
   if OperationSign = '+' then
      OperationResult := Addition(InputAComplexNumber, InputBComplexNumber);
   elsif OperationSign = '-' then
      OperationResult := Subtraction(InputAComplexNumber, InputBComplexNumber);
   elsif OperationSign = '*' then
      OperationResult := Multiplication(InputAComplexNumber, InputBComplexNumber);
   elsif OperationSign = '/' then
      OperationResult := Division(InputAComplexNumber, InputBComplexNumber);
   end if;
   
   -- Ouput Result of Operation
   Put_Line ("Result: " & ToString(OperationResult));
   
end Main;
