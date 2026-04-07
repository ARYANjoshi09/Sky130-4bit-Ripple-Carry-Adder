```markdown
# 4-Bit Ripple Carry Adder: RTL-to-GDSII Implementation

A complete ASIC design flow for a 4-bit Ripple Carry Adder (RCA) implemented using the **SkyWater 130nm Open-Source PDK** and the **OpenLane** toolchain.

---

## 📌 Project Overview

This project demonstrates the transition from a structural Verilog description to a manufacturable GDSII layout, implementing a standard 4-bit RCA by cascading four Full Adder cells.

### Key Features

| Feature | Details |
| :--- | :--- |
| **Architecture** | Structural modeling (Half Adder → Full Adder → 4-bit RCA) |
| **Process Node** | SkyWater 130nm (`sky130_fd_sc_hd`) |
| **Flow** | Automated RTL-to-GDSII using OpenLane |
| **Verification** | Exhaustive self-checking testbench — 512 input combinations |

---

## 🚀 Design Metrics (Post-Layout)

| Metric | Value |
| :--- | :--- |
| **Max Frequency** | 320 MHz |
| **Setup Slack** | 4.63 ns ✅ |
| **Total Power** | 18.0 µW |
| **Dynamic Power** | 99.9% |
| **Leakage Power** | ~100 pW |
| **Physical Status** | DRC/LVS Clean ✅ |

---

## 🛠️ Toolchain

| Stage | Tool |
| :--- | :--- |
| **Synthesis** | Yosys |
| **Place & Route** | OpenROAD |
| **Static Timing Analysis** | OpenSTA |
| **DRC / LVS** | Magic & Netgen |
| **Layout Visualization** | KLayout |
| **Simulation** | Icarus Verilog / GTKWave |

---

## 📁 Repository Structure

```text
.
├── rtl/
│   ├── half_adder.v
│   ├── full_adder.v
│   └── rca_4bit.v            # Top-level module
├── tb/
│   └── tb_rca_4bit.v         # Self-checking testbench
├── docs/
│   └── architecture.pdf      # Logic diagrams and truth tables
├── results/
│   ├── gds/                  # Final GDSII layout file
│   └── reports/              # Timing, power, and area reports
└── config.json               # OpenLane configuration file
```

---

## 📈 Analysis & Realizations

**Power**
At the 130nm node, leakage power is negligible (~0% of total), meaning the design is highly energy-efficient when idle.

**Timing**
The "ripple" effect is clearly visible in the timing reports — the critical path is dictated by carry propagation from LSB to MSB.

**Physical Design**
The final GDSII shows that while the gate length is 130nm, the actual area is dominated by routing and the power delivery network (PDN).

---

## 🏁 Future Work

- [ ] Implement a Carry Lookahead Adder (CLA) to compare PPA (Power, Performance, Area)
- [ ] Add registered inputs/outputs (sequential wrapper) to analyse setup/hold timing

---

## ⚙️ Setup

### 1. Create the directory structure

```bash
mkdir -p rtl tb docs results/reports results/gds
```

### 2. Place your files

| File type | Destination |
| :--- | :--- |
| RTL source files (`.v`) | `rtl/` |
| Testbench | `tb/` |
| PDF documentation | `docs/` |
| Synthesis/STA reports | `results/reports/` |
| GDSII output | `results/gds/` |

---

## 🤝 Acknowledgements

Special thanks to the [Efabless OpenLane](https://github.com/The-OpenROAD-Project/OpenLane) team and Google for providing the open-source tools and PDK that make this project possible.
```
