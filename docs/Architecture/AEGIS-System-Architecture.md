\# AEGIS System Architecture



\## Overview



AEGIS (Autonomous Electronic Guardian Integrated System) is a modular autonomous home guardian robot designed around three independent functional layers.



The architecture separates locomotion, computation and perception, reducing complexity and allowing each subsystem to be developed and tested independently.



\---



\# Architecture Layers



```text

┌─────────────────────────────┐

│          Floor 3            │

│      Perception Layer       │

├─────────────────────────────┤

│          Floor 2            │

│  Computing \& Communications │

├─────────────────────────────┤

│          Floor 1            │

│ Locomotion \& Safety Layer   │

└─────────────────────────────┘

```



\---



\# Floor 1 - Locomotion \& Safety



\## Controller



\- Seeed Studio XIAO RP2040



\## Functions



\- Motor control

\- Navigation control

\- Obstacle avoidance

\- Cliff detection

\- Safety monitoring

\- Motion execution



\## Hardware



\- XIAO RP2040

\- PCF8574 I²C I/O Expander

\- 2 × TB6612FNG

\- 4 × TT DC Motors

\- HC-SR04

\- MPU6050

\- 2 × KY-033 Cliff Sensors



\## Design Goals



\- Real-time operation

\- Autonomous safety decisions

\- Operates independently from higher layers

\- Mecanum-ready architecture

\- Future encoder support



\---



\# Floor 2 - Computing \& Communications



\## Controller



\- ESP32-S3



\## Functions



\- Home Assistant integration

\- MQTT communications

\- Voice interaction

\- Audio processing

\- Mission control

\- Robot behaviour management



\## Planned Hardware



\- ESP32-S3

\- INMP441 microphone

\- PAM8302 amplifier

\- 3W speakers

\- Wireless communications



\---



\# Floor 3 - Perception



\## Functions



\- Environmental observation

\- Mapping support

\- Visual validation

\- Future object recognition



\## Planned Hardware



\- LiDAR T-mini

\- ESP32-CAM

\- Pan/Tilt camera mount



\## Design Concept



The LiDAR remains fixed and provides navigation data.



The ESP32-CAM is mounted on a two-axis pan/tilt mechanism allowing active observation of areas of interest identified by the LiDAR or the higher-level control software.



\---



\# Inter-Processor Communications



\## I²C Bus



Shared between:



\- RP2040

\- ESP32-S3

\- Future modules



Signals:



\- SDA

\- SCL

\- GND

\- 5V



Optional:



\- INT



\---



\# Safety Philosophy



Safety has priority over mission execution.



Any of the following conditions may stop robot movement:



\- Cliff detection

\- Excessive tilt

\- Motor driver failure

\- I²C communication failure

\- Obstacle detection

\- Emergency stop command



\---



\# Future Upgrades



\## Navigation



\- Wheel encoders

\- Mecanum wheels

\- Dead reckoning

\- SLAM



\## Perception



\- Vision processing

\- Voice source localization

\- Environmental recognition



\## Integration



\- Home Assistant

\- MQTT

\- Local AI

\- Cloud AI assistance



\---



\# Revision History



| Version | Description |

|----------|-------------|

| 1.0 | Initial architecture definition |

