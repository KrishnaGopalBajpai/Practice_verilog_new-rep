//EX-1 single line comment. (use only "//")

module mux (input a, b, sel, output y); // module decleration
     
      wire t1,t2;     // interconnect
      
      and A1(t1,a,b); //gate level design of mux.
      and A2(t1,a,b);
      or O1(y,t1,t2);
      
endmodule              // end of the code

//Ex-2 whole block comment. (use "/*...code...*/")

/*module mux (input a, b, sel, output y); // module decleration
     
      wire t1,t2;     // interconnect
      
      and A1(t1,a,b); //gate level design of mux.
      and A2(t1,a,b);
      or O1(y,t1,t2);
      
endmodule              // end of the code  */
