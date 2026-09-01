# Audio System

> AEGIS - Audio Capture, Processing and Playback Architecture

Versão: 1.0
Estado: Arquitetura Definida

---

# Objetivo

O sistema de áudio do AEGIS tem como objetivo permitir:

- interação por voz;
- integração com Home Assistant Assist;
- reprodução de alertas;
- comunicação bidirecional;
- futura localização aproximada de fontes sonoras.

---

# Filosofia

O sistema de áudio encontra-se totalmente centralizado no ESP32-S3.

O RP2040 não participa no processamento de áudio.

```mermaid
flowchart TD

    RP["RP2040"]

    ESP["ESP32-S3"]

    RP <-->|UART| ESP

    subgraph Audio
        MIC["Microfones"]
        AMP["Amplificadores"]
        SPK["Altifalantes"]
    end

    MIC --> ESP
    ESP --> AMP
    AMP --> SPK
```

---

# Arquitetura Geral

```mermaid
flowchart LR

    M1["INMP441 #1"]
    M2["INMP441 #2"]
    M3["INMP441 #3"]

    ESP["ESP32-S3"]

    AMP1["PAM8302 #1"]
    AMP2["PAM8302 #2"]

    SPK1["Altifalante #1"]
    SPK2["Altifalante #2"]

    M1 --> ESP
    M2 --> ESP
    M3 --> ESP

    ESP --> AMP1
    ESP --> AMP2

    AMP1 --> SPK1
    AMP2 --> SPK2
```

---

# Sistema de Captura

## Microfones

Hardware:

- INMP441 ×3

Tipo:

- MEMS
- I²S digital

---

# Disposição Física

A disposição prevista privilegia cobertura espacial.

```mermaid
flowchart TB

    M1["Frontal"]

    M2["Esquerda"]
    M3["Direita"]

    M1 --- M2
    M1 --- M3
```

Representação conceptual:

```text
         Frente

           M1

     M2         M3
```

---

# Objetivos da Disposição

## Curto Prazo

- captação uniforme de voz;
- redução de zonas mortas.

---

## Médio Prazo

- deteção aproximada da direção do som.

---

## Longo Prazo

- seguimento sonoro;
- deteção inteligente de eventos.

---

# Interface I²S

O barramento I²S será utilizado para:

- captura dos INMP441;
- reprodução áudio.

```mermaid
flowchart LR

    ESP["ESP32-S3"]

    I2S["Barramento I²S"]

    MIC["INMP441"]

    I2S --> MIC

    ESP --> I2S
```

---

# Sistema de Reprodução

## Amplificação

Hardware:

- PAM8302 ×2

---

## Altifalantes

Hardware:

- 3W
- 8Ω

Quantidade:

- 2

---

# Funções de Reprodução

## Fase Inicial

- sons de arranque;
- avisos;
- notificações.

---

## Fase Intermédia

- reprodução de mensagens;
- reprodução TTS.

---

## Fase Avançada

- comunicação bidirecional;
- intercomunicador remoto.

---

# Integração Home Assistant

## Arquitetura

```mermaid
flowchart LR

    USER["Utilizador"]

    HA["Home Assistant"]

    ESP["ESP32-S3"]

    SPK["Altifalantes"]

    USER --> HA

    HA --> ESP

    ESP --> SPK
```

---

# Integração Assist

Objetivo:

Transformar o AEGIS num terminal móvel do Assist.

```mermaid
flowchart LR

    USER["Voz"]

    MIC["INMP441"]

    ESP["ESP32-S3"]

    ASSIST["Home Assistant Assist"]

    SPK["Resposta"]

    USER --> MIC

    MIC --> ESP

    ESP --> ASSIST

    ASSIST --> ESP

    ESP --> SPK
```

---

# Roadmap de Funcionalidades

## Fase 1

- reprodução de áudio;
- testes de amplificação.

---

## Fase 2

- captura de áudio;
- validação dos microfones.

---

## Fase 3

- integração ESPHome.

---

## Fase 4

- Assist.

---

## Fase 5

- comunicação bidirecional.

---

## Fase 6

- localização sonora.

---

# Casos de Utilização

## Alertas

Exemplos:

- bateria baixa;
- início de patrulha;
- regresso à base.

---

## Assistente de Voz

Exemplos:

- perguntas ao Assist;
- comandos domésticos;
- consultas Home Assistant.

---

## Intercomunicador

Exemplos:

- ouvir ambiente;
- falar através do robô.

---

# Evoluções Futuras

## Localização de Fonte Sonora

Objetivo:

Determinar a direção aproximada de origem de um som.

```mermaid
flowchart TD

    M1["Mic #1"]
    M2["Mic #2"]
    M3["Mic #3"]

    PROC["Processamento"]

    DIR["Direção Aproximada"]

    M1 --> PROC
    M2 --> PROC
    M3 --> PROC

    PROC --> DIR
```

---

## Eventos Inteligentes

Deteções possíveis:

- campainha;
- alarmes;
- sons anómalos;
- chamadas de voz.

---

# Critérios de Sucesso

O sistema será considerado concluído quando:

- [ ] Os altifalantes reproduzem áudio.
- [ ] Os microfones captam voz com clareza.
- [ ] A integração com ESPHome está operacional.
- [ ] O Assist funciona através do robô.
- [ ] É possível comunicação bidirecional.
- [ ] O sistema opera de forma estável durante longos períodos.

---

# Notas de Projeto

O subsistema de áudio é um dos principais motivos para a utilização do ESP32-S3.

A arquitetura foi concebida para evoluir progressivamente:

1. Reprodução áudio
2. Captura áudio
3. Assist
4. Comunicação bidirecional
5. Localização sonora

Sem necessidade de alterações estruturais ao hardware principal.
