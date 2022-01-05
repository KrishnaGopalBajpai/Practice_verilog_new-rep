// Mealy modle of sequence detector 1100 (nol)
module seq_mly_1100 (input i, clk, rst, output reg q);
  // state decleration
  localparam idle  = 2'b00;
  localparam s1    = 2'b01;
  localparam s11   = 2'b10;
  localparam s110  = 2'b11;
  // state veriable
  reg st;
  always@(posedge clk)
  if (rst) begin
    st=idle;
    q=0; end
  else
    case(st)
      idle  : if(i==1) begin st=s1; q=0; end
                else begin st=idle; q=0; end
      s1    : if(i==1) begin st=s11; q=0; end
                else begin st=idle; q=0; end
      s11   : if(i==1) begin st=s11; q=0; end
                else begin st=s110; q=0; end
      s110  : if(i==1) begin st=idle; q=0; end
                else begin st=idle; q=1; end
    endcase                                                    
      
endmodule
