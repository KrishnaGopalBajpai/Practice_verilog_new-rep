// moore modle of sequence dector 101 using 2 always block and non overlapping case.
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
      idle:if(i==1) st=s1;
            else st=idle;
      s1:  if(i==1)st=s1;
            else st=s10; 
      s10: if(i==1) st=s101;
            else st=idle;
      s101:if(i==0) st= idle;
            else st= idle;
    endcase 
    
    always @(posedge clk)
    if(rst)
    q=0;
    else if(st==101)
    q=1;
    else
    q=0; 
     
endmodule






