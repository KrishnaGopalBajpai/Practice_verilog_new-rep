module primitive_basic_gate (output out, input in1,in2);
  and a1 (out,in1,in2);
  or o1 (out,in1,in2);
  xor x1(out,in1,in2);
endmodule

module norm_buffer (input in, output out1,out2); // (fanout=2)
    buf b0 (out1,out2,in);
    not n0 (out1,out2,in);
endmodule


module tri_buffer (input in,ctrl, output out);
  bufif0 b1(out,in,ctrl);
  bufif1 b2(out,in,ctrl);
  notif0 n1(out,in,ctrl);
  notif1 n2(out,in,ctrl);  
endmodule

module mux4x1 (input in,sel,output out);
    input[3:0] in;
    input[1:0] sel;
    wire [3:0] t;
    and a1 (t[0],in[0],~sel[0],~sel[1]);
    and a2 (t[1],in[1], sel[0],~sel[1]);
    and a3 (t[2],in[2],~sel[0],sel[1]);
    and a4 (t[3],in[3],sel[0],sel[1]);
    or o1 (out,t[0],t[1],t[2],t[3]);
    
endmodule


module decoder_2x4 (input in, output out);
  input [1:0] in;
  output [3:0] out;
  and O1 (out[0],~in[1],~in[0]);
  and O2 (out[1],~in[1],in[0]);
  and O3 (out[2],in[1],~in[0]);
  and O4 (out[3],in[1],in[0]);
endmodule


module meg_comp (input a,b,output greater, less ,equal);
  xnor XNR(equal,a,b);  // for a equal to b.
  and LESS (less,~a,b);  // for a is less then b.
  and GREATER (greater,a,~b); // for a is greater then b.
endmodule

module normal_dcl_vector (output out, input in1, in2);
  output[3:0]out;
  input[3:0] in1;
  input[3:0] in2;    
  and u0 (out[0],in1[0],in2[0]);
  and u1 (out[1],in1[1],in2[1]);
  and u2 (out[2],in1[2],in2[2]);
  and u3 (out[3],in1[3],in2[3]);
  //alternative solution from above code.
  and u[3:0](out,in1,in2);
  
endmodule
