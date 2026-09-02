# Sensors

> AEGIS - Sensor Architecture

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir os sensores utilizados pelo AEGIS.

Os sensores são responsáveis por:

- navegação;
- deteção de obstáculos;
- orientação;
- vigilância;
- interação;
- segurança.

---

# Filosofia

Os sensores estão distribuídos por camadas funcionais.

```text

Piso 3
Perceção e Interação

Piso 2
Processamento

Piso 1
Movimento e Segurança

```

---

# Sensores Ativos na V1

## MPU-6050

### Estado

```text
Adquirido
```

---

### Localização

```text
Piso 1
```

Preferencialmente próximo do centro geométrico do robô.

---

### Funções

- orientação;
- aceleração;
- deteção de inclinação;
- estabilidade;
- telemetria.

---

### Controlador

```text
RP2040
```

---

### Interface

```text
I²C
```

---

# HC-SR04

### Estado

```text
Adquirido
```

---

### Localização

```text
Frente do robô
```

---

### Funções

- deteção de obstáculos;
- prevenção de colisões;
- apoio à navegação;
- apoio ao docking.

---

### Controlador

```text
RP2040
```

---

### Interface

```text
Grove Digital
```

através de Grove-Pigtail.

---

# Sistema de Áudio

## INMP441

### Estado

```text
3 unidades adquiridas
```

---

### Localização

```text
Piso 3
```

---

### Distribuição Prevista

```text

          Frente

            M1

      M2         M3

Esquerda      Direita

```

---

### Funções

- captura de voz;
- Home Assistant Assist;
- monitorização sonora;
- futura localização aproximada de origem sonora.

---

### Controlador

```text
ESP32-S3
```

---

### Interface

```text
I²S
```

---

# Sistema de Visão

## Câmara

### Estado

Planeada

---

### Localização

```text
Frente superior
```

---

### Funções

- vigilância;
- streaming remoto;
- snapshots;
- integração Home Assistant.

---

### Controlador

```text
ESP32-S3
```

---

# Sensores de Queda

## Estado

Planeados

---

## Prioridade

Baixa

---

## Justificação

A instalação de referência do AEGIS é:

```text
Interior
Sem escadas
Sem desníveis significativos
```

No entanto o projeto é público e deve prever:

- utilização em habitações com escadas;
- utilização em ambientes desconhecidos;
- proteção contra quedas.

---

## Funções Futuras

- deteção de escadas;
- deteção de varandas;
- prevenção de quedas;
- recuo automático.

---

# Sensores de Docking

## Estado

Planeados

---

## Funções

- aproximação à base;
- alinhamento;
- confirmação de contacto;
- monitorização de carregamento.

---

## Tecnologias em Avaliação

```text
Infravermelhos

Contactos elétricos

Indução

Base Roomba (experimental)
```

---

# Sensores Virtuais

## Origem

Home Assistant

---

## Funções Futuras

Permitir que o AEGIS utilize informação proveniente de:

- presença;
- alarmes;
- sensores ambientais;
- estados da habitação.

---

## Exemplos

```text
Casa Ocupada

Casa Vazia

Modo Noite

Alarme Ativo
```

---

# Integração com Robôs Existentes

## Roomba i1

### Estado

Investigação futura

---

### Objetivos

Possível utilização de:

- informação de mapas;
- telemetria;
- zonas;
- estados de docking.

---

# Distribuição por Controlador

## RP2040

Responsável por:

- MPU-6050
- HC-SR04
- sensores de movimento
- segurança local

---

## ESP32-S3

Responsável por:

- INMP441
- Câmara
- sensores multimédia
- integração Home Assistant

---

# Prioridades da V1

## Obrigatórios

✅ MPU-6050

✅ HC-SR04

✅ INMP441

---

## Planeados

🔲 Câmara

🔲 Docking

🔲 Sensores de queda

---

# Segurança

Os sensores ligados ao RP2040 têm prioridade máxima.

A perda do ESP32-S3 não deverá impedir:

- deteção de obstáculos;
- paragem segura;
- prevenção de colisões.

---

# Estado Atual

## Confirmado

✅ MPU-6050 adquirido

✅ HC-SR04 adquirido

✅ 3 × INMP441 adquiridos

✅ Arquitetura RP2040 + ESP32-S3 definida

---

## Em Evolução

- Câmara
- Sensores de docking
- Sensores de queda
- Integração com Home Assistant

---

# Documentos Relacionados

- mechanical-design.md
- physical-layout.md
- gpio-allocation.md
- communication-system.md
- home-assistant-integration.md
- security-and-failsafe.md
