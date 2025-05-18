module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out = (!c&!d&!b)|(!c&!d&!a)|(a&!b&d)|(c&d&b)|(!a&!b&!c)|(!a&c&!d);
endmodule
