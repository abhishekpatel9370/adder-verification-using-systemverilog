# SystemVerilog 4‑bit Adder — OOP Testbench Verification

## Overview

This repository contains a small SystemVerilog project: a 4‑bit registered adder DUT and an object‑oriented (OOP) testbench that verifies the DUT using a `transaction` class, an `add_if` interface, a `monitor`, a `scoreboard`, and mailbox communication. The testbench demonstrates a lightweight, UVM‑style verification architecture without the full UVM framework.

The design and testbench are intentionally compact so you can learn how transactions, virtual interfaces, and mailboxes interact in SystemVerilog.

---

## Features

* 4‑bit adder DUT (`add`) with a 5‑bit registered `sum` output.
* SystemVerilog OOP‑based testbench:

  * `transaction` class with `randc` inputs.
  * `add_if` interface to connect DUT and TB.
  * `monitor` that samples DUT outputs and sends transactions through a `mailbox`.
  * `scoreboard` that checks if the DUT’s `sum` matches `a + b`.
* Waveform dump (`dump.vcd`) and console logs for debug.

---

## How to Run on EDA Playground

1. Go to [EDA Playground](https://www.edaplayground.com/).
2. Select **SystemVerilog** as the language.
3. Choose a simulator that supports classes and mailboxes (e.g., **Questa** or **VCS**).
4. Paste the DUT and testbench code into the editor.
5. Set the **Top Module Name** to `tb`.
6. Check **Enable VCD dump** to view waveforms.
7. Click **Run** to simulate.
8. View simulation logs in the console and open the VCD file in GTKWave.

```
https://www.edaplayground.com/x/brTB
```

---

## Example Output

```
-------------------------
[MON] SENT TO SCOREBOARD
a=3 , b=5 sum=8
[SOC] : DATA RCVD FROM MONITOR
a=3 , b=5 sum=8
[SOC] : Sum Result Matched
------------------
```

---

## Notes

* **Avoid transaction aliasing**: Always create a new `transaction` object before putting it into the mailbox.
* **Waveforms**: Use GTKWave on EDA Playground to see the signal changes.
* **Self‑checking**: The scoreboard uses `$display` and `$error` to indicate pass/fail.

---

