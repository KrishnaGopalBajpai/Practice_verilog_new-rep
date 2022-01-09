//understanding of the data type string 
//String :- Reg(use to store) and each char requires 8-bits to store.
//if reg size is big then zeros are padded in the left side else bits are truncated.
// reg[39:0] value;(40bits reg to store 5 char)
// value = "Hello";  
// Note:- not a data type in verilog it's just store by the help of reg.

module strg_checks;
  
  reg[39:0] str;
  
  initial begin
    str="DVLSI";
    end
    
endmodule    
  
