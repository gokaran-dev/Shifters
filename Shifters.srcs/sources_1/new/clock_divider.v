`timescale 1ns / 1ps

module clock_divider(
        input clk,
        output nclk,
        output [24:0]q
    );
        reg rst=0;
        
        Tflipflop_IP ff0(.clk(clk),.rst(rst),.q(q[0]));
        Tflipflop_IP ff1(.clk(q[0]),.rst(rst),.q(q[1]));
        Tflipflop_IP ff2(.clk(q[1]),.rst(rst),.q(q[2]));
        Tflipflop_IP ff3(.clk(q[2]),.rst(rst),.q(q[3]));
        Tflipflop_IP ff4(.clk(q[3]),.rst(rst),.q(q[4]));
        Tflipflop_IP ff5(.clk(q[4]),.rst(rst),.q(q[5]));
        Tflipflop_IP ff6(.clk(q[5]),.rst(rst),.q(q[6]));
        Tflipflop_IP ff7(.clk(q[6]),.rst(rst),.q(q[7]));
        Tflipflop_IP ff8(.clk(q[7]),.rst(rst),.q(q[8]));
        Tflipflop_IP ff9(.clk(q[8]),.rst(rst),.q(q[9]));
        Tflipflop_IP ff10(.clk(q[9]),.rst(rst),.q(q[10]));
        Tflipflop_IP ff11(.clk(q[10]),.rst(rst),.q(q[11]));
        Tflipflop_IP ff12(.clk(q[11]),.rst(rst),.q(q[12]));
        Tflipflop_IP ff13(.clk(q[12]),.rst(rst),.q(q[13]));
        Tflipflop_IP ff14(.clk(q[13]),.rst(rst),.q(q[14]));
        Tflipflop_IP ff15(.clk(q[14]),.rst(rst),.q(q[15]));
        Tflipflop_IP ff16(.clk(q[15]),.rst(rst),.q(q[16]));
        Tflipflop_IP ff17(.clk(q[16]),.rst(rst),.q(q[17]));
        Tflipflop_IP ff18(.clk(q[17]),.rst(rst),.q(q[18]));
        Tflipflop_IP ff19(.clk(q[18]),.rst(rst),.q(q[19]));
        Tflipflop_IP ff20(.clk(q[19]),.rst(rst),.q(q[20]));
        Tflipflop_IP ff21(.clk(q[20]),.rst(rst),.q(q[21]));
        Tflipflop_IP ff22(.clk(q[21]),.rst(rst),.q(q[22]));
        Tflipflop_IP ff23(.clk(q[22]),.rst(rst),.q(q[23]));
        Tflipflop_IP ff24(.clk(q[23]),.rst(rst),.q(q[24]));
        Tflipflop_IP ff25(.clk(q[24]),.rst(rst),.q(nclk));
     
             
endmodule
