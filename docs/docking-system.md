# Docking System

> AEGIS - Autonomous Docking and Charging System

Versão: 2.0
Estado: Arquitetura Definida

---

# Objetivo

Permitir que o AEGIS:

- monitorize o estado da bateria;
- determine autonomamente quando regressar à base;
- localize a estação de carregamento;
- execute aproximação controlada;
- alinhe corretamente o sistema de carregamento;
- confirme o início da carga.

O sistema deverá funcionar sem intervenção humana.

---

# Filosofia

A estratégia de docking deverá utilizar múltiplas tecnologias complementares.

Nenhum sensor é responsável sozinho pela operação completa.

```mermaid
flowchart LR

    BAT["Bateria"]
    NAV["Navegação"]
    IR["Docking IR"]
    SONAR["HC-SR04"]
    CAM["Câmara (Futuro)"]
    CHARGE["Carregamento"]

    BAT --> NAV
    NAV --> IR
    IR --> SONAR
    SONAR --> CAM
    CAM --> CHARGE
```

---

# Arquitetura Geral

```mermaid
flowchart TD

    ROBOT["AEGIS"]

    BASE["Docking Station"]

    IRTX["Emissor IR"]
    IRRX["Recetor IR"]

    SONAR["HC-SR04"]

    INDU["Carregamento por Indução"]

    BASE --> IRTX

    IRTX -.-> IRRX

    IRRX --> ROBOT

    SONAR --> ROBOT

    ROBOT --> INDU
```

---

# Processo de Docking

O processo completo encontra-se dividido em várias fases.

```mermaid
flowchart LR

    A["Patrulha"]
    B["Bateria Baixa"]
    C["Regresso Aproximado"]
    D["Procura da Base"]
    E["Aproximação"]
    F["Alinhamento"]
    G["Carga"]

    A --> B
    B --> C
    C --> D
    D --> E
    E --> F
    F --> G
```

---

# Fase 1 - Deteção de Bateria Baixa

## Objetivo

Determinar quando interromper missões e iniciar o regresso.

---

## Critérios

Possíveis limiares:

| Estado | Valor |
|----------|----------|
| Aviso | < 30% |
| Retorno | < 25% |
| Crítico | < 15% |

Valores serão ajustados após testes.

---

# Fase 2 - Regresso Aproximado

## Sensores

### Atual

- MPU-6050

### Futuro

- Encoders

---

## Objetivo

Levar o robô para a área onde a base se encontra.

```mermaid
flowchart LR

    IMU["MPU-6050"]

    NAV["Navegação"]

    HOME["Zona da Base"]

    IMU --> NAV

    NAV --> HOME
```

---

# Fase 3 - Procura da Base

## Tecnologia

Sinal infravermelho.

A estação de carga atua como farol.

---

## Componentes da Base

| Componente | Função |
|------------|------------|
| Emissor IR | Guiar o robô |
| Indicador LED | Diagnóstico |
| Módulo de alimentação | Alimentação da base |

---

## Estratégia

```mermaid
flowchart TD

    SEARCH["Procura"]

    LEFT["Varredura Esquerda"]

    RIGHT["Varredura Direita"]

    FOUND["Base Encontrada"]

    SEARCH --> LEFT
    SEARCH --> RIGHT

    LEFT --> FOUND
    RIGHT --> FOUND
```

---

# Fase 4 - Aproximação

## Objetivo

Atingir a zona de acoplamento.

---

## Sensores

- Recetores IR

---

## Estratégia

```mermaid
flowchart LR

    IRL["IR Esquerda"]

    IRR["IR Direita"]

    CTRL["Correção de Direção"]

    IRL --> CTRL
    IRR --> CTRL
```

---

## Comportamento

| Situação | Ação |
|-----------|-----------|
| Sinais equilibrados | Avançar |
| Esquerda dominante | Corrigir esquerda |
| Direita dominante | Corrigir direita |

---

# Fase 5 - Alinhamento Final

## Objetivo

Posicionar o robô corretamente sobre a estação.

---

## Sensores

### Atual

- HC-SR04

### Futuro

- Câmara

---

## Fluxo

```mermaid
flowchart LR

    IR["Posição Aproximada"]

    SONAR["Distância"]

    ALIGN["Alinhamento"]

    IR --> ALIGN

    SONAR --> ALIGN
```

---

# Fase 6 - Início de Carga

## Objetivo

Confirmar que o carregamento começou com sucesso.

---

## Fluxo

```mermaid
flowchart TD

    DOCK["Posicionado"]

    POWER["Receber Energia"]

    VERIFY["Confirmar Carga"]

    DOCK --> POWER

    POWER --> VERIFY
```

---

# Estação de Carga

## Arquitetura

```mermaid
flowchart TB

    PSU["Alimentação"]

    IR["Emissor IR"]

    COIL["Bobina de Indução"]

    PSU --> IR

    PSU --> COIL
```

---

# Evolução Futura

## Encoders

Objetivo:

- melhorar odometria;
- melhorar regresso aproximado.

---

## Câmara

Objetivo:

- alinhamento visual;
- validação da posição da estação.

---

## Marcadores Visuais

Tecnologias possíveis:

- ArUco Marker
- QR Code
- Marcador personalizado

---

## Visão Computacional

```mermaid
flowchart LR

    CAM["Câmara"]

    MARKER["Marcador"]

    ALIGN["Alinhamento"]

    CAM --> MARKER

    MARKER --> ALIGN
```

---

# Cenário Final

```mermaid
flowchart TD

    BAT["Bateria Baixa"]

    HOME["Regresso"]

    IR["Deteção IR"]

    SONAR["Alinhamento HC-SR04"]

    CAM["Validação Visual"]

    CHARGE["Carregamento"]

    BAT --> HOME
    HOME --> IR
    IR --> SONAR
    SONAR --> CAM
    CAM --> CHARGE
```

---

# Critérios de Sucesso

O sistema será considerado concluído quando:

- [ ] O robô identifica bateria baixa.
- [ ] O robô regressa autonomamente.
- [ ] A base é encontrada sem intervenção humana.
- [ ] O alinhamento é consistente.
- [ ] O carregamento inicia corretamente.
- [ ] O sistema funciona repetidamente e de forma fiável.

---

# Notas de Projeto

O sistema de docking do AEGIS inspira-se em soluções utilizadas por robôs domésticos autónomos, mas foi concebido para:

- utilizar sensores acessíveis;
- integrar-se com Home Assistant;
- evoluir modularmente;
- permitir melhorias futuras sem alterações estruturais profundas.

A arquitetura prevê desde o início a coexistência de:

- navegação inercial;
- navegação por IR;
- ultrassom;
- visão computacional.

Esta combinação deverá proporcionar elevada fiabilidade na localização da estação de carregamento.
``
