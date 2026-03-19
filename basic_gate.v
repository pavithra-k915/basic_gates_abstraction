module basic_gates (
    input A, B,
    output AND_out,
    output OR_out,
    output NOT_out,
    output NAND_out,
    output NOR_out,
    output XOR_out,
    output XNOR_out
);

assign AND_out  = A & B;
assign OR_out   = A | B;
assign NOT_out  = ~A;
assign NAND_out = ~(A & B);
assign NOR_out  = ~(A | B);
assign XOR_out  = A ^ B;
assign XNOR_out = ~(A ^ B);  // XNOR added

endmodule