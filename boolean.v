module boolean (
    input A,B,C,D,
    output Z
);
    assign Z=(B & C & ( D | ~A ) ) | (~B & D );
endmodule