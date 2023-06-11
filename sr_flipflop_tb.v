`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2023 15:29:40
// Design Name: 
// Module Name: sr_flipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sr_flipflop_tb();
reg s;
reg r;
reg clk;
wire q;
sr_flipflop ab(.s(s) ,.r(r) ,.clk(clk) ,.q(q));
initial begin
#100 clk=0; s=0; r=0;
#100 clk=1; s=0; r=0;
#100 clk=0; s=0; r=1;
#100 clk=1; s=0; r=1;
#100 clk=0; s=1; r=0;
#100 clk=1; s=1; r=0;
#100 clk=0; s=1; r=1;
#100 clk=1; s=1; r=1;
end
endmodule
