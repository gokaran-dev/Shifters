`timescale 1ns / 1ps


module nand3_TB();
    
        reg a,b,c;
        wire o;
        
        nand3 UUT(.a(a),.b(b),.c(c),.o(o));
        
        initial
            begin
                #10 a=0; b=0; c=0;
                #10 a=0; b=0; c=1;
                #10 a=0; b=1; c=0;
                #10 a=0; b=1; c=1;
                #10 a=1; b=0; c=0;
                #10 a=1; b=0; c=1;
                #10 a=1; b=1; c=0;
                #10 a=1; b=1; c=1;
                #10 $finish;
                
            end
        
endmodule
