`timescale 1ns / 1ps


module RingShifter_4bit(
        input d,
        input  clk,rst,
        output [3:0]q,
        output load
    );
    
    reg CE=1'b1;
    reg load;
    //preloaded 
    
    /*FDRE #(.INIT(1'b1)) ff0(.C(clk),.R(rst),.Q(q[0]),.D(q[3]),.CE(CE));
    FDRE #(.INIT(1'b0)) ff1(.C(clk),.R(rst),.Q(q[1]),.D(q[0]),.CE(CE));
    FDRE #(.INIT(1'b0)) ff2(.C(clk),.R(rst),.Q(q[2]),.D(q[1]),.CE(CE));
    FDRE #(.INIT(1'b0)) ff3(.C(clk),.R(rst),.Q(q[3]),.D(q[2]),.CE(CE));*/
    
    //loading
    FDRE #(.INIT(1'b0)) ff0(.C(clk),.R(rst),.Q(q[0]),.D(load < 2 ? d: q[3]),.CE(CE));
    FDRE #(.INIT(1'b0)) ff1(.C(clk),.R(rst),.Q(q[1]),.D(q[0]),.CE(CE));
    FDRE #(.INIT(1'b0)) ff2(.C(clk),.R(rst),.Q(q[2]),.D(q[1]),.CE(CE));
    FDRE #(.INIT(1'b0)) ff3(.C(clk),.R(rst),.Q(q[3]),.D(q[2]),.CE(CE));
    
    always@(*)
        load=load+1;
    
    
    
endmodule
