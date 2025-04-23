`timescale 1ns / 1ps


module weddinglight(
        input clk,rst,
        output [15:0]q
    );
        reg CE=1'b1;
        genvar i;
        
   
       generate
        for (i = 0; i < 16; i = i + 1) 
        begin 
            FDRE #(.INIT((i < 4) ? 1'b1 : 1'b0))
            ff (
                .Q(q[i]), 
                .C(clk), 
                .CE(CE), 
                .R(rst), 
                .D(i == 0 ? q[15] : q[i-1])
            );
            
        end
    endgenerate  
    
          
    
endmodule
