// module sequence dectoter 1011(mealy model) with single always block and nol and ol .
module seq_1011(input i, clk, rst, output reg q);
 // state decleration.
 localparam idle=2'b00;
 localparam s1 =2'b01; 
 localparam s10=2'b10;
 localparam s101=2'b11;
 // state variable
  reg st;
  always@(posedge clk)
  if(rst) begin
  st=idle;
  q=0; end
  else
    // case block for overlapping 1 bit.
    /*case(st)  
    idle: if(i==1)begin st=s1; q=0; end
          else begin st=idle; q=0; end
    s1  : if(i==1) begin st=s1; q=0; end
          else begin st=s10; q=0; end
    s10 : if(i==1)begin st=s101; q=0; end
          else begin st=idle; q=0; end
    s101: if(i==1)begin st=s1; q=1; end
          else begin st=idle; q=0; end
    endcase */ 
    
    // case block for non-overlapping
    case(st) 
    idle: if(i==1)begin st=s1; q=0; end
          else begin st=idle; q=0; end
    s1  : if(i==1) begin st=s1; q=0; end
          else begin st=s10; q=0; end
    s10 : if(i==1)begin st=s101; q=0; end
          else begin st=idle; q=0; end
    s101: if(i==1)begin st=idle; q=1; end
          else begin st=idle; q=0; end
    endcase               
endmodule
