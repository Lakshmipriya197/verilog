module encoder(i0,i1,i2,i3,y0,y1);
input i0,i1,i2,i3;
output y0,y1;
or o1(y1,i2,i3);
or o2(y0,i1,i3);
endmodule
