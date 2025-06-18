module adder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire w1,w2,w3;
xor x1(w1,a,b);
xor x2(s,w1,cin);
and a1(w2,a,b);
and a2(w3,w1,cin);
or o1(cout,w2,w3);
endmodule
