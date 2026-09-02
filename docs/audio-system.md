# Audio System

> AEGIS - Audio Architecture

Versão: 2.0
Estado: Ativo

---

# Objetivo

Fornecer:

- interação por voz;
- integração com Home Assistant Assist;
- reprodução de notificações;
- comunicação bidirecional;
- monitorização sonora do ambiente.

---

# Arquitetura

O sistema áudio está concentrado no ESP32-S3.

```text

INMP441
     │
     ▼

 ESP32-S3

     │
     ▼

 MAX98357A

     │
     ▼

 Altifalantes

```

---

# Controlador Principal

## ESP32-S3

Função:

- processamento áudio;
- captura I²S;
- reprodução I²S;
- integração Assist;
- comunicação com Home Assistant.

---

# Captura Áudio

## Hardware

### INMP441

Quantidade:

```text
3
```

Estado:

```text
Adquirido
```

Características:

- MEMS
- Interface I²S
- Omnidirecional
- Baixo consumo

---

## Distribuição Prevista

```text

          Frente

            M1

     M2             M3

 Esquerda       Direita

```

---

## Objetivos

- captura de voz;
- comandos de voz;
- integração Assist;
- recolha de áudio ambiente;
- futura localização aproximada de origem sonora.

---

# Reprodução Áudio

## Hardware

### MAX98357A

Quantidade:

```text
3
```

Estado:

```text
Adquirido
```

Características:

- DAC I²S integrado;
- amplificador Classe D;
- saída direta para altifalante.

---

## Função

Converter o áudio digital produzido pelo ESP32-S3 em áudio reproduzível pelos altifalantes.

---

# Altifalantes

Quantidade:

```text
2
```

Estado:

```text
Adquirido
```

---

## Funções

- síntese de voz (TTS);
- Assist;
- notificações;
- alarmes;
- comunicação bidirecional.

---

# Configuração Inicial

## V1

```text
3 × INMP441
1 × MAX98357A
2 × Altifalantes
```

Objetivo:

Validar:

- captura;
- reprodução;
- Assist;
- integração Home Assistant.

---

## Evolução Futura

Possibilidades:

```text
Canal esquerdo
Canal direito
Canal central
```

ou

```text
Áudio principal
Alertas
Efeitos
```

utilizando os três módulos MAX98357A disponíveis.

---

# Integração Home Assistant

## Objetivos

Permitir:

- Home Assistant Assist;
- notificações por voz;
- mensagens de sistema;
- alarmes;
- interação remota.

---

# Integração ESPHome

Objetivos futuros:

```text
Voice Assistant

Media Player

Speaker

Microphone
```

---

# Posicionamento Físico

## INMP441

Localização prevista:

Piso 3.

Justificação:

- maior afastamento dos motores;
- melhor cobertura espacial;
- menor interferência mecânica.

---

## MAX98357A

Localização prevista:

Piso 2.

Justificação:

- proximidade ao ESP32-S3;
- simplificação da cablagem I²S.

---

## Altifalantes

Localização prevista:

Piso 3.

Distribuição:

- lado esquerdo;
- lado direito.

Objetivo:

Melhor propagação sonora.

---

# Requisitos

## Captura

O sistema deverá permitir:

- deteção clara de voz;
- operação em ambientes interiores;
- integração com Assist.

---

## Reprodução

O sistema deverá permitir:

- voz sintetizada;
- alertas;
- áudio de sistema;
- mensagens do Home Assistant.

---

# Estado Atual

## Hardware Adquirido

✅ 3 × INMP441

✅ 3 × MAX98357A

✅ 2 × Altifalantes

✅ ESP32-S3

---

## Hardware em Falta

Nenhum componente crítico identificado.

---

# Documentos Relacionados

- hardware-inventory.md
- project-decisions.md
- physical-layout.md
- power-system.md
