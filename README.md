# 16bit_RCA
This a Verilog code, for a Ripple Carry Adder, along with its Testbench and Waveform representation.

# Ripple Carry Adder (RCA) in Verilog

## Overview
This project implements a **Ripple Carry Adder (RCA)** in Verilog.  
An RCA is a basic digital circuit that performs binary addition by connecting multiple **Full Adders (FAs)** in series. The carry output from each stage "ripples" into the next stage, hence the name.

This is a fundamental building block in digital design and is widely used to understand the concept of **combinational arithmetic circuits**.


## Features
- Parameterizable **N-bit RCA** (default: 4-bit)
- Built from simple **Full Adders**
- Clean, modular Verilog code
- Includes a **testbench** for simulation

---

## Theory

A Full Adder adds three inputs:
- `A` (bit from first number)
- `B` (bit from second number)
- `Cin` (carry input)

It produces two outputs:
- `Sum`
- `Cout` (carry output)

An **N-bit RCA** connects `N` Full Adders in series.
