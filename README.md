<p align="center">
  <img src="assets/logo/AEGIS.svg" alt="AEGIS Logo" width="220">
lign="center">
  <strong>Autonomous Electronic Guardian Integrated System</strong>
</p>

<p align="center">
  Robô autónomo de vigilância doméstica integrado com Home Assistant e ESPHome.
</p>

---

# AEGIS

> Autonomous Electronic Guardian Integrated System

AEGIS é um robô autónomo de vigilância doméstica desenvolvido como projeto open-source e integrado com Home Assistant e ESPHome.

O objetivo é criar uma plataforma robótica modular inspirada em sistemas comerciais como o EBO, mas totalmente personalizável e baseada em hardware acessível e componentes reutilizados.

---

## Objetivos

- Vigilância autónoma da habitação
- Integração nativa com Home Assistant
- Controlo e monitorização através de ESPHome
- Patrulha automática
- Regresso autónomo à base de carregamento
- Interação por voz
- Áudio bidirecional
- Visão remota por câmara
- Gestão inteligente de energia
- Construção modular por blocos funcionais

---

## Filosofia do Projeto

AEGIS foi concebido para ser desenvolvido por etapas.

Cada subsistema é construído e validado individualmente antes da integração no sistema completo.

Esta abordagem permite:

- menor complexidade de desenvolvimento
- manutenção simplificada
- evolução gradual do hardware
- reutilização de componentes
- expansão futura sem alterações profundas

---

# Arquitetura

## Camada de Movimento

Responsável pela locomoção e navegação de baixo nível.

### Hardware

- Seeed XIAO RP2040
- TB6612FNG
- Motores DC
- MPU-6050
- HC-SR04
- Encoders (planeados)

### Funções

- controlo dos motores
- controlo PID
- leitura dos sensores de movimento
- deteção de obstáculos
-
