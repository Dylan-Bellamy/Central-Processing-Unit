# Central-Procesing-Unit

## Introduction

The purpose of this lab is to design a simple central processing unit, more specifically known as a CPU, using VHDL to code the components and implement it into the FPGA board. The central processing unit consists of several components that work together. The main components consist of an ALU and a control unit, with secondary components including registers, seven-segment displays, and the control unit's contents. The control unit contains an FSM and a 3-8 decoder, allowing the control unit to operate as intended. The ALU processes data operations, while the control unit controls all of the units and operations of the CPU. The ALU processes 8-bit values received from two registers and operates on the provided values. The operation used by the ALU is controlled by the 3-8 decoder’s output. Once the operation is completed, the ALU outputs it to the seven-segment displays, which display the result on the FPGA board.

## Components

### Registers

Registers, also known as latches, were used as storage units which would temporarily store input values and send them to the ALU. In this case, the latches used were two D-latches, which contain two to three inputs and one output. D-latches always have a Clock and D input, and in this case, a reset input as well. When the Clock is active, the Q (Output) is equal to the value of D, and when the Clock is inactive, the Q (Output) remains the same. However,  when the Reset is active, all binary bits of Q are reset to zero.

Waveform:

![image](https://github.com/user-attachments/assets/4d0e830d-fd3c-4773-8093-b16f71ee2b91)

<pre> Block Diagram:         Truth Table - D Latch: </pre>
![image](https://github.com/user-attachments/assets/9425559c-ccce-4b28-a56b-4608cd0ba762)

### 3:8 Decoder

The 3:8 Decoder, in simple terms, converts 3-bit binary inputs into an 8-bit binary output with one bit set to high (1) and the rest set to low (0). For this lab in particular, a 3:8 Decoder was used to control the operation of the ALU. However, a 4:16 would be needed if there were 9 functions instead of 8. In this lab, the 3:8 Decoder received a 3-bit binary value from the FSM, given which state it was, and the decoder would convert it into an 8-bit binary value that the ALU could read and utilize.

Waveform:

![image](https://github.com/user-attachments/assets/a1bfe75c-2908-4023-a4ff-78be37628c27)

<pre> Block Diagram:         Truth Table - 3:8 Decoder: </pre>
![image](https://github.com/user-attachments/assets/80da5f9b-eecc-4b6d-8d8b-eff320e3174b)

### Finite State Machine (FSM)

The finite state machine is a system that cycles through a finite number of states, which is used to cycle through the functions in the ALU.  In this case, there were 8 states used to cycle through 8 functions in the ALU. There are two different types of finite state machines, being the Mealy and Moore FSM. Mealy’s output is dependent on the state and the data in values, while Moore’s output is dependent only on the just the state. In this lab, the Moore finite state machine was used.

Waveform:

![image](https://github.com/user-attachments/assets/7fa613b0-df0a-48dc-a03a-9d23225aec6d)


<pre> Block Diagram:         Truth Table - Moore FSM: </pre>
![image](https://github.com/user-attachments/assets/a75db98c-d0bc-4f8f-9730-5affe4ab777f)




