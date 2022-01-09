// Parameter :- Use for costant decleration (can be binary,integer,real or string) making code generic.
// syntex :- parameter Veriable_name = Value;

module adder (a,b,sum);
  parameter n=4;
  input[n-1:0]a;
  input[n-1:0]b;
  output[n-1:0];
  assign sum=a+b;
endmodule
