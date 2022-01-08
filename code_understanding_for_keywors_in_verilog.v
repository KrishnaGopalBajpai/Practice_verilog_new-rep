//"Keywords:- Reserved identifiers to define language constructs. All keywords are in lowercase."
//for example in this code (module, input, output, wire, gate primitives, and endmodule)

module mux2 (input a,b,sel,output y);
        
    wire t1,t2;
        
          and A1(t1,a,b);
          and A2(t2,a,b);
          or O1(Y,t1,t2);

endmodule
