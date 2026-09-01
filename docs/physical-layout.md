# Physical Layout

> AEGIS - Physical Architecture and Component Placement

Versão: 1.0
Estado: Arquitetura Definida

---

# Objetivo

Este documento descreve a organização física do AEGIS.

Define:

- distribuição dos componentes;
- estrutura por pisos;
- posicionamento dos sensores;
- zonas de manutenção;
- passagem de cablagem;
- espaço reservado para expansões futuras.

---

# Filosofia

O AEGIS foi concebido segundo uma arquitetura modular.

Cada piso possui uma responsabilidade específica:

| Piso | Função |
|--------|--------|
| Piso 1 | Movimento |
| Piso 2 | Inteligência |
| Piso 3 | Vigilância e Interação |

Esta abordagem permite:

- montagem faseada;
- manutenção simplificada;
- expansão futura;
- substituição de módulos.

---

# Vista Geral

```mermaid
flowchart TB

    subgraph P3["Piso 3 - Vigilância"]
        CAM["Câmara"]
        LIGHT["Foco LED"]
        EYES["Olhos LED"]
    end

    subgraph P2["Piso 2 - Inteligência"]
        ESP["ESP32-S3"]
        AUDIO["Áudio"]
        POWER["Gestão Energia"]
    end

    subgraph P1["Piso 1 - Movimento"]
        RP["RP2040"]
        TB["TB6612FNG"]
        MPU["MPU-6050"]
        SONAR["HC-SR04"]
    end
```

---

# Piso 1 - Movimento

## Objetivo

Controlo da locomoção.

---

## Componentes

```mermaid
flowchart TB

    RP["RP2040"]

    TB["TB6612FNG"]

    MPU["MPU-6050"]

    SONAR["HC-SR04"]

    RP --> TB

    MPU --> RP

    SONAR --> RP
```

---

## Posicionamento

### Frente

- HC-SR04

### Centro

- RP2040
- TB6612FNG

### Centro geométrico

- MPU-6050

---

## Justificação

O MPU-6050 deverá ficar o mais próximo possível do centro do robô para reduzir erros causados por vibrações e rotações.

---

# Piso 2 - Inteligência

## Objetivo

Executar:

- ESPHome
- comunicação
- áudio
- coordenação geral

---

## Componentes

```mermaid
flowchart LR

    ESP["ESP32-S3"]

    MIC["INMP441"]

    AMP["PAM8302"]

    ESP --> AMP

    MIC --> ESP
```

---

## Posicionamento

### Centro

- ESP32-S3

### Periferia

- Microfones

### Laterais

- Amplificadores

---

# Piso 3 - Vigilância

## Objetivo

Sistema visual e interação.

---

## Componentes

```mermaid
flowchart TB

    CAM["Câmara"]

    EYES["Olhos"]

    LIGHT["Foco LED"]
```

---

## Posicionamento

### Frente

- Câmara

### Lados da câmara

- Olhos LED

### Inferior

- Foco LED

---

## Representação Conceptual

```text
      Olho      Olho

         Câmara

          Foco
```

---

# Sistema de Áudio

## Disposição dos Microfones

```mermaid
flowchart TB

    M1["Frontal"]

    M2["Esquerda"]
    M3["Direita"]

    M1 --- M2
    M1 --- M3
```

---

## Objetivos

- cobertura sonora uniforme;
- localização aproximada da origem do som;
- redução de zonas mortas.

---

# Sistema de Iluminação

## RGB Ambiental

Os LEDs RGB devem iluminar a estrutura de forma indireta.

---

## Posição Prevista

```mermaid
flowchart LR

    RGB1["RGB"]

    RGB2["RGB"]

    RGB3["RGB"]

    RGB4["RGB"]

    RGB5["RGB"]
```

Distribuição:

- frente;
- traseira;
- laterais.

---

# Saia Translúcida

## Objetivo

- ocultar cablagem;
- proteger componentes;
- difundir iluminação RGB;
- melhorar acabamento visual.

---

## Cobertura

A saia deverá envolver:

- Piso 1
- Piso 2

até aproximadamente ao nível dos eixos das rodas.

---

## Aberturas Previstas

### Obrigatórias

- HC-SR04

---

### Possíveis

- Microfones
- Altifalantes
- Sensores IR de docking

---

# Sistema de Energia

## Componentes

```mermaid
flowchart TB

    POWERBANK["Powerbank"]

    INDU["Indução"]

    SOLAR["Painel Solar"]
```

---

## Posicionamento

### Centro Inferior

- Powerbank

### Próximo da base

- Receptor de indução

### Piso superior (futuro)

- Painel solar

---

# Sistema de Docking

## Sensores

### Atual

- HC-SR04

### Futuro

- IR
- Câmara

---

## Posição Prevista

```mermaid
flowchart LR

    IRL["IR Esquerda"]

    SONAR["HC-SR04"]

    IRR["IR Direita"]
```

---

# Cablagem

## Princípios

- cabos separados por subsistema;
- evitar passagem sobre motores;
- minimizar cruzamentos;
- facilitar desmontagem.

---

## Percurso Principal

```mermaid
flowchart TD

    P1["Piso 1"]

    P2["Piso 2"]

    P3["Piso 3"]

    P1 --> P2

    P2 --> P3
```

---

# Zonas de Manutenção

## Acesso Frequente

- Powerbank
- ESP32-S3
- RP2040

---

## Acesso Ocasional

- PAM8302
- Cablagem

---

## Acesso Raro

- Motores
- Sistema de indução

---

# Espaço Reservado

## Futuras Expansões

- Encoders
- Marcadores visuais
- Sensores ambientais
- Monitorização energética
- Módulos adicionais de comunicação

---

# Critérios de Validação

A arquitetura física será considerada validada quando:

- [ ] Todos os componentes cabem sem interferências mecânicas.
- [ ] A manutenção é possível sem desmontagem total.
- [ ] O centro de gravidade permanece estável.
- [ ] Não existem conflitos entre sensores.
- [ ] A cablagem é organizada e acessível.
- [ ] A saia translúcida pode ser removida facilmente.

---

# Notas de Projeto

A organização física do AEGIS segue o princípio:

- movimento em baixo;
- inteligência ao centro;
- perceção no topo.

Esta distribuição melhora:

- estabilidade;
- manutenção;
- modularidade;
- capacidade de evolução futura.

Qualquer alteração estrutural deverá atualizar este documento antes de ser implementada no hardware.
