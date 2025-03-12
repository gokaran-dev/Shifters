`timescale 1ns / 1ps


module RingShifter_4bitTB();
        
        reg clk,rst;
        reg d;
        wire [3:0]dout;
        wire load;
        
        RingShifter_4bit uut(.clk(clk),.rst(rst),.q(dout),.d(d),.load(load));
        
        initial
            begin
                clk=0;
                rst=0;
                d=0;
            end
            
         always
            #5 clk=~clk;
            
         initial 
            begin
                #100 rst=0;
                #10 d=1;
                #10 d=0;
                #20 d=1;
                #10 d=0;
                #10 d=1;
                #100 $finish;
            end

endmodule
