module tb_basic_gates;

reg A, B;
wire AND_out, OR_out, NOT_out, NAND_out, NOR_out, XOR_out, XNOR_out;

basic_gates uut (
    .A(A),
    .B(B),
    .AND_out(AND_out),
    .OR_out(OR_out),
    .NOT_out(NOT_out),
    .NAND_out(NAND_out),
    .NOR_out(NOR_out),
    .XOR_out(XOR_out),
    .XNOR_out(XNOR_out)
);

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb_basic_gates);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end

endmodule