`timescale 1ns / 1ps

module weddinglight_2TB();
        reg clk,rst;
        wire [15:0]q;
        
        weddinglight_2 uut(.clk(clk),.rst(rst),.q(q));
        
         initial
            begin
                clk=0;
                rst=0;
            end
            
         always
            #5 clk=~clk;
            
            initial
                begin
                    #100
                    #700
                    #200 $finish;
                  end
                    
endmodule