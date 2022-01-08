// example for undersatnding of reg data type.

module reg_checks;
  reg r1; // scalar reg
  
  reg [3:0] r2; // vector reg of 4bit
  
  initial // initial block
  
  begin 
    
    r1=1'b1;
    r2=4'b1010;
    
  end
  
endmodule
