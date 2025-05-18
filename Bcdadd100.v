module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0] inter_cout;
    genvar i;
    bcd_fadd a1(.a(a[3:0]),.b(b[3:0]),.cin(cin),.cout(inter_cout[0]),.sum(sum[3:0]));
    generate
        for(i=1;i<100;i=i+1) begin:loop
            bcd_fadd ai(.a(a[(4*i+3):4*i]),.b(b[(4*i+3):4*i]),.cin(inter_cout[i-1]),.cout(inter_cout[i]),.sum(sum[(4*i+3):4*i])); 
        end
    endgenerate
    assign cout = inter_cout[99];
endmodule
