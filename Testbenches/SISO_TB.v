`timescale 1ns / 1ps


module SISO_TB();
        reg clk,rst;
        reg d;
        wire q;
    
    
        SISO_8bit uut(.d(d),.clk(clk),.rst(rst),.dout(q));
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
                    #100 
                    #10 rst=1;
                    #5 rst=0;
                    #10 d=1;   
                    #10 d=0;   
                    #10 d=1; 
                    #10 d=0;   
                    #10 d=1;   
                    #10 d=0;  
                    #10 d=1; 
                    #100 $finish;
                    
                end
endmodule
