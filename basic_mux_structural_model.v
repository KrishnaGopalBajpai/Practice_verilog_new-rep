module mux1(input a,b,s,output y);
    wire t1,t2,t3; // internals decleration.
    // wire[2:0] t;
    //not n1(t3,s);  // by using not premitives.
    //and a1(t1,a,!s); // two type of inverted selection for mux.
    
    and a1 (t1,a,~s);
    and a2 (t2,b,t3);
    or r1 (y,t1,t2);    
endmodule

