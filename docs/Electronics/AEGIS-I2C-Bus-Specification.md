\# AEGIS I2C Bus Specification



\## Purpose



The I2C bus provides communication between controllers and peripheral devices throughout the AEGIS platform.



\---



\# Physical Bus



Signals:



\- SDA

\- SCL

\- GND

\- 5V



Optional:



\- INT



\---



\# Bus Master



Current:



\- XIAO RP2040



Future:



\- ESP32-S3 coordination



\---



\# Device Addresses



| Device | Address |

|----------|----------|

| MPU6050 | 0x68 |

| PCF8574 | 0x20 |



Reserved:



| Device | Address |

|----------|----------|

| Magnetometer | TBD |

| OLED Display | TBD |

| Floor 2 Controller | TBD |



\---



\# Bus Policy



\- All grounds common

\- Pull-ups validated only once

\- New devices must not conflict with existing addresses

\- All devices must tolerate 3.3V logic levels



\---



\# Expansion Connector



Pin 1 → 5V

Pin 2 → GND

Pin 3 → SDA

Pin 4 → SCL

Pin 5 → INT

