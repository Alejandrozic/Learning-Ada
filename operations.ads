-- Definition file for Operations

with Complex_Numbers; use Complex_Numbers;

package Operations is
   
   -- Temporary variables
   a: Float;
   b: Float;
   c: Float;
   d: Float;
   TmpInt1: Float;
   TmpInt2: Float;
   
   -- Definitions
   function Addition (left : ComplexNumber; right: ComplexNumber) return ComplexNumber;
   function Subtraction (left : ComplexNumber; right: ComplexNumber) return ComplexNumber;
   function Division (left : ComplexNumber; right: ComplexNumber) return ComplexNumber;
   function Multiplication (left : ComplexNumber; right: ComplexNumber) return ComplexNumber;
		
end Operations;
