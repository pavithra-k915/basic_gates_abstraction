module cmos_inverter (
    input A,
    output Z
);
    supply1 Vdd;
    supply0 GND;

    pmos(Z, Vdd ,A);
    nmos(Z, GND ,A);

endmodule