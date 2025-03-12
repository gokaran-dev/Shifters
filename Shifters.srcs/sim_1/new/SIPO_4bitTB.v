`timescale 1ns / 1ps


module SIPO_4bitTB();
    reg d,clk,rst;
    wire [3:0]q;
    
    SIPO_4bit uut(.d(d),.clk(clk),.rst(rst),.q(q));
    
    initial
        begin
            clk=0;
            d=0;
            rst=0;
        end
        
     always
        #5 clk=~clk;
        
        initial 
            begin
                #100 rst=0; d=0;
                #10 d=1;
                #10 d=0;
                #5 d=1;
                #10 d=0;
                #15 d=1;
                #100 $finish;
           end
    
endmodule
