# TMC2130-Stall-guardPCB

![pump_pcb](./pump_board.jpeg)

A breakout PCB equipped with an atmega328p(Arduino) and TMC2130 driver board.

This PCB was originally designed to control the flow of a syringe pump. The TMC2130 provides an SPI interface to detect spikes in current (StallGuard feature) which can be used to replace a limit switch. The stallguard value needs to be calibrated according to the motor you use. 
