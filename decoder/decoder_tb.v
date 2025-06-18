module decoder_tb();
reg tb_y0,tb_y1;
wire tb_i0,tb_i1,tb_i2,tb_i3;
decoder rtl(
.y0(tb_y0),
.y1(tb_y1),
.i0(tb_i0),
.i1(tb_i1),
.i2(tb_i2),
.i3(tb_i3)
);
initial begin
tb_y0=0;tb_y1=0;#10;
tb_y0=1;tb_y1=0;#10;
tb_y0=0;tb_y1=1;#10;
tb_y0=1;tb_y1=1;#10;
end
initial $monitor ("tb_y0=%b tb_y1=%b tb_i0=%b tb_i1=%b tb_i2=%b tb_i3=%b",tb_y0,tb_y1,tb_i0,tb_i1,tb_i2,tb_i3);

endmodule
