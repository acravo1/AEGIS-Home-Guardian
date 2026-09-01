# AEGIS - Project State

Última atualização: 2026-09-01

---

# Estado Geral

Projeto em fase de arquitetura e preparação da plataforma motora.

Estado atual:
- Arquitetura definida
- Componentes principais identificados
- Estrutura modular definida
- Desenvolvimento de hardware ainda não iniciado

Versão:
- AEGIS v0.1

---

# Objetivo

Desenvolver um robô autónomo de vigilância doméstica inspirado no EBO, totalmente integrado com Home Assistant e ESPHome.

Capacidades pretendidas:

- Patrulha autónoma
- Regresso automático à base
- Vigilância por vídeo
- Áudio bidirecional
- Assistente por voz
- Integração com Home Assistant
- Gestão inteligente de energia
- Expansibilidade modular

---

# Arquitetura Congelada

## Controlador de Movimento

Hardware:
- Seeed XIAO RP2040

Funções:
- Controlo dos motores
- Leitura dos sensores de movimento
- Navegação local
- Gestão do servo
- Interface UART com ESP32
