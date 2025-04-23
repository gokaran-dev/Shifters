`timescale 1ns / 1ps

//same pattern as weddinglight2 but used a loop to generate the flipflops

module pattern2(
        input clk,rst,
        output [15:0]q
        );
        
       reg CE=1'b1;
       reg [2:0]load=3'b000;
       //wire nclk;
       genvar i;
       //clock_divider UUT(.clk(clk),.nclk(nclk));
       
       FDRE #(.INIT(1'b0)) ff0(.C(clk),.R(rst),.Q(q[0]),.D(load < 3'b100 ? 1'b1: q[15]),.CE(CE));
       
       generate
        for(i=1;i<16;i=i+1)
            begin
              FDRE #(.INIT(1'b0)) 
              ff (
              .C(clk),
              .R(rst),
              .Q(q[i]),
              .D(q[i-1]),
              .CE(CE)
              );
            end
         endgenerate  
            
    always @(posedge clk)
        begin
        if(rst==1)
            begin
                load =3'b000;
            end
        else if(load<4)
            begin
                load <= load+3'b001;
            end
         
        end
endmodule
