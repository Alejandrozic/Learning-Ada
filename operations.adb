-- Operations


with Complex_Numbers; use Complex_Numbers;

package body Operations is

   -- Function performs Complex Number Addition
   function Addition (left : ComplexNumber; right: ComplexNumber) return ComplexNumber is
   begin
      return ComplexNumber'( left.x+right.x, left.y+right.y);
   end Addition;

   -- Function performs Complex Number Subtraction
   function Subtraction (left : ComplexNumber; right: ComplexNumber) return ComplexNumber is
   begin
      return ComplexNumber'( left.x-right.x, left.y-right.y);
   end Subtraction;

   -- Function performs Complex Number Division
   -- Formula derived from: https://www.cuemath.com/numbers/division-of-complex-numbers/
   function Division (left : ComplexNumber; right: ComplexNumber) return ComplexNumber is
   begin
      a := left.x;
      b := left.y;
      c := right.x;
      d := right.y;
      TmpInt1 := (a*c + b*d) / (c**2 + d**2);
      TmpInt2 := (b*c - a*d) / (c**2 + d**2);
      return ComplexNumber'( TmpInt1, TmpInt2);
   end Division;

   -- Function performs Complex Number Multiplcation
   -- Formula derived from: https://www.cuemath.com/numbers/multiplying-complex-numbers/
   function Multiplication (left : ComplexNumber; right: ComplexNumber) return ComplexNumber is
   begin
      a := left.x;
      b := left.y;
      c := right.x;
      d := right.y;
      TmpInt1 := (a*c - b*d);
      TmpInt2 := (a*d + b*c);
      return ComplexNumber'( TmpInt1, TmpInt2);
   end Multiplication;

end Operations;
