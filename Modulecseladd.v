module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire cout1;
    wire [15:0] temp_sum1,temp_sum2;
 add16 one(.a(a[15:0]),.b(b[15:0]),.cin(1'b0),.sum(sum[15:0]),.cout(cout1));
    add16 two(.a(a[31:16]),.b(b[31:16]),.cin(1'b0),.sum(temp_sum1));
    add16 three(.a(a[31:16]),.b(b[31:16]),.cin(1'b1),.sum(temp_sum2));
    assign sum[31:16] = cout1?temp_sum2:temp_sum1;
endmodule
