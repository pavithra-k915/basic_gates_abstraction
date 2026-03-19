# 🔌 Digital Logic Design & CMOS Implementation (Verilog)

## 📌 Overview

This repository showcases my work in **Digital Electronics and VLSI Design** using Verilog HDL.
It includes basic logic gates, Boolean expression implementations, CMOS concepts, and testbenches with waveform analysis.

---

## 🚀 Features

* ✔ Basic Logic Gates (AND, OR, NOT, NAND, NOR, XOR, XNOR)
* ✔ Boolean Expression Design & Simplification
* ✔ 4-Variable Logic Implementation
* ✔ CMOS Inverter Design
* ✔ Testbenches with VCD waveform support

---

## 🧠 Basic Logic Gates (Verilog)

```verilog
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
assign XNOR_out = ~(A ^ B);

endmodule
```

---

## 🔬 CMOS Design

### CMOS Inverter

```verilog
module cmos_inverter (
    input A,
    output Y
);

assign Y = ~A;

endmodule
```

### 📌 Concept

* CMOS = Complementary MOS (PMOS + NMOS)
* Low power and high efficiency
* Used in real-world chip design

---

## 🧮 Boolean Expression Implementation

### Example 1

**Expression:**

```
ABC + B'C
```

**Simplified:**

```
C(A + B')
```

**Verilog:**

```verilog
assign Y = C & (A | ~B);
```

---

### Example 2 (4-Variable)

**Expression:**

```
ABCD + A'BC + B'D
```

**Simplified:**

```
BC(A' + D) + B'D
```

**Verilog:**

```verilog
assign Y = (B & C & (~A | D)) | (~B & D);
```

---

## 🧪 Testbench Example

```verilog
initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;

    $finish;
end
```

---

## ⚙️ Tools Used

* Verilog HDL
* GTKWave (Waveform Viewer)
* VS Code

---

## ▶️ How to Run

```bash
iverilog basic_gates.v tb_basic_gates.v
vvp a.out
gtkwave wave.vcd
```

---

## 💡 Future Improvements

* Half Adder & Full Adder
* Multiplexer & Demultiplexer
* Sequential Circuits (Flip-Flops)
* CMOS NAND/NOR Design

---

## 👨‍💻 Author

Pavithra

---

## ⭐ Note

This repository is part of my journey toward mastering **Digital Design and VLSI Systems**.

