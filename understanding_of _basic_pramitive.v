// basic of primitive

module basic_gates (input a,b,c, output y1,y2,y3);
   // and A1 (y1,a,b); // and primitive
  //  not N1(y1,y2,y3,a);  // not primitive
      bufif0 B1 (y1,a,c); // tristate buffer
endmodule
