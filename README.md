# 4-Bit Ripple Carry Adder: RTL-to-GDSII Implementation
This repository contains the full ASIC design flow of a 4-bit Ripple Carry Adder (RCA) implemented using the **SkyWater 130nm Open-Source PDK** and the **OpenLane** toolchain.

## 📌 Project Overview
This project demonstrates the transition from a structural Verilog description to a manufacturable GDSII layout. It implements a standard 4-bit RCA by cascading four Full Adder cells. 

### Key Features:
- **Architecture:** Structural modeling (Half Adder -> Full Adder -> 4-bit RCA).
- **Process Node:** SkyWater 130nm (sky130_fd_sc_hd).
- **Flow:** Automated RTL-to-GDSII using OpenLane.
- **Verification:** Exhaustive self-checking testbench covering all 512 input combinations.

---

## 🚀 Design Metrics (Post-Layout)
After running the full physical design flow, the following metrics were achieved:

| Metric | Value |
| :--- | :--- |
| **Max Frequency** | 320 MHz |
| **Setup Slack** | 4.63 ns (Met) |
| **Total Power** | 18.0 µW |
| **Dynamic Power** | 99.9% |
| **Leakage Power** | ~100 pW |
| **Physical Status** | DRC/LVS Clean |

---

## 🛠️ Toolchain
- **Synthesis:** Yosys
- **Place & Route:** OpenROAD
- **Static Timing Analysis:** OpenSTA
- **DRC/LVS:** Magic & Netgen
- **Layout Visualization:** KLayout
- **Simulation:** Icarus Verilog / GTKWave

---

## 📁 Repository Structure
```text
├── rtl/
│   ├── half_adder.v
│   ├── full_adder.v
│   └── rca_4bit.v        # Top-level module
├── tb/
│   └── tb_rca_4bit.v     # Self-checking testbench
├── docs/
│   └── architecture.pdf  # Logic diagrams and truth tables
├── results/
│   ├── gds/              # Final GDSII layout file
│   └── reports/          # Timing, Power, and Area reports
└── config.json           # OpenLane configuration file
