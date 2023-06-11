`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2023 15:17:50
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(
    input s,
    input r,
    input clk, output q
    );
    reg q;
    always@(posedge clk)
    begin
    case({s,r})
    2'b00:q<=q;
    2'b01:q<=0;
    2'b10:q<=1;
    2'b11:q<=1'bx;
  
    endcase
    end
endmodule
