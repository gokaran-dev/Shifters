`timescale 1ns / 1ps


module Tflipflop_IPTB();

        reg T,clk,r;
        wire q;
        
        Tflipflop_IP uut(.clk(clk),.t(T),.rst(r),.q(q));
        
        //clock generation
        initial clk=0;
            always
                begin
                    #5 clk=~clk;
                end
                
          initial
            begin
                #100 T=0; r=0; 
                #10 T=1;
                #20 T=0;
                #20 r=1;
                #5 T=1;
                #30 r=0;
                #20 T=1;
                #10 T=0;
               
               #50 $finish;
            end 
                
                
                
    

endmodule
