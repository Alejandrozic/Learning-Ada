package Complex_Numbers is
   
   -- Variables for Temp use
   TmpInt1: Float;
   TmpInt2: Float;
	
   -- Record definition
	type ComplexNumber is record
	   x, y : Float;
   end record;
   
   -- Function Definitions
   function ToString (cn : ComplexNumber) return String;
   function FromString (text : String) return ComplexNumber;
			

end Complex_Numbers;
