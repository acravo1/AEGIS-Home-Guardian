\# AEGIS Floor 1 Hardware Specification v1.0



\## Purpose



Floor 1 is responsible for locomotion, low-level navigation and safety-related functions.



The floor must remain operational even if higher-level systems become unavailable.



\---



\# Architecture



```text

Powerbank

&#x20;   |

&#x20;   +---- Control Electronics

&#x20;   |

&#x20;   +---- Motor Electronics



&#x20;               HC-SR04



&#x20;    KY-033             KY-033



&#x20;              MPU6050



&#x20;             PCF8574



&#x20;          XIAO RP2040



&#x20;     TB6612-L    TB6612-R



&#x20;     FL   RL     FR   RR

```



\---



\# Main Controller



\## XIAO RP2040



Responsibilities:



\- Motor PWM control

\- Safety monitoring

\- Cliff detection

\- Obstacle detection

\- Motion execution

\- I²C communication



\---



\# Motor System



\## Drivers



\- 2 × SparkFun TB6612FNG



\### Left Driver



Channel A:

\- Front Left Motor



Channel B:

\- Rear Left Motor



\### Right Driver



Channel A:

\- Front Right Motor



Channel B:

\- Rear Right Motor



\---



\# Motor Configuration



The architecture supports:



\- Standard differential drive

\- Independent motor control

\- Future Mecanum wheel upgrade



No rewiring shall be required for future migration to Mecanum wheels.



\---



\# Sensors



\## Cliff Detection



\- KY-033 Left

\- KY-033 Right



Purpose:



\- Stair detection

\- Edge detection

\- Fall prevention



\---



\## Obstacle Detection



\### HC-SR04



Purpose:



\- Forward obstacle detection

\- Collision avoidance



Configured threshold:



```text

25 cm

```



\---



\## Motion Monitoring



\### MPU6050



Provides:



\- Accelerometer

\- Gyroscope



Purpose:



\- Tilt detection

\- Motion analysis

\- Future dead-reckoning support



\---



\# I²C Expansion



\## Bus Devices



\### MPU6050



Address:



```text

0x68

```



\### PCF8574



Address:



```text

0x20

```



\### Future Expansion



Reserved:



\- Floor 2 ESP32-S3

\- Additional sensors

\- Displays

\- Magnetometer



\---



\# Power Architecture



Control Electronics:



\- XIAO RP2040

\- MPU6050

\- HC-SR04

\- KY-033

\- PCF8574



Motor Electronics:



\- TB6612 Left

\- TB6612 Right



Power source:



\- Tronic 10000 mAh Powerbank



Ground:



\- Common ground shared by all subsystems



\---



\# GPIO Allocation



| RP2040 Pin | Function |

|------------|----------|

| D0 | Right Driver PWMA |

| D1 | Right Driver PWMB |

| D2 | Left Driver PWMA |

| D3 | Left Driver PWMB |

| D4 | SDA |

| D5 | SCL |

| D6 | Left Cliff Sensor |

| D7 | Right Cliff Sensor |

| D8 | HC-SR04 TRIG |

| D9 | HC-SR04 ECHO |

| D10 | Common STBY |



\---



\# PCF8574 Allocation



| Pin | Function |

|------|----------|

| P0 | Left AIN1 |

| P1 | Left AIN2 |

| P2 | Left BIN1 |

| P3 | Left BIN2 |

| P4 | Right AIN1 |

| P5 | Right AIN2 |

| P6 | Right BIN1 |

| P7 | Right BIN2 |



\---



\# Safety Features



Movement is stopped when:



\- Cliff detected

\- Excessive tilt

\- Ultrasonic sensor fault

\- PCF8574 communication loss

\- Obstacle detected

\- Driver standby disabled



\---



\# Future Enhancements



\- Encoders

\- Mecanum wheels

\- Magnetometer

\- LiDAR integration

\- Autonomous navigation

\- SLAM support



\---



\# Revision History



\## v1.0



Initial Floor 1 architecture definition.

