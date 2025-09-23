`timescale 10ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2025 11:26:17 AM
// Design Name: 
// Module Name: TBFA
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


module TBRCA();
reg [15:0] a,b;
reg c0;
wire coutf;
wire [15:0] sum;
wire [16:0] fSum;

RCA trial1(a,b,c0,coutf,sum,fSum);

initial begin
c0=0;
$dumpfile("wave.vcd");
$dumpvars(0,TBRCA);

$monitor("Time=%0t | a=%h b=%h | sum=%h cout=%b | fSum=%h",
                 $time, a, b, sum, coutf, fSum);

a = 16'h0000; b = 16'h0000; #10;
a = 16'h0001; b = 16'h0001; #10;
a = 16'hFFFF; b = 16'h0001; #10;
a = 16'h1234; b = 16'h4321; #10;
a = 16'hAAAA; b = 16'h5555; #10;
a = 16'h7FFF; b = 16'h0001; #10;
$finish;
end
endmodule
