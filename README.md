<p align="center">
  <img src="assets/logo/AEGIS.svg" alt="AEGIS Logo" width="220">
</p>

<h1 align="center">Autonomous Electronic Guardian Integrated System</h1>

<p align="center">
Robô autónomo de vigilância doméstica integrado com Home Assistant e ESPHome.
</p>

---

# AEGIS

> Autonomous Electronic Guardian Integrated System

AEGIS é um robô autónomo de vigilância doméstica desenvolvido como projeto open-source e integrado com Home Assistant, ESPHome e automação residencial.

O objetivo é criar uma plataforma robótica modular inspirada em sistemas comerciais como o EBO, mas totalmente personalizável, expansível e baseada em hardware acessível.

O projeto segue uma arquitetura em camadas que separa locomoção, computação e perceção, permitindo desenvolvimento incremental e validação independente de cada subsistema.

---

# Objetivos

- Vigilância autónoma da habitação
- Integração nativa com Home Assistant
- Integração com ESPHome
- Patrulha automática
- Regresso autónomo à base de carregamento
- Interação por voz
- Áudio bidirecional
- Visão remota por câmara
- Mapeamento do ambiente
- Gestão inteligente de energia
- Arquitetura modular e expansível
- Evolução progressiva para IA embarcada

---

# Filosofia do Projeto

AEGIS foi concebido para ser desenvolvido por etapas.

Cada subsistema é projetado, implementado e validado individualmente antes da integração com o sistema completo.

Esta abordagem permite:

- Menor complexidade de desenvolvimento
- Maior facilidade de manutenção
- Evolução gradual do hardware
- Reutilização de componentes
- Redução do risco técnico
- Escalabilidade futura
- Integração incremental de novas funcionalidades

---

# Arquitetura Geral

O sistema encontra-se dividido em três níveis principais.

```text
┌──────────────────────────────┐
│           Piso 3             │
│        Perceção Avançada     │
├──────────────────────────────┤
│           Piso 2             │
│  Computação e Comunicações   │
├──────────────────────────────┤
│           Piso 1             │
│  Locomoção e Segurança       │
└──────────────────────────────┘
```

---

# Piso 1 - Locomoção e Segurança

Responsável pelo controlo de movimento, segurança e navegação local em tempo real.

## Hardware

- Seeed Studio XIAO RP2040
- PCF8574 I²C I/O Expander
- 2 × TB6612FNG
- 4 × Motores DC TT 3–6V
- HC-SR04
- MPU6050
- 2 × Sensores anti-queda KY-033

## Características

- Controlo independente dos quatro motores
- Preparado para futura conversão para rodas Mecanum
- Controlo PWM individual
- Controlo de direção através do PCF8574
- Deteção de obstáculos frontais
- Deteção de queda
- Monitorização de inclinação
- Fail-safe de segurança
- Interface I²C para os pisos superiores

## Funções

- Controlo dos motores
- Navegação local
- Proteção anti-queda
- Proteção anti-colisão
- Paragem de emergência
- Gestão de movimento de baixo nível

---

# Piso 2 - Computação e Comunicações

Responsável pela lógica principal do robô.

## Hardware

- ESP32-S3
- INMP441
- PAM8302
- Altifalantes 3W
- Interfaces Wi-Fi e Bluetooth

## Funções

- Integração Home Assistant
- Integração ESPHome
- Processamento de voz
- Gestão de missões
- Comunicação entre módulos
- Telemetria
- Automação residencial

---

# Piso 3 - Perceção Avançada

Responsável pela observação e interpretação do ambiente.

## Hardware

- LiDAR T-mini
- ESP32-CAM
- Plataforma Pan/Tilt com 2 graus de liberdade

## Funções

- Mapeamento do ambiente
- Navegação assistida por LiDAR
- Visão computacional
- Inspeção visual
- Reconhecimento de objetos
- Validação visual dos alvos detetados

---

# Tecnologias

## Microcontroladores

- Raspberry Pi RP2040
- ESP32-S3

## Comunicações

- I²C
- UART
- Wi-Fi
- Bluetooth
- MQTT

## Sensores

- MPU6050
- HC-SR04
- KY-033
- LiDAR T-mini
- ESP32-CAM

## Software

- Arduino Framework
- ESPHome
- Home Assistant
- MQTT
- GitHub

---

# Estado Atual

## Concluído

- Arquitetura modular definida
- Plataforma física base selecionada
- Piso 1 documentado
- Integração de motores definida
- Arquitetura I²C definida
- Arquitetura Mecanum-ready definida

## Em Desenvolvimento

- Implementação do Piso 1
- Firmware RP2040
- Testes dos motores
- Testes de navegação
- Integração dos sensores

## Futuro

- Integração do ESP32-S3
- Sistema de áudio
- Integração Home Assistant
- LiDAR
- ESP32-CAM
- Base de carregamento
- Navegação autónoma avançada

---

# Estrutura do Repositório

```text
AEGIS-Home-Guardian
│
├── assets/
├── docs/
├── exports/
├── firmware/
├── hardware/
└── tools/
```

---

# Licença

Este projeto é disponibilizado como plataforma aberta para desenvolvimento, aprendizagem e experimentação em robótica doméstica autónoma.

---

# Autor

António Augusto da Silva Cravo

Projeto AEGIS - Autonomous Electronic Guardian Integrated System