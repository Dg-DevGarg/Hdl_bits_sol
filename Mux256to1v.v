module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );
    wire [9:0] sel1;
    assign sel1 = sel<<2;
    assign out[3] = in [sel1+3];
    assign out[2] = in [sel1+2];
    assign out[1] = in [sel1+1];
    assign out[0] = in[sel1];
endmodule
