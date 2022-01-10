//understanding_of_portdecleration
module chks_port (input a,b,c,output y,t);
   
   // suppose i want to read y internally then use internal decleration.   
   wire temp;
   assign temp=1;
   assign t = temp;
   assign y = temp;
   
   assign a=0;   // bed practices 
   assign y=1;   // bed practices
   assign c=a+b;
   assign t=y;    // bed practices

endmodule

// mod-4 counter.

//bed practice of port decleration. understanding_of_basic_primitiv.v
module mod_counter(input clk,rst,output reg[1:0]q);
   // want to implement q vaule at every pulse.
   reg[1:0] temp;
   
   always @(posedge clk)
   begin
     if(rst==1)
       q=2'b00;
     else
       q=q+1;
     end
endmodule

//Good practice of port decleration by storing internals in internal temp veriable.
module mod_count(input clk,rst,output reg[1:0]q);
   // want to implement q vaule at every pulse.
   reg[1:0] temp;
   
   always @(posedge clk)
   begin
     if(rst==1)
       temp=2'b00;
     else
       temp=temp+1;
       q=temp;
     end
endmodule


