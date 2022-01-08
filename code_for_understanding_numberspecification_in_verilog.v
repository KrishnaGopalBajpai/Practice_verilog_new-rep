// there are two type of number specification.
//1) Sized number. (syntex : <size/decimal>'<base/(b or B, d or D, o or O, h or H)><number>).
//2) unsized number.(syntex : '<base><number> default base decimal and 
//   size as per simulator(may be 32bit)).  
//For Negative numbers :- add "-" sign before the size specification(stroed in 2's complement).
/* Example:- 159 - decimal number
            'hab9 - unsized hexadecimal number
            'o35  - unsized octal number
          5'b10110- 5 bit binary number
          12'h7f9 - 12 bit hexadecimal number
          -4'd3   - 2's complement of 3
          -3'b011 - 2's complement of 3
          9'o352  - 9 bit octal number
          8'h-af  - invalid syntex. */
          
// value for x : unknown and z : high impedance.
// if msb bit of the number is x or z then remaining msb bit can be fill by x or z respectivly.
// if msb bit of the number is 1 or 0 then 0 is padded to fill the remaining msb.           
// _ use :-  _ use for readability, ignored by complier allowed at any where except 1st char.
// ? :- alternative for z in verilog.
// 

/* wrong code .
module num (input x, output y);
      parameter N = 20;
     // wire[N:0]x;
      x = 3'b101;
      y=x;
      $dispaly (y)
      //y='hab9;
endmodule */
