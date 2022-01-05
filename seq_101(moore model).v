// (wrong code)moore modle of sequence dector 101 using single always block and non overlapping case.
module seq_mor_101(input i, clk, rst, output reg q);
  // state decleration.
  localparam idle = 2'b00;
  localparam s1 = 2'b01;
  localparam s10 = 2'b10;
  localparam s101= 2'b11;
  
  reg [1:0]st;  // state veriable
  
  always @(posedge clk)
  if(rst) begin
  q=0;
  st=idle; end
  else
    case(st)
      idle: begin if(i==1) st=s1;
            else st=idle; q=0; end
      s1: begin if(i==1)st=s1;
            else st=s10; q=0; end
      s10: begin if(i==1) st=s101;
            else st=idle; q=0; end
      s101: begin if(i==0) st= idle;
            else st= idle; q=1; end           
    endcase   
endmodule

// right code : moore modle of sequence dector 101 using single always block and non overlapping case.
module seq_mor_101(input i, clk, rst, output reg q);
  // state decleration.
  localparam idle = 2'b00;
  localparam s1 = 2'b01;
  localparam s10 = 2'b10;
  localparam s101= 2'b11;
  
  reg [1:0]st;  // state veriable
  
  always @(posedge clk)
  if(rst) begin
  q=0;
  st=idle; end
  else
    case(st)
      idle: begin if(i==1) st=s1;
            else st=idle; q=0; end
      s1: begin if(i==1)st=s1;
            else st=s10; q=0; end
      s10: begin if(i==1) st=s101;
            else st=idle; q=0; end
      s101: begin if(i==1) st= s1;
            else st= idle; q=1; end           
    endcase   
endmodule
