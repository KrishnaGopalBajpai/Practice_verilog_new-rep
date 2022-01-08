// Understanding of module block (module and endmodule is keywords to decleare).
// module having name (identifiers) and portlist (IOs).
// syntex :- <module> <name> <(ports)><;>

// Example 1:-

module or2 (input a,b, output y);
  assign y= a|b;
endmodule

// Example 2:- 

module or3 (a,b,y);
  input a,b;
  output y;
  assign y= a|b;
endmodule

// module decleration of d flip-flop
module dff(input clk,d,rst, output q); .

// module decleration of mod8 counter.
module count_mod8 (input clk, rst , output q1,q2,q3,q4); 

// module decleration of magnitude comparator.
module mag_com (a,b,g,l,e);
 input a,b;
 output g, l, e;

    
