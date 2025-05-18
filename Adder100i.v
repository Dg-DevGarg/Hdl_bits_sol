module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
genvar i;
    adder a1(.a(a[0]),.b(b[0]),.cin(cin),.cout(cout[0]),.sum(sum[0]));
    generate
        for(i =1;i<100;i=i+1) begin:loop
            adder ai(.a(a[i]),.b(b[i]),.cin(cout[i-1]),.cout(cout[i]),.sum(sum[i]));
        end
    endgenerate
endmodule
module adder(input a,b,cin,output cout,sum);
    assign {cout,sum} = a+b+cin;
endmodule
