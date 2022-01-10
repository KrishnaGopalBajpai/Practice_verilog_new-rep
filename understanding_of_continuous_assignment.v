// assign keyword is used for continuous assignment.(value assign to net, always active, any chnage in rhs immediately reported on lhs.)
// mux by using dataflow modelling.

module m2x1 (input i,s, output y);
  assign y=(~s&a)|(s&b); // data flow style of modelling
endmodule

// xnor gate by data flow modulling.

module xnor1 (input a,b, output y);
    assign y =(~a&~b)|(a&b);
endmodule 

// xor gate by data flow modulling.
 
module xor1(input a,b,output y);
    assign y=(~a&b)|(a&~b);
endmodule
