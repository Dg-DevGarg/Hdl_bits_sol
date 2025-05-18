module top_module (input x, input y, output z);
    wire z1,z2,z3,z4;
    a a1(x,y,z1);
    b b1(x,y,z2);
    a a2(x,y,z3);
    b b2(x,y,z4);
    assign z = (z1|z2)^(z3&z4);
endmodule
module a(input x,y,output z);
    assign z = (x^y)&x;
endmodule
module b(input x,y,output z);
    assign z = ~(x^y);
endmodule
