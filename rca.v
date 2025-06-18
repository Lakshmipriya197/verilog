module rca(a,b,cin,s,cout);
input[3:0]a,b;
input cin;
output[3:0] s;
output cout;
wire c1,c2,c3;
adder n1(a0,b0,cin,s0,c1);
adder n2(a1,b1,c1,s1,c2);
adder n3(a2,b2,c2,s2,c3);
adder n4(a3,b3,c3,s3,cout);

endmodule
