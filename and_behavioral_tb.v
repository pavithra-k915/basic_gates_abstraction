`timescale 1ns/1ps

module and_behavioral_tb;

reg A, B;
wire Z;

and_behavioral uut (.A(A), .B(B), .Z(Z));

initial begin
    $dumpfile("and_behavioral.vcd");
    $dumpvars(0, and_behavioral_tb);

    A=0; B=0;
    #10 A=0; B=1;
    #10 A=1; B=0;
    #10 A=1; B=1;
    #10 $finish;
end

endmodule