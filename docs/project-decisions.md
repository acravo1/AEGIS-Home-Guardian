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

# PD-014

## Título

Motor Driver - TB6612FNG Convencional

## Estado

Accepted

## Data

2026-09-02

## Decisão

Utilizar TB6612FNG em modo convencional com ligações GPIO diretas.

## Justificação

Motivos da escolha:

- maior documentação disponível;
- compatibilidade comprovada com RP2040;
- simplicidade de implementação;
- menor custo;
- melhor integração com bibliotecas existentes.

## Alternativa Rejeitada

TB6612FNG Grove I²C:
- Menor documentação;
- Ainda em avaliação;
- Complexidade desnecessária;
- Reservado para futuras expansões.

## Impacto

- Pinout exato em gpio-allocation.md;
- Esquemático em firmware-protocol.md;
- Código firmware no repositório de firmware.

---

## PD-015

## Título

Hub I²C - Grove I²C Hub

## Estado

Accepted

## Data

2026-09-02

## Decisão

Utilizar Grove I²C Hub como expansor principal do barramento I²C.

## Justificação

Motivos da escolha:

- alinhado com filosofia modular do AEGIS;
- reduz complexidade de cablagem;
- compatibilidade automática com Grove;
- facilita futura expansão de sensores;
- melhor manutenibilidade.

## Alternativa Rejeitada

Bloco de terminais + Pigtails:
- Menos modular;
- Maior potencial de erros de ligação;
- Menos profissional;
- Reservado para futuros subsistemas críticos.

## Especificação

Modelo: Grove I²C Hub
Part Number: 103020006 (ou compatível)

Capacidade: 4 × I²C

Ocupação em Grove Shield: 1 porta I²C

## Impacto

- Simplificação do layout físico;
- Redução de cabos I²C em Piso 1;
- Facilita integração de MPU-6050, PCA9685, Grove Motor Driver.

---

---

# Regras

Uma decisão só deve aparecer neste documento quando existir consenso suficiente para orientar a evolução futura do projeto.

Este documento constitui a referência oficial para decisões arquiteturais do AEGIS.

---

# Glossário

## Terminologia de Pisos

Padronização oficial para referências a estrutura física:

### Piso 1 - Chassis Base (Movimento)

Também referido como:
- Piso 1
- Chassis Base
- Plataforma de Movimento
- Camada 1

Componentes:
- Chassis 4WD
- RP2040
- Motores e rodas
- Sensores de movimento (MPU-6050, HC-SR04)

---

### Piso 2 - Plataforma Principal (Inteligência)

Também referido como:
- Piso 2
- Plataforma Principal
- Camada 2
- Plataforma de Inteligência

Componentes:
- ESP32-S3
- Sistema de Áudio (MAX98357A, INMP441)
- Powerbank (energia)
- Distribuição elétrica

---

### Piso 3 - Plataforma Superior (Percepção)

Também referido como:
- Piso 3
- Plataforma Superior
- Camada 3
- Plataforma de Percepção

Componentes:
- LEDs RGB
- Câmara (futura)
- Microfones
- Altifalantes

---

## Nomenclatura Recomendada

Para novos documentos, usar:
```
"Piso 1 - Movimento"
"Piso 2 - Inteligência"
"Piso 3 - Percepção"
```

Evitar:
```
❌ "Chassis"
❌ "Top platform"
❌ "Middle layer"
```

---

``
