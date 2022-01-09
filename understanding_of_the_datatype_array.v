//undedtanding of the arrar data type.

module arr_checks;
  reg[4:0]mem[7:0]; // (sim o/p:- fixed size array)array decleration
  reg[4:0]temp;  //(sim o/p:- Packed array)internal declaeration
    
    initial begin  // procedural block
      mem[5]=4'b1101; // access 5th loc of memory also perform write operation.
      temp = mem[5]; // reading from the 5th location of memory.
    end
endmodule  // end of code.
