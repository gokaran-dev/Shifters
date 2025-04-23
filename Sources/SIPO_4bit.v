`timescale 1ns / 1ps

module SIPO_8bit(
        input d,
        input clk,rst,
        output [7:0]q
    );
    
        reg CE=1'b1;
        
        FDRE #(.INIT(1'b0)) ff0 (.C(clk),.CE(CE),.R(rst),.D(d),.Q(q[0]));
        FDRE #(.INIT(1'b0)) ff1 (.C(clk),.CE(CE),.R(rst),.D(q[0]),.Q(q[1]));
        FDRE #(.INIT(1'b0)) ff2 (.C(clk),.CE(CE),.R(rst),.D(q[1]),.Q(q[2]));
        FDRE #(.INIT(1'b0)) ff3 (.C(clk),.CE(CE),.R(rst),.D(q[2]),.Q(q[3]));
        FDRE #(.INIT(1'b0)) ff4 (.C(clk),.CE(CE),.R(rst),.D(q[3]),.Q(q[4]));
        FDRE #(.INIT(1'b0)) ff5 (.C(clk),.CE(CE),.R(rst),.D(q[4]),.Q(q[5]));
        FDRE #(.INIT(1'b0)) ff6 (.C(clk),.CE(CE),.R(rst),.D(q[5]),.Q(q[6]));
        FDRE #(.INIT(1'b0)) ff7 (.C(clk),.CE(CE),.R(rst),.D(q[6]),.Q(q[7]));
    
    
endmodule
