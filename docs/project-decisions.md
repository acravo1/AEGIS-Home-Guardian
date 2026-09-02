# Project Decisions

> AEGIS - Architectural Decision Record (ADR)

Versão: 1.0
Estado: Ativo

---

# Objetivo

Este documento regista as decisões estruturais do projeto AEGIS.

Sempre que uma decisão relevante seja aprovada:

1. Registar neste documento.
2. Atualizar a documentação associada.
3. Atualizar o development-log.md.

---

# Estado das Decisões

## Estados Possíveis

### Proposed

Em discussão.

---

### Accepted

Aprovada.

---

### Deprecated

Substituída por outra decisão.

---

### Rejected

Avaliada e rejeitada.

---

# PD-001

## Título

Arquitetura dual-controller

## Estado

Accepted

## Data

2026-08-31

## Decisão

Utilizar:

- Seeed XIAO RP2040
- ESP32-S3

## Justificação

Separação entre:

- movimento;
- sensores de navegação;
- multimédia;
- comunicações.

## Impacto

Maior modularidade.

---

# PD-002

## Título

Arquitetura por pisos

## Estado

Accepted

## Data

2026-08-31

## Decisão

Organização física em três níveis:

- Chassis Base
- Piso 2
- Piso 3

## Justificação

Facilita:

- manutenção;
- cablagem;
- expansão futura.

---

# PD-003

## Título

Utilização de plataformas circulares

## Estado

Accepted

## Data

2026-09-01

## Decisão

Utilizar duas plataformas circulares adicionais.

## Dimensões

```text
Piso 2 = Ø300 mm

Piso 3 = Ø300 mm
```

## Justificação

- espaço disponível;
- estabilidade;
- expansão futura.

---

# PD-004

## Título

Powerbank como fonte principal

## Estado

Accepted

## Data

2026-09-01

## Decisão

O sistema será alimentado por um powerbank central.

## Justificação

- simplicidade;
- disponibilidade;
- segurança.

---

# PD-005

## Título

Pass-through obrigatório

## Estado

Accepted

## Data

2026-09-01

## Decisão

O powerbank final deverá obrigatoriamente suportar:

- carregamento em utilização;
- alimentação contínua durante carregamento.

## Justificação

Necessário para:

- docking;
- carregamento autónomo;
- funcionamento contínuo.

---

# PD-006

## Título

Powerbank suspenso sob o Piso 2

## Estado

Accepted

## Data

2026-09-01

## Decisão

Montar o powerbank na face inferior do Piso 2.

## Justificação

- redução do centro de gravidade;
- libertação da superfície do Piso 2;
- melhor distribuição de massas.

---

# PD-007

## Título

Montagem inicial não definitiva

## Estado

Accepted

## Data

2026-09-01

## Decisão

Utilizar inicialmente:

- fita dupla-face;
- abraçadeiras;
- fixações temporárias.

## Justificação

Validar:

- layout;
- cablagem;
- acessibilidade.

Antes da criação de suportes definitivos.

---

# PD-008

## Título

Integração nativa com Home Assistant

## Estado

Accepted

## Data

2026-08-31

## Decisão

O AEGIS será concebido como um componente do ecossistema Home Assistant.

## Justificação

Permitir:

- automações;
- telemetria;
- Assist;
- controlo centralizado.

---

# PD-009

## Título

Utilização de Grove como barramento preferencial

## Estado

Accepted

## Data

2026-09-01

## Decisão

Sempre que possível deverão ser utilizados módulos Grove.

## Justificação

- menor cablagem;
- maior modularidade;
- menor risco de ligação incorreta.

---

# PD-010

## Título

Sensores de queda

## Estado

Accepted

## Data

2026-09-01

## Decisão

Sensores de queda fazem parte da arquitetura oficial.

## Prioridade

Baixa.

## Justificação

A instalação de referência não possui escadas.

No entanto, o projeto é público e deve suportar ambientes genéricos.

---

# PD-011

## Título

Sistema LED distribuído

## Estado

Accepted

## Data

2026-09-01

## Decisão

Utilizar:

```text
5 × KY-009 RGB
```

## Justificação

- feedback visual;
- iluminação da saia;
- integração com Assist.

---

# PD-012

## Título

Sistema áudio distribuído

## Estado

Accepted

## Data

2026-09-01

## Decisão

Utilizar:

```text
3 × INMP441
3 × MAX98357A
2 × Altifalantes
```

## Justificação

Permitir:

- Assist;
- áudio bidirecional;
- expansão futura.

---

# Em Avaliação

## PD-013

### Título

Altura do Piso 2

### Estado

Proposed

### Opções

```text
45 mm

50 mm
```

### Critério

Validação física.

---

## PD-014

### Título

Motor Driver

### Estado

Proposed

### Opções

```text
TB6612FNG convencional

TB6612FNG Grove I²C
```

### Critério

Simplicidade de integração.

---

## PD-015

### Título

Hub I²C

### Estado

Proposed

### Opções

```text
Hub Grove

Bloco de terminais
+
Pigtails Grove
```

### Critério

Modularidade versus custo.

---

# Regras

Uma decisão só deve aparecer neste documento quando existir consenso suficiente para orientar a evolução futura do projeto.

Este documento constitui a referência oficial para decisões arquiteturais do AEGIS.
``
