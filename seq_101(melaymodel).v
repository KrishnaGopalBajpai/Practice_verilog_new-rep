// melay modle of sequence dector 101.
module seq_mly_101(input i, clk, rst, output reg q);
  // state decleration.
  localparam idle = 2'b00;
  localparam s1 = 2'b01;
  localparam s10 = 2'b10;
  
  reg [1:0]st;  // state veriable
  
  always @(posedge clk)
  if(rst) begin
  q=0;
  st=idle; end
  else
    case(st)
      idle: if(i==1) begin
      st=s1;
      q=0; end
    else begin
      st=idle;
      q=0; end
      s1: if(i==1)begin
      st=s1;
      q=0; end
    else begin
      st=s10;
      q=0;end
      /*This is the over lapping case for the case of non-overlapping we ahve to make both 
      the state to idle in state(s10)*/
      s10: if(i==1) begin   
      st=s1;
      q=1;end
    else begin
      st=idle;
      q=0;end
  endcase   
endmodule
