# Sensors

> AEGIS - Sensor Architecture

Versão: 1.0
Estado: Em desenvolvimento

---

# Objetivo

Este documento descreve todos os sensores utilizados pelo projeto AEGIS.

Inclui:

- sensores atuais
- sensores planeados
- função de cada sensor
- integração no sistema
- evolução futura

---

# Filosofia

Nenhum sensor é responsável sozinho pela tomada de decisão.

O AEGIS utiliza uma abordagem de fusão de sensores.

```mermaid
flowchart TD

    IMU["MPU-6050"]
    US["HC-SR04"]
    ENC["Encoders"]
    MIC["INMP441"]
    CAM["Câmara"]

    FUSION["Motor de Decisão"]

    IMU --> FUSION
    US --> FUSION
    ENC --> FUSION
    MIC --> FUSION
    CAM --> FUSION
```

---

# Sensores Atuais

## MPU-6050

### Tipo

IMU (Inertial Measurement Unit)

### Interface

I²C

### Controlador

RP2040

### Funções

- medição de aceleração
- medição de orientação
- medição de rotação
- deteção de impactos
- estabilização da navegação

### Utilização no Projeto

```mermaid
flowchart LR

    MPU["MPU-6050"]

    NAV["Navegação"]

    TURN["Controlo de Rotação"]

    MPU --> NAV
    MPU --> TURN
```

---

## HC-SR04

### Tipo

Sensor ultrassónico

### Interface

Digital

### Controlador

RP2040

### Posição

Frente do robô

### Funções

- deteção de obstáculos
- aproximação controlada
- auxílio ao docking

### Utilização

```mermaid
flowchart LR

    SONAR["HC-SR04"]

    DECISION["Evitar Obstáculo"]

    SONAR --> DECISION
```

---

# Sensores de Áudio

## INMP441

### Quantidade

3

### Tipo

Microfone MEMS I²S

### Interface

I²S

### Controlador

ESP32-S3

---

## Disposição Prevista

## Disposição Prevista

```mermaid
flowchart TB

    M1["INMP441 #1<br/>Frontal"]

    M2["INMP441 #2<br/>Esquerda"]
    M3["INMP441 #3<br/>Direita"]

    M1 --- M2
    M1 --- M3
```

## Funções

### Curto Prazo

- deteção de som
- voz
- Assist

### Médio Prazo

- localização aproximada da origem sonora

### Longo Prazo

- seguimento acústico
- deteção inteligente de eventos

---

# Sensores Planeados

## Encoders

### Estado

Planeado

### Funções

- distância percorrida
- velocidade
- odometria
- apoio à navegação

---

## Arquitetura

```mermaid
flowchart LR

    ENC["Encoders"]

    RP["RP2040"]

    NAV["Navegação"]

    ENC --> RP
    RP --> NAV
```

---

# Sensores de Docking

## Recetores IR

### Estado

Planeado

### Funções

- deteção da base
- alinhamento
- aproximação final

---

### Arquitetura

```mermaid
flowchart LR

    BASE["Emissor IR"]

    RX["Recetores IR"]

    CTRL["Controlo de Docking"]

    BASE -.-> RX

    RX --> CTRL
```

---

# Sensores de Visão

## Câmara

### Estado

Planeado

### Funções

- vigilância
- streaming remoto
- reconhecimento da estação de carga
- navegação visual

---

## Integração Prevista

```mermaid
flowchart LR

    CAM["Câmara"]

    ESP["ESP32-S3"]

    HA["Home Assistant"]

    CAM --> ESP
    ESP --> HA
```

---

# Mapa de Sensores por Subsistema

## Movimento

| Sensor | Função |
|----------|----------|
| MPU-6050 | Orientação |
| HC-SR04 | Obstáculos |
| Encoders | Odometria |

---

## Docking

| Sensor | Função |
|----------|----------|
| IR | Localização da base |
| HC-SR04 | Distância final |
| Câmara | Alinhamento futuro |

---

## Vigilância

| Sensor | Função |
|----------|----------|
| Câmara | Vídeo |
| INMP441 | Áudio |

---

## Interação

| Sensor | Função |
|----------|----------|
| INMP441 | Voz |
| Câmara | Presença |

