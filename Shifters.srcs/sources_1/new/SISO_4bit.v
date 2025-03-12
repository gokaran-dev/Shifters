`timescale 1ns / 1ps


module SISO_4bit(
        input d,
        input clk,rst,
        output dout
    );
        reg CE=1'b1;
        wire [2:0]q;
        FDRE #(.INIT(1'b0)) ff0 (.D(d),.CE(CE),.R(rst),.Q(q[0]),.C(clk));
        FDRE #(.INIT(1'b0)) ff1 (.D(q[0]),.CE(CE),.R(rst),.Q(q[1]),.C(clk));
        FDRE #(.INIT(1'b0)) ff2 (.D(q[1]),.CE(CE),.R(rst),.Q(q[2]),.C(clk));
        FDRE #(.INIT(1'b0)) ff3 (.D(q[2]),.CE(CE),.R(rst),.Q(dout),.C(clk));
        
        
    
endmodule
