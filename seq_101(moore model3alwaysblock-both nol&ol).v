// moore modle of sequence dector 101 using 3 always block and overlapping case.
module seq_mor_101(input i, clk, rst, output reg q);
  // state decleration.
  localparam idle = 2'b00;
  localparam s1 = 2'b01;
  localparam s10 = 2'b10;
  localparam s101= 2'b11;
  
  reg [1:0]ps, ns;  // state veriable
  
  always @(posedge clk)
  if(rst) begin
  q=0;
  ps=idle; end
  else
    ps=ns;
    
    // overlapping case of state machine.
    always@(ps) begin
    case(ps)
      idle:if(i==1) ns=s1;
            else ns=idle;
      s1:  if(i==1)ns=s1;
            else ns=s10; 
      s10: if(i==1) ns=s101;
            else ns=idle;
      s101:if(i==1) ns= s1;
            else ns= s10;
    endcase 
    
    // non-overlapping case.
/*    always@(posedge clk)
    case(ps)
      idle:if(i==1) ns=s1;
            else ns=idle;
      s1:  if(i==1)ns=s1;
            else ns=s10; 
      s10: if(i==1) ns=s101;
            else ns=idle;
      s101:if(i==1) ns= idle;
            else ns= idle;
    endcase
    */
    
    always @(posedge clk)
    if(rst)
    q=0;
    else if(st==101)
    q=1;
    else
    q=0; 
     
endmodule
