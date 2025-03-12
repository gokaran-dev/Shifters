`timescale 1ns / 1ps

module weddinglight_2(
        input clk,rst,
        output [15:0]q
    );
    
       reg CE=1'b1;
       reg [2:0]load=3'b000;
       wire nclk;
       clock_divider UUT(.clk(clk),.nclk(nclk));
     
              
              FDRE #(.INIT(1'b0)) ff0(.C(nclk),.R(rst),.Q(q[0]),.D(load < 3'b100 ? 1'b1: q[15]),.CE(CE));     
              FDRE #(.INIT(1'b0)) ff1(.C(nclk),.R(rst),.Q(q[1]),.D(q[0]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff2(.C(nclk),.R(rst),.Q(q[2]),.D(q[1]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff3(.C(nclk),.R(rst),.Q(q[3]),.D(q[2]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff4(.C(nclk),.R(rst),.Q(q[4]),.D(q[3]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff5(.C(nclk),.R(rst),.Q(q[5]),.D(q[4]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff6(.C(nclk),.R(rst),.Q(q[6]),.D(q[5]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff7(.C(nclk),.R(rst),.Q(q[7]),.D(q[6]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff8(.C(nclk),.R(rst),.Q(q[8]),.D(q[7]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff9(.C(nclk),.R(rst),.Q(q[9]),.D(q[8]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff10(.C(nclk),.R(rst),.Q(q[10]),.D(q[9]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff11(.C(nclk),.R(rst),.Q(q[11]),.D(q[10]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff12(.C(nclk),.R(rst),.Q(q[12]),.D(q[11]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff13(.C(nclk),.R(rst),.Q(q[13]),.D(q[12]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff14(.C(nclk),.R(rst),.Q(q[14]),.D(q[13]),.CE(CE));
              FDRE #(.INIT(1'b0)) ff15(.C(nclk),.R(rst),.Q(q[15]),.D(q[14]),.CE(CE));

            
           always @(posedge nclk)
                begin
                    if(rst==1)
                    begin
                        load <= 3'b000;
                    end
                    
                    else if(load<4)
                    begin
                        load <= load+3'b001;
                    end
                   
                end 
endmodule
