module full_subtractor_tb();
reg tb_a,tb_b,tb_c;
wire tb_diff,tb_borrow;
full_subtractor rtl(
.a(tb_a),
.b(tb_b),
.c(tb_c),
.diff(tb_diff),
.borrow(tb_borrow)
);
initial begin
tb_a=0;tb_b=0;tb_c=0;#15;
tb_a=0;tb_b=0;tb_c=1;#15;
tb_a=0;tb_b=1;tb_c=0;#15;
tb_a=0;tb_b=1;tb_c=1;#15;
tb_a=1;tb_b=0;tb_c=0;#15;
tb_a=1;tb_b=0;tb_c=1;#15;
tb_a=1;tb_b=1;tb_c=0;#15;
tb_a=1;tb_b=1;tb_c=1;#15;
end
initial $monitor("tb_a=%b tb_b=%b tb_c=%b tb_diff tb_borrow",tb_a,tb_b,tb_diff,tb_borrow);
endmodule
