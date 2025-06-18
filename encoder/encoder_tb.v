module encoder_tb();
reg tb_i0,tb_i1,tb_i2,tb_i3;
wire tb_y0,tb_y1;
encoder rtl(
.i0(tb_i0),
.i1(tb_i1),
.i2(tb_i2),
.i3(tb_i3),
.y0(tb_y0),
.y1(tb_y1)
);
initial begin
tb_i0=1;tb_i1=0;tb_i2=0;tb_i3=0;#10;
tb_i0=0;tb_i1=1;tb_i2=0;tb_i3=0;#10;
tb_i0=0;tb_i1=0;tb_i2=1;tb_i3=0;#10;
tb_i0=0;tb_i1=0;tb_i2=0;tb_i3=1;#10;
end
initial $monitor("tb_i0=%b tb_i1=%b tb_i2=%b tb_i3=%b tb_y0=%b tb_y1=%b",tb_i0,tb_i1,tb_i2,tb_i3,tb_y0,tb_y1);

endmodule
