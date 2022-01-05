// moore modle of sequence detector 1100 (nol)
module seq_mr_1100 (input i, clk, rst, output reg q);
  // state decleration
  localparam idle  = 3'b000;
  localparam s1    = 3'b001;
  localparam s11   = 3'b010;
  localparam s110  = 3'b011;
  localparam s1100 = 3'b100;
  // state veriable
  reg st;
  always@(posedge clk)
  if (rst) begin
    st=idle;
    q=0; end
  else
    case(st)
      idle  : begin if(i==1) st=s1;
                else st=idle; q=0; end
      s1    : begin if(i==1) st=s11; 
                else st=idle; q=0; end
      s11   : begin if(i==1) st=s11;
                else st=s110; q=0; end
      s110  : begin if(i==1) st=s1;
                else st=s1100; q=0 end
      s1100 : begin if(i==1) st=s1;
                else st= idle; q=0; end
      endcase                                           
      
endmodule
