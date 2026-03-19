module and_str_tb;
reg A,T;
wire Z;

and_str uut(.A(A),.T(T),.Z(Z));
 
 initial begin
$dumpfile("and_str.vcd");
$dumpvars(0,and_str_tb);


    A=0;T=0;
    #1 A=0;T=1;
    #1 A=1;T=0;
    #1 A=1;T=1;

    #10 $finish;
end
    
endmodule