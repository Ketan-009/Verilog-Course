# Task 1

#### This task demonstrates the complete flow of simulating a Verilog-based combinational circuit using Cadence Xcelium (xrun) and viewing its waveform and schematic in SimVision.

---

# Objective

The goal is to: 

- Write a Verilog module and its testbench.
- Simulate the design using Cadence tools.
- View the waveform and schematic of the circuit.

---

# Step 1: Setting up the Environment

## 1.1 Create a Working Directory

Open the terminal and create a new folder for your Verilog course work:

```
mkdir -p vc #Verilog Course
cd vc
```

## Snapshot

<img width="1165" height="552" alt="image" src="https://github.com/user-attachments/assets/5b8f8e7b-4e2c-434c-b22f-fd5ce3a3b464" />

# Step 2: Create the Verilog Module

## 2.1 Create a Source File

Create a Source file

**Note:** You can use text editor of your choice if gedit is not available.

```
gedit ckt.v
```

Paste the following Verilog code inside the editor:
```
`timescale 1ns/1ps

module ckt(a,b,c,d,e);

output d,e;
input a,b,c;

wire y;

and G1 (y,a,b);
not G2 (e,c);
or G3 (d,y,e);

endmodule
```

This simple combinational circuit implements:

- An AND gate for a and b
- A NOT gate for c
- An OR gate combining results to produce outputs d and e

## Snapshot

<img width="1171" height="648" alt="image" src="https://github.com/user-attachments/assets/797aa111-7f62-4348-a073-f4e20818a07f" />

Save and exit the text editor.

---

# Step 3: Create the Testbench

## 3.1 Create Testbench File

```
gedit ckt_tb.v
```

Paste the following code

```
`timescale 1ns/1ps

module t_s_ckt;

wire D,E;
reg A,B,C;

ckt M1(A,B,C,D,E);

initial
begin
A=1'b0; B=1'b0; C=1'b0;
#100 A=1'b1; B=1'b1; C=1'b1;
end

initial
#200 $finish;

endmodule
```

This testbench:

- Initializes inputs to 0
- Changes them to 1 after 100 ns
- Stops the simulation at 200 ns

## Snapshot

<img width="1226" height="650" alt="image" src="https://github.com/user-attachments/assets/292f75c2-6d7d-404b-87eb-bc2b51551321" />

Click on save and exit the text editor.

---

# Step 4: Simulation in Cadence Xcelium

## 4.1 Load the Cadence Environment

In the same directory, execute:
```
csh
source /usr/vipstc/cadence
```

## 4.2 Run Simulation and Launch SimVision
```
## xrun source_file testbench_file -access +rwc -gui
xrun ckt.v ckt_tb.v -access +rwc -gui
```

This command:

- Compiles the Verilog files
- Runs the simulation
- Opens the SimVision GUI for interactive waveform and schematic analysis

## Snapshot

<img width="1919" height="1020" alt="Screenshot 2025-10-21 173829" src="https://github.com/user-attachments/assets/e946eafb-f61f-406d-be97-17f58e74e3b6" />

---

# Step 5: Viewing the Waveform 

- In the SimVision GUI, left-click on the module name.
- Click the Waveform icon (upper-right corner of the window).

## Snapshot

<img width="1919" height="1020" alt="Screenshot 2025-07-09 051045(1)" src="https://github.com/user-attachments/assets/244b6218-b97e-4f60-9a31-241882a41072" />

- In the waveform viewer, click Run to visualize the signals.

## Snapshot

<img width="1919" height="989" alt="Screenshot 2025-10-21 173950" src="https://github.com/user-attachments/assets/aadf3177-1adb-4e24-97cd-1fe96c5a304e" />

---

# Step 6: Viewing the Schematic

- In the SimVision window, left-click on the module name.
- Click the Schematic icon near the top-right.

## Snapshot

<img width="1919" height="1020" alt="Screenshot 2025-10-21 173857(2)" src="https://github.com/user-attachments/assets/f05e4e7e-1bab-4bd9-bc82-02ad07b644c3" />

- The schematic viewer opens, showing your logic connections.

## Snapshot

<img width="1918" height="1016" alt="Screenshot 2025-10-21 174010" src="https://github.com/user-attachments/assets/1b02fa92-c4c6-49b6-9aa5-4969385191d2" />

# Detailed Gate View

Double-click inside the schematic to zoom into the gate-level view.

## Snapshot

<img width="1910" height="1016" alt="Screenshot 2025-10-21 174019" src="https://github.com/user-attachments/assets/e2d1c2df-a08b-4290-963f-4d67be26658a" />

---

# Learning Outcomes

By completing this task, you will:

- Understand how to write, simulate, and verify Verilog designs using Cadence tools.
- Gain hands-on experience in using SimVision for waveform and schematic analysis.
- Learn how to interpret the gate-level representation of a Verilog circuit.

