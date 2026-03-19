module boolean_tb;
reg A,B,C,D;
wire Z;

boolean uut (.A(A),.B(B),.C(C),.D(D),.Z(Z));
initial begin
    $dumpfile("boolean.vcd");
    $dumpvars(0,boolean_tb);

    A=0; B=0; C=0; D=0; #10;
    A=0; B=1; C=1; D=0; #10;
    A=1; B=1; C=1; D=1; #10;
    A=1; B=0; C=1; D=1; #10;
    A=0; B=1; C=0; D=1; #10;

    $finish;
end
    
endmodule