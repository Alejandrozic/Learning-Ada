package body Complex_Numbers is
   
   -- Returns a complex number as a String
   function ToString (cn : ComplexNumber) return String is
   begin
      return cn.x'Image & " + " & cn.y'Image & "i";
   end ToString;
   
   -- Parses a Complex number FROM text
   -- Contraints: Currently only supports single
   -- digits.
   function FromString (text : String) return ComplexNumber is
   begin
      TmpInt1 := Float'Value(text(text'first..text'first));
      TmpInt2 := Float'Value(text(text'first+2..text'first+2));
      return ComplexNumber'(TmpInt1, TmpInt2);
   end FromString;
  
   
end Complex_Numbers;
