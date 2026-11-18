\# AEGIS Project Journal



\## 2026-11-16



\### Milestone



Floor 1 Architecture v1.0 Defined



\### Decisions



\- Adopted Seeed Studio XIAO RP2040 as Floor 1 controller.

\- Adopted dual TB6612FNG motor drivers.

\- Adopted PCF8574 for motor direction control.

\- Adopted four independent motor architecture.

\- Reserved support for future Mecanum wheel conversion.

\- Adopted MPU6050 for tilt detection and inertial measurements.

\- Adopted HC-SR04 for obstacle avoidance.

\- Adopted KY-033 sensors for cliff detection.

\- Defined I²C expansion bus for Floor 2 integration.

\- Created Floor 1 Hardware Specification.

\- Created Floor 1 Validation Test Plan.

\- Created I²C Bus Specification.



\### Current Status



Floor 1 architecture frozen.



Hardware assembly pending.



\### Next Actions



\- Assemble RP2040 test bench

\- Validate PCF8574 communication

\- Validate TB6612 operation

\- Validate sensor operation

\- Execute Floor 1 Test Plan



\### Notes



Architecture remains compatible with future:



\- ESP32-S3

\- LiDAR T-mini

\- ESP32-CAM

\- Pan/Tilt camera system

\- Mecanum wheels

\- Wheel encoders



\## Próxima Fase



\### Bancada Piso 1



Objetivo:

Validar hardware real.



Ordem de testes:



1\. RP2040

2\. I²C Scanner

3\. MPU6050

4\. PCF8574

5\. TB6612 Esquerdo

6\. TB6612 Direito

7\. HC-SR04

8\. KY-033

9\. Movimento dos 4 motores

10\. Safety Logic





