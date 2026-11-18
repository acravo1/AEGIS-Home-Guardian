\# AEGIS Floor 1



\## Overview



Floor 1 is responsible for locomotion, real-time navigation and safety systems.



It operates independently from the upper layers and remains capable of stopping the robot even if higher-level systems fail.



\---



\# Hardware



\- Seeed Studio XIAO RP2040

\- PCF8574 I²C I/O Expander

\- 2 × TB6612FNG

\- 4 × TT Gear Motors

\- MPU6050

\- HC-SR04

\- 2 × KY-033 Cliff Sensors



\---



\# Documentation



\## Specifications



\- AEGIS-Floor1-Hardware-Specification-v1.0.md



\## Validation



\- AEGIS-Floor1-Test-Plan.md



\---



\# Architecture



```text

HC-SR04



KY033     KY033



&#x20;MPU6050



&#x20;PCF8574



RP2040



TB6612   TB6612



FL RL    FR RR

```



\---



\# Status



Current status:



\- Architecture defined

\- Wiring defined

\- Firmware prototype available

\- Hardware integration pending



\---



\# Future Upgrades



\- Encoders

\- Mecanum wheels

\- Dead reckoning

\- SLAM support

\- LiDAR integration

