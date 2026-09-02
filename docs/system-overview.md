# System Overview

> AEGIS - Autonomous Electronic Guardian Integrated System

Versão: 1.0  
Estado: Ativo

---

# O que é o AEGIS?

O AEGIS (Autonomous Electronic Guardian Integrated System) é um robô autónomo de vigilância doméstica desenvolvido como projeto open-source.

O objetivo é criar uma plataforma modular integrada com:

- Home Assistant;
- ESPHome;
- Assist;
- automações domésticas.

O projeto inspira-se em soluções comerciais de vigilância móvel, mantendo total controlo local da operação.

---

# Princípios do Projeto

## Modularidade

Cada subsistema deve poder ser:

- desenvolvido;
- testado;
- substituído;

independentemente.

---

## Integração Local

O sistema deverá funcionar sem dependências obrigatórias da cloud.

---

## Segurança

A segurança tem prioridade sobre:

- patrulha;
- docking;
- interação;
- vigilância.

---

## Evolução Incremental

O robô é desenvolvido em blocos funcionais sucessivos.

---

# Arquitetura Global

```text

        Home Assistant
               ▲
               │
               ▼

           ESP32-S3
               ▲
               │ UART
               ▼

            RP2040

               │
               ▼

            Motores

```

---

# Controladores

## RP2040

Responsável por:

- motores;
- sensores de navegação;
- movimento;
- segurança local.

Principais sensores:

- MPU6050
- HC-SR04

---

## ESP32-S3

Responsável por:

- Home Assistant;
- ESPHome;
- Wi-Fi;
- áudio;
- vídeo;
- Assist;
- telemetria.

---

# Estrutura Física

## Piso 1

Função:

Movimento e sensores base.

Hardware principal:

- Chassis 4WD
- RP2040
- Grove Base
- MPU6050
- HC-SR04
- Driver de motores

---

## Piso 2

Função:

Energia e processamento.

Hardware principal:

- ESP32-S3
- Distribuição elétrica
- Sistema áudio
- Powerbank

---

## Piso 3

Função:

Perceção e interação.

Hardware principal:

- Microfones
- LEDs
- Câmara (futura)

---

# Dimensões Principais

## Chassis

```text
260 × 155 × 65 mm
```

---

## Rodas

```text
Ø70 mm
```

---

## Piso 2

```text
Ø300 mm
```

---

## Piso 3

```text
Ø300 mm
```

---

## Espaçamento

Configuração atualmente validada:

```text
30 mm
```

entre:

- Piso 1 ↔ Piso 2

Configuração de referência:

```text
30 mm
```

entre:

- Piso 2 ↔ Piso 3

---

# Energia

## Fonte Principal

Powerbank.

Requisito obrigatório:

```text
Pass-through charging
```

---

## Localização

```text
Face inferior do Piso 2
```

---

## Carregamento

Planeado:

- docking autónomo;
- monitorização do estado de carga;
- integração Home Assistant.

---

# Sensores

## Atuais

### MPU6050

- aceleração;
- orientação;
- estabilidade.

---

### HC-SR04

- deteção de obstáculos;
- prevenção de colisões.

---

### INMP441

3 unidades.

Funções:

- voz;
- Assist;
- monitorização sonora.

---

## Planeados

- Câmara
- Sensores de docking
- Sensores de queda

---

# Áudio

Hardware atual:

```text
3 × INMP441

3 × MAX98357A

2 × Altifalantes
```

Funções:

- Assist;
- notificações;
- comunicação bidirecional.

---

# Iluminação

Hardware atual:

```text
5 × KY-009 RGB
```

Funções:

- estado do sistema;
- carregamento;
- patrulha;
- alertas.

---

# Integração Home Assistant

O Home Assistant funciona como:

```text
Camada Estratégica
```

O AEGIS funciona como:

```text
Agente Físico Móvel
```

O sistema deverá permitir:

- patrulha;
- notificações;
- automações;
- integração Assist;
- monitorização remota.

---

# Segurança

Princípios fundamentais:

- paragem segura;
- funcionamento local;
- independência da cloud;
- independência da Internet.

O RP2040 mantém sempre controlo de segurança sobre os motores.

---

# Estado Atual

## Concluído

✅ Arquitetura principal

✅ Estrutura mecânica base

✅ Arquitetura energética

✅ Sistema áudio

✅ Sistema LED

✅ Integração Home Assistant

✅ Comunicação RP2040 ↔ ESP32-S3

---

## Em Implementação

🔄 Block 01 - Plataforma Motora

---

## Em Desenvolvimento Futuro

- docking;
- vídeo;
- sensores de queda;
- painel solar;
- navegação avançada.

---

# Documentação Principal

Leitura recomendada:

1. system-overview.md
2. project-decisions.md
3. dimensional-reference.md
4. hardware-inventory.md
5. physical-layout.md

---

# Estado do Projeto

Fase atual:

```text
Pré-Construção / Prototipagem Física
```

A arquitetura encontra-se consolidada e o foco principal passou para a montagem e validação do Block 01.
