`timescale 1ns / 1ps

module weddinglight_TB();
        
        wire [15:0]q;
        reg clk,rst;
        
        weddinglight UUT(.clk(clk),.rst(rst),.q(q));
        
        initial
            begin
                clk=0;
                rst=0;
             end
             
         always
            #5 clk=~clk;
            
         initial 
            begin
                #100 rst=0;
                #400 $finish;
            end
    
endmodule
