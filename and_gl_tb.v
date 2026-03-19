module and_gl_tb;
reg T,P;
wire A;

and_gl uut(.T(T),.P(P),.A(A));
initial begin
    $dumpfile("and_gl.vcd");
    $dumpvars(0,and_gl_tb);

    T=0;P=0;
    #1 T=0;P=1;
    #1 T=1;P=0;
    #1 T=1;P=1; 

    #10 $finish;
end
endmodule