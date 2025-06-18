module decoder(y0,y1,i0,i1,i2,i3);
input y0,y1;
output i0,i1,i2,i3;
and (i0,~yo,~y1);
and (i1,~yo,y1);
and (i2,yo,~y1);
and (i3,yo,y1);
endmodule
