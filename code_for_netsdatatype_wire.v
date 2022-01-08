module wire_checks; // module decleration 
  wire w1;       // scalar wire or 1 bit wire 
  wire [3:0] w2; // vector wire of 4 bit
  
  assign w1 = 1'b1;
  assign w2 = 4'b1010;
 // assign w2[0]=1'b0;  //indivisual decleration of bit.
 // assign w3[3]=1'b1;  //
  
  
endmodule // end module

// example of multidriver

module wire_checks; // module decleration.
  
  wire w1; // sclar wire or 1 bit wire.
  
  assign w1= 1'b1;
  assign w1= 1'b0;
  
endmodule // endmodule 

// example of wire, wand and wor.

module wire_checks; // module decleration.
 
 wire w1; wand w2; wor w3; 
 
 // wire :- simple driver 
 assign w1=1'b0;
 assign w1=1'b1;
 
 // wand :- follows the and function
 assign w2=1'b1;
 assign w2=1'b0;
 
 // wor :- follows the or function
 assign w3=1'b0;
 assign w3=1'b1;
 
 endmodule // endmodule
  
