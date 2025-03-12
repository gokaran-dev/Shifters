`timescale 1ns / 1ps

module pattern_2TB();
        reg clk,rst;
        wire [15:0]q;
        
        pattern2 uut(.clk(clk),.rst(rst),.q(q));
        
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
                    #300
                    #100 $finish;
                  end
                    
endmodule
