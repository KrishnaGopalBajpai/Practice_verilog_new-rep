// interconnect declered as temp for connecting 2 gate primitives.

module nand1 (input a,b,c output y);
      wire temp;
      and a1 (temp,a,b);
      not n1 (y,temp);
endmodule

