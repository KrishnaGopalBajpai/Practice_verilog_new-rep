// integer :- signed in nature. register type(size 32bit, default value is x)

// integer decleration understanding.
module integer_checks;
    
  integer i1;
  integer [3:0] k2; // invalied syntex bcoz of inbult 32 bit.
  
  initial begin
    i1=54;
  end
  
endmodule



// Error reported:- due to inbilt 32 bit atleast or machine dependent.
//** Error: D:\verilog\understanding_of_datatype_integerchks.v(5): Can't have packed array of integer type.
bi
