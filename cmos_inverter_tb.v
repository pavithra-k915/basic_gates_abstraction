module cmos_inverter_tb;
 
reg A;
wire Z;

cmos_inverter uut (.A(A),.Z(Z));
initial begin
    $dumpfile("cmos_inverter.vcd");
    $dumpvars(0,cmos_inverter_tb);
     
     A=0;
     #1 A=1;

     #20 $finish;
end
endmodule