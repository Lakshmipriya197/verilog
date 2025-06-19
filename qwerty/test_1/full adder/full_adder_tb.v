module full_adder_tb();
reg tb_a,tb_b,tb_c;
wire tb_sum,tb_carry;
//instance
full_adder rtl(
.a(tb_a),
.b(tb_b),
.c(tb_c),
.sum(tb_sum),
.carry(tb_carry)
);

initial begin
tb_a=0;tb_b=0;tb_c=0;#10;
tb_a=0;tb_b=0;tb_c=1;#10;
tb_a=0;tb_b=1;tb_c=0;#10;
tb_a=0;tb_b=1;tb_c=1;#10;
tb_a=1;tb_b=0;tb_c=0;#10;
tb_a=1;tb_b=0;tb_c=1;#10;
tb_a=1;tb_b=1;tb_c=0;#10;
tb_a=1;tb_b=1;tb_c=1;#10;
end
initial $monitor("tb_a=%b tb_b=%b tb_c=%b tb_sum=%b tb_carry=%b", tb_a,tb_b,tb_c,tb_sum,tb_carry);
endmodule
