`timescale 1ns / 1ps

module SIPO_4bit(
        input d,
        input clk,rst,
        output [3:0]q
    );
    
        reg CE=1'b1;
        
        FDRE #(.INIT(1'b0)) ff0 (.C(clk),.CE(CE),.R(rst),.D(d),.Q(q[0]));
        FDRE #(.INIT(1'b0)) ff1 (.C(clk),.CE(CE),.R(rst),.D(q[0]),.Q(q[1]));
        FDRE #(.INIT(1'b0)) ff2 (.C(clk),.CE(CE),.R(rst),.D(q[1]),.Q(q[2]));
        FDRE #(.INIT(1'b0)) ff3 (.C(clk),.CE(CE),.R(rst),.D(q[2]),.Q(q[3]));
    
    
endmodule
