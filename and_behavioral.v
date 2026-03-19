module and_behavioral(
    input A, B,
    output reg Z
);

always @(*) begin
    Z = A & B;
end

endmodule