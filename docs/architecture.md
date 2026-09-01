## Arquitetura Global

```mermaid
flowchart TD

    HA["Home Assistant"]
    ESPHOME["ESPHome"]

    ESP["ESP32-S3<br/>Controlador Principal"]

    RP["XIAO RP2040<br/>Controlador de Movimento"]

    HA <---> ESPHOME
    ESPHOME <---> ESP

    ESP <-->|UART| RP

    RP --> TB["TB6612FNG"]
    RP --> MPU["MPU-6050"]
    RP --> HCSR["HC-SR04"]

    TB --> MOTOR["Motores"]
```
## Estrutura Física

```mermaid
flowchart TB

    subgraph P3["Piso 3 - Vigilância"]
        CAM["Câmara"]
        LIGHT["Foco LED"]
        EYES["Olhos LED"]
    end

    subgraph P2["Piso 2 - Inteligência"]
        ESP["ESP32-S3"]
        MIC["INMP441 x3"]
        AMP["PAM8302"]
        SPK["Altifalantes"]
    end

    subgraph P1["Piso 1 - Movimento"]
        RP["RP2040"]
        TB["TB6612FNG"]
        MPU["MPU-6050"]
        SONAR["HC-SR04"]
    end
```

## Fluxo de Controlo

```mermaid
sequenceDiagram

    participant HA as Home Assistant
    participant ESP as ESP32-S3
    participant RP as RP2040

    HA->>ESP: Ordem de patrulha
    ESP->>RP: Iniciar movimento
    RP->>RP: Controlo motores
    RP->>ESP: Telemetria
    ESP->>HA: Estado atualizado
```

## Arquitetura de Energia

```mermaid
flowchart LR

    SOLAR["Painel Solar"]
    SCH1["Díodo Schottky"]

    INDU["Carregamento por Indução"]
    SCH2["Díodo Schottky"]

    Y["Cabo USB em Y"]

    PB["Powerbank"]

    SOLAR --> SCH1
    SCH1 --> Y

    INDU --> SCH2
    SCH2 --> Y

    Y --> PB
```

### Isolamento das Fontes

O sistema utiliza dois díodos Schottky independentes:

- um para o painel solar;
- um para o carregamento por indução.

Os díodos impedem corrente inversa entre fontes e permitem que ambas alimentem o powerbank através do cabo USB em Y.

Objetivos:

- proteger os módulos de alimentação;
- impedir circulação de corrente entre fontes;
- permitir operação simultânea sem conflitos elétricos;
- preservar a modularidade do sistema energético.

## Arquitetura de Áudio

```mermaid
flowchart LR

    MIC1["INMP441 #1"]
    MIC2["INMP441 #2"]
    MIC3["INMP441 #3"]

    ESP["ESP32-S3"]

    AMP1["PAM8302 #1"]
    AMP2["PAM8302 #2"]

    SPK1["Altifalante #1"]
    SPK2["Altifalante #2"]

    MIC1 --> ESP
    MIC2 --> ESP
    MIC3 --> ESP

    ESP --> AMP1
    ESP --> AMP2

    AMP1 --> SPK1
    AMP2 --> SPK2
```

## Estratégia de Docking

```mermaid
flowchart TD

    PAT["Patrulha"]

    LOW["Bateria Baixa"]

    HOME["Regresso Aproximado"]

    IR["Procura de Sinal IR"]

    ALIGN["Alinhamento"]

    DOCK["Acoplamento"]

    CHARGE["Carregamento"]

    PAT --> LOW

    LOW --> HOME

    HOME --> IR

    IR --> ALIGN

    ALIGN --> DOCK

    DOCK --> CHARGE

    CHARGE --> PAT
```

## Roadmap Técnico

```mermaid
flowchart LR

    V1["Movimento"]

    V2["Docking"]

    V3["Home Assistant"]

    V4["Áudio"]

    V5["Visão"]

    V6["Solar"]

    V1 --> V2
    V2 --> V3
    V3 --> V4
    V4 --> V5
    V5 --> V6
```

## Estados Operacionais

```mermaid
stateDiagram-v2

    [*] --> Arranque

    Arranque --> Patrulha

    Patrulha --> Alerta

    Patrulha --> RegressoBase

    Alerta --> Patrulha

    RegressoBase --> Docking

    Docking --> Carregamento

    Carregamento --> Patrulha
```
