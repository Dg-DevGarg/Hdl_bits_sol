module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire [31:0] b_effective;
    wire cout1;
    assign b_effective = b^({32{sub}});
    add16 alpha(a[15:0],b_effective[15:0],sub,sum[15:0],cout1);
    add16 beta(a[31:16],b_effective[31:16],cout1,sum[31:16]);
endmodule
