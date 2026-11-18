\# AEGIS Floor 1 Test Plan



\## Objective



Validate all Floor 1 hardware and firmware components before integration with higher-level systems.



\---



\# Phase 1 - Power Verification



\## Test 1.1



Objective:



Verify power distribution.



Procedure:



\- Connect powerbank.

\- Verify 5V rail.

\- Verify 3.3V rail.



Expected Result:



\- Stable voltage.

\- No unexpected heating.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\---



\# Phase 2 - RP2040 Validation



\## Test 2.1



Objective:



Verify RP2040 boot.



Procedure:



\- Upload test firmware.

\- Verify serial output.



Expected Result:



\- Successful startup.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\---



\# Phase 3 - PCF8574 Validation



\## Test 3.1



Objective:



Verify I²C communication.



Procedure:



\- Run I²C scanner.

\- Confirm PCF8574 address.



Expected Result:



\- Device detected at 0x20.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\---



\# Phase 4 - MPU6050 Validation



\## Test 4.1



Objective:



Verify IMU detection.



Procedure:



\- Run I²C scanner.

\- Initialize MPU6050.



Expected Result:



\- Device detected at 0x68.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\## Test 4.2



Objective:



Verify tilt sensing.



Procedure:



\- Move robot manually.

\- Observe accelerometer values.



Expected Result:



\- Values change consistently.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\---



\# Phase 5 - Motor Driver Validation



\## Test 5.1



Objective:



Verify left motor driver.



Procedure:



\- Drive Front Left motor.

\- Drive Rear Left motor.



Expected Result:



\- Correct operation.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\## Test 5.2



Objective:



Verify right motor driver.



Procedure:



\- Drive Front Right motor.

\- Drive Rear Right motor.



Expected Result:



\- Correct operation.



Status:



\- \[ ] Not Started

\- \[ ] Pass

\- \[ ] Fail



\---



\# Phase 6 - Individual Motor Validation



\## Front Left



\- \[ ] Forward

\- \[ ] Reverse



\## Rear Left



\- \[ ] Forward

\- \[ ] Reverse



\## Front Right



\- \[ ] Forward

\- \[ ] Reverse



\## Rear Right



\- \[ ] Forward

\- \[ ] Reverse



\---



\# Phase 7 - Sensors



\## HC-SR04



\- \[ ] Distance measurement

\- \[ ] Obstacle detection

\- \[ ] Safety stop



\## KY-033 Left



\- \[ ] Detect cliff condition



\## KY-033 Right



\- \[ ] Detect cliff condition



\---



\# Phase 8 - Safety Validation



\## Tilt Protection



\- \[ ] Movement stops on excessive tilt



\## Cliff Protection



\- \[ ] Movement stops on detected cliff



\## Obstacle Protection



\- \[ ] Movement stops below 25 cm



\## I²C Failure



\- \[ ] Robot enters safe state



\---



\# Phase 9 - Motion Validation



\## Forward



\- \[ ] Successful



\## Reverse



\- \[ ] Successful



\## Left Turn



\- \[ ] Successful



\## Right Turn



\- \[ ] Successful



\---



\# Notes



Record observations, failures and corrective actions here.



\---



\# Revision History



| Version | Description |

|----------|-------------|

| 1.0 | Initial Floor 1 validation plan |



