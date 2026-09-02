# GPIO Allocation

> AEGIS - Controller Interface Allocation

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir a utilização oficial das interfaces do RP2040 e do ESP32-S3.

Este documento privilegia a utilização de interfaces funcionais:

- I²C
- UART
- Grove Digital

em vez da gestão direta de GPIOs individuais.

---

# Arquitetura

```text

ESP32-S3
     ▲
     │ UART
     ▼

RP2040

```

---

# RP2040

## Função

Responsável por:

- movimento;
- sensores locais;
- segurança de movimento;
- controlo dos motores.

---

## Hardware

### Seeed XIAO RP2040

Controlador principal do subsistema de movimento.

---

### Grove Shield for XIAO

Modelo:
```text
Seeed Grove Shield for XIAO
```

Compatibilidade:
```text
Seeed XIAO RP2040 ✓
Seeed XIAO ESP32-C3 ✓
Seeed XIAO nRF52840 ✓
```

Interfaces disponíveis:

```text
I²C: 2 portas (SDA/SCL)
UART: 1 porta (RX/TX)
Grove Digital: 4 portas (GPIO)
SPI: 1 porta (não usado)
```

Referência:
```text
Part Number: 103020270
```

---

# Interface I²C

## Função

Barramento principal de sensores e expansões.

---

## Dispositivos Atuais

### MPU-6050

Estado:

Confirmado.

Função:

- aceleração;
- orientação;
- movimento.

---

## Dispositivos Planeados

### Grove Motor Driver

Estado:

Em avaliação.

Função:

Controlo dos motores.

---

### PCA9685

Estado:

Disponível.

Função futura:

- LEDs;
- servos;
- expansão PWM.

---

## Expansão

Opções atualmente previstas:

### Opção A

```text
Grove I²C Hub
```

---

### Opção B

```text
Bloco de terminais

+
Cabos Grove-Pigtail
```

---

# Interface UART

## Função

Comunicação entre controladores.

```text

RP2040
   ↕
ESP32-S3

```

---

## Utilização

### Telemetria

Exemplos:

```text
Velocidade
Orientação
Estado sensores
```

---

### Comandos

Exemplos:

```text
Frente
Trás
Rotação
Paragem
```

---

## Reserva

A interface UART fica dedicada exclusivamente à comunicação:

```text
RP2040 ↔ ESP32-S3
```

---

# Grove Digital 1

## Função

HC-SR04

---

## Utilização

```text
Trigger
Echo
```

através de cabo Grove-Pigtail.

---

# Grove Digital 2

## Estado

Reservado.

---

## Utilizações Possíveis

```text
Docking
Sensor adicional
Encoder
```

---

# Grove Digital 3

## Estado

Reservado.

---

## Utilizações Possíveis

```text
Docking
Failsafe
Sensor futuro
```

---

# Grove Digital 4

## Estado

Reservado.

---

## Utilizações Possíveis

```text
Expansão futura
```

---

# ESP32-S3

## Função

Controlador principal.

Responsável por:

- Home Assistant;
- ESPHome;
- Assist;
- áudio;
- vídeo;
- comunicações.

---

# Interfaces ESP32-S3

## I²S

Utilização:

```text
INMP441
MAX98357A
```

---

## Wi-Fi

Utilização:

```text
Home Assistant
ESPHome
OTA
```

---

## UART

Utilização:

```text
Comunicação com RP2040
```

---

# Reservas

## RP2040

Prioridade:

```text
Movimento
Segurança
Sensores locais
```

---

## ESP32-S3

Prioridade:

```text
Áudio
Vídeo
Integração HA
```

---

# Regras

## Regra 1

Sempre que possível utilizar interfaces Grove.

---

## Regra 2

Evitar ligações diretas a GPIOs quando existir uma interface Grove equivalente.

---

## Regra 3

O barramento I²C deverá concentrar:

- sensores;
- expansões;
- módulos auxiliares.

---

## Regra 4

A UART RP2040 ↔ ESP32-S3 é dedicada e não deverá ser reutilizada.

---

# Estado Atual

## Confirmado

✅ MPU-6050 em I²C

✅ HC-SR04 em Grove Digital

✅ UART dedicada RP2040 ↔ ESP32-S3

✅ Grove como interface preferencial

---

## Em Avaliação

🔲 Grove Motor Driver I²C

🔲 Grove I²C Hub

🔲 Utilização futura da PCA9685

---

# Documentos Relacionados

- hardware-inventory.md
- project-decisions.md
- physical-layout.md
- communication-system.md
