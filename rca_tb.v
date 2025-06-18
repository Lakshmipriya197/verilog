module rca_tb();
reg [3:0]tb_a,tb_b;
reg tb_cin;
wire [3:0]tb_s;
wire tb_cout;
rca rtl(
.a(tb_a),
.b(tb_b),
.cin(tb_cin),
.s(tb_s),
.cout(tb_cout)
);
initial begin
tb_a=4'b1010;tb_b=4'b1000;tb_cin=1'b1;#10;
end
initial $monitor("tb_a=%b tb_b=%b tb_cin=%b tb_s=%b,tb_cout=%b", tb_a,tb_b,tb_cin,tb_s,tb_cout);
endmodule
