# AES-128 Encryption with UART Interface (SystemVerilog, CMOD A7-35T)

This project implements an **AES-128 encryption engine** in SystemVerilog with a UART interface for communication. It is designed to be synthesizable and suitable for FPGA deployment, particularly the **CMOD A7-35T** development board.

## Project Overview

- **AES-128 Encryption Core**
  - Implements full 10-round AES encryption
  - Supports 128-bit key and data blocks
- **UART Serial Interface**
  - UART frame transmitter and receiver
  - Compatible with serial communication at standard baud rates
  - Enables encrypted communication over serial links
- **Testbenches**
  - Extensive verification for all AES and UART modules
  - Functional simulation and vector checking
  - Ready for waveform viewing in Vivado or ModelSim



## Modules Overview

## AES Core

| Module            | Description |
|--------------------|-------------|
| `aes_core.sv`      | Top-level control module for AES-128 |
| `aes_encryption.sv`| Orchestrates AES rounds and key use |
| `key_expansion.sv` | Expands 128-bit key into round keys |
| `sub_bytes.sv`     | Substitution layer using `aes_sbox` |
| `shift_rows.sv`    | Row permutation layer |
| `mix_columns.sv`   | Column mixing transformation |
| `aes_sbox.sv`      | Lookup table for AES S-Box |

## AES Testbenches

- `tb_aes_core.sv`
- `tb_aes_encryption.sv`
- `tb_key_expansion.sv`
- `tb_sub_bytes.sv`
- `tb_shift_rows.sv`
- `tb_mix_columns.sv`

---

### UART Interface

| Module              | Description |
|---------------------|-------------|
| `uart_frame_tx.sv`  | UART frame transmitter |
| `uart_frame_rx.sv`  | UART frame receiver |
| `UART_TX_CMOD_A735T.sv` | UART TX wrapper for FPGA |
| `UART_RX_CMOD_A735T.sv` | UART RX wrapper for FPGA |

### UART Testbenches

- `tb_uart_frame_tx.sv`
- `tb_uart_frame_rx.sv`

---

## Simulation & Testing

To run the simulation in Vivado:
- Use the Behavioral Simulation tool
- Add testbenches to your simulation set
- View waveforms for verification

Testbenches print internal activity and expected values for easier debugging.

---

## Directory Structure

```
AES-128-CMOD-A7-35T/
└── aes_fsm.srcs/
    ├── sources_1/
    │   └── new/                 ← **source files** (AES + UART)
    │       ├── aes_core.sv
    │       ├── uart_frame_rx.sv
    │       └── ...
    └── sim_1/
        └── new/                 ← **testbenches**
            ├── tb_aes_core.sv
            ├── tb_uart_frame_rx.sv
            └── ...
```

---

##  FPGA Integration Notes

- Target board: **CMOD A7-35T**
- UART interface can be used for sending AES inputs or outputs over serial
- Baud rate and clock dividers configurable in UART modules

---

## References

- [NIST FIPS-197: AES Specification](https://nvlpubs.nist.gov/nistpubs/FIPS/NIST.FIPS.197.pdf)
- [Advanced Encryption Standard (Wikipedia)](https://en.wikipedia.org/wiki/Advanced_Encryption_Standard)

---

## License

This project is licensed under the [MIT License](LICENSE).  
You are free to use, modify, and distribute this software with attribution.

See the full license text in the [LICENSE](LICENSE) file.

---

## Author

Created by **Martin Tran**  
Targeted for CMOD A7-35T FPGA board  
Includes testbenches and synthesizable modules for real-time encrypted UART communication
