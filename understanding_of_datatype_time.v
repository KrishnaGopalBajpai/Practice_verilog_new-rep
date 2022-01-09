// $time:- Reg (Used to store simulation time, size 64 bit, default value is x) returns current simulation time. 
// $time begin at zero simulation time. we can provide delay here. 

module time_checks;
    time t;
    initial begin
      #15;
      t=$time;
    end
endmodule
