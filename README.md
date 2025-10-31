# VHDL Moore FSM Sequence Generator

This project implements a **Moore Finite State Machine (FSM)** in VHDL.  
The FSM generates a predefined sequence of 4-bit values on each clock cycle.

---

## Entity: FSM

### Ports

| Port | Direction | Description |
|------|-----------|-------------|
| z    | output    | 4-bit output representing the current state value |
| clk  | input     | Clock signal |
| rst  | input     | Asynchronous reset (resets FSM to initial state) |

---

## Functionality

- The FSM is a **Moore machine**, meaning outputs depend only on the current state.  
- On reset, the FSM goes to the initial state (`s0`).  
- On each rising edge of `clk`, the FSM transitions through the states in the following sequence:

