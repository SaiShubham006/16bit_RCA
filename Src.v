`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/22/2025 08:25:07 PM
// Design Name: 
// Module Name: Ripple Carry Adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A 16-bit RCA, with 16 instantiation of 1-bit full adder module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA(
input a,b,cin,
output s,cout
);
    
assign s= a^b^cin;
assign cout= (a&b) |(b&cin)|(cin&a);

endmodule

module RCA(
input [15:0] a,b,
input c0,
output coutf,
output [15:0] sum,
output [16:0] fSum
);
wire [15:0] carr;

FA ini(a[0],b[0],c0,sum[0],carr[0]);
genvar p;
generate for(p=0;p<15;p=p+1)
  begin: FAG
    FA gate(a[p+1],b[p+1],carr[p],sum[p+1],carr[p+1]);   
  end
endgenerate  
assign coutf=carr[15]; 
assign fSum={coutf,sum};
endmodule