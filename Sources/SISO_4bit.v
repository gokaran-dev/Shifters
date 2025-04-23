`timescale 1ns / 1ps


module SISO_8bit(
        input d,
        input clk,rst,
        output dout
    );
        reg CE=1'b1;
        wire [6:0]q;
        
        FDRE #(.INIT(1'b0)) ff0 (.D(d),.CE(CE),.R(rst),.Q(q[0]),.C(clk));
        
        FDRE #(.INIT(1'b0)) ff1 (.D(q[0]),.CE(CE),.R(rst),.Q(q[1]),.C(clk));
        FDRE #(.INIT(1'b0)) ff2 (.D(q[1]),.CE(CE),.R(rst),.Q(q[2]),.C(clk));
        FDRE #(.INIT(1'b0)) ff3 (.D(q[2]),.CE(CE),.R(rst),.Q(q[3]),.C(clk));
        FDRE #(.INIT(1'b0)) ff4 (.D(q[3]),.CE(CE),.R(rst),.Q(q[4]),.C(clk));
        FDRE #(.INIT(1'b0)) ff5 (.D(q[4]),.CE(CE),.R(rst),.Q(q[5]),.C(clk));
        FDRE #(.INIT(1'b0)) ff6 (.D(q[5]),.CE(CE),.R(rst),.Q(q[6]),.C(clk));
        FDRE #(.INIT(1'b0)) ff7 (.D(q[6]),.CE(CE),.R(rst),.Q(dout),.C(clk));
        
    
endmodule
