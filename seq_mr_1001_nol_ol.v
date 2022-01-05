// moore modle using ol/nol case for seq_1001.
module seq_mor_1001 (input i, clk, rst, output reg q);
    // state decleare
    localparam idle  = 3'b000;
    localparam s1    = 3'b001;
    localparam s10   = 3'b010;
    localparam s100  = 3'b011;
    localparam s1001 = 3'b100;
    //state veriable
    reg st;
    
    always @(posedge clk)
    if(rst) begin
      st=idle;
      q=0; end
    else
      case(st)
        idle   : begin if(i==1) st=s1;
                 else st=idle; q=0; end
        s1     : begin if(i==1) st=s1;
                 else st=s10; q=0; end
        s10    : begin if(i==1) st=s1;
                 else st=s100; q=0; end
        s100   : begin if(i==1) st=s1001;
                 else st= idle; q=0; end
        s1001  : begin (i==1)st=s1;
                 else st=s10; q=1; end
                 // for nol case line 27 exchnaged with the 29.
                 //else st=idle; q=1; end                                       
      endcase            
endmodule
