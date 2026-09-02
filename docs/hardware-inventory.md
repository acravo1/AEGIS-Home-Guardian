# Hardware Inventory

> AEGIS - Hardware Inventory and Procurement Status

Versão: 2.0
Estado: Ativo

---

# Objetivo

Inventário oficial de hardware do projeto AEGIS.

Este documento representa a fonte oficial de verdade para:

- componentes adquiridos;
- componentes disponíveis;
- componentes em avaliação;
- componentes planeados;
- componentes em falta.

---

# Adquirido

## Estrutura

### Chassis Base

Estado:

Adquirido

Descrição:

- Chassis 4WD em acrílico
- 4 motores DC
- 4 rodas

Dimensões:

```text
260 × 155 × 65 mm
```

Função:

Plataforma mecânica principal.

---

### Piso 2

Estado:

Adquirido

Material:

```text
Acrílico transparente
```

Dimensões:

```text
Ø300 mm
```

---

### Piso 3

Estado:

Adquirido

Material:

```text
Acrílico transparente
```

Dimensões:

```text
Ø300 mm
```

---

### Espaçadores

Estado:

Disponíveis

Configuração atualmente validada:

```text
30 mm
```

Observações:

Utilizados entre:

- Piso 1 ↔ Piso 2

A mesma configuração é candidata para:

- Piso 2 ↔ Piso 3

---

## Movimento

### Motores DC

Quantidade:

```text
4
```

Estado:

Adquirido

Incluídos no chassis.

---

### Rodas

Quantidade:

```text
4
```

Estado:

Adquiridas

Características:

```text
Ø70 mm

Largura 30 mm
```

---

## Controladores

### Seeed XIAO RP2040

Estado:

Adquirido

Função:

Controlador de movimento.

---

### Grove Base for XIAO

Estado:

Adquirida

Características:

- I²C
- UART
- Grove Digital
- Gestão de bateria
- Indicadores de carga

Função:

Expansão do RP2040.

---

### ESP32-S3

Estado:

Adquirido

Dimensões:

```text
62.74 × 25.40 mm
```

Função:

Controlador principal.

---

## Sensores

### MPU-6050

Estado:

Adquirido

Função:

IMU.

---

### HC-SR04

Estado:

Adquirido

Função:

Deteção de obstáculos.

---

### INMP441

Quantidade:

```text
3
```

Estado:

Adquirido

Função:

Microfones I²S.

---

## Áudio

### MAX98357A

Quantidade:

```text
3
```

Estado:

Adquirido

Função:

DAC I²S e amplificação áudio.

---

### Altifalantes

Quantidade:

```text
2
```

Estado:

Adquiridos

Função:

Reprodução áudio.

---

## Iluminação

### KY-009 RGB

Quantidade:

```text
5
```

Estado:

Adquiridos

Função:

Sistema de iluminação RGB.

---

## Cablagem

### Grove → Grove

Estado:

Disponível

---

### Grove → Pigtail

Estado:

Disponível

---

## Distribuição

### Blocos de Terminais

Estado:

Disponíveis

Função prevista:

- distribuição elétrica;
- distribuição I²C;
- prototipagem.

---

## Expansão

### PCA9685

Quantidade:

```text
1
```

Estado:

Disponível

Características:

```text
16 canais PWM
12 bits
I²C
```

Origem:

Projeto ferroviário HO/OO.

Possíveis utilizações futuras:

- LEDs;
- servos;
- animações;
- expansão PWM.

---

# Em Avaliação

## Driver de Motores

### Opção A

TB6612FNG convencional

Estado:

Em avaliação.

---

### Opção B

Seeed Grove I²C Motor Driver (TB6612FNG)

Estado:

Em avaliação.

Vantagens:

- Grove nativo;
- conectores de parafuso;
- menor cablagem.

---

## Expansão I²C

### Opção A

Grove I²C Hub

Estado:

Em avaliação.

---

### Opção B

Bloco de terminais

+
Cabos Grove-Pigtail

Estado:

Em avaliação.

Atualmente considerada a solução mais provável.

---

# Planeado

## Câmara

Estado:

Planeada

Função:

- vigilância;
- streaming;
- snapshots.

---

## Sensores de Docking

Estado:

Planeados

Função:

- aproximar da base;
- alinhamento;
- carregamento.

---

## Sensores de Queda

Estado:

Planeados

Função:

- deteção de escadas;
- proteção anti-queda.

---

## Saia Translúcida

Estado:

Planeada

Função:

- difusão RGB;
- ocultação de cablagem;
- melhoria estética.

---

# Em Falta

## Powerbank

Estado:

Por selecionar

Requisitos obrigatórios:

```text
Pass-through charging

Operação durante carregamento

5V estável
```

Função:

Fonte energética principal do AEGIS.

---

## Sistema de Docking

Estado:

Em desenvolvimento

Alternativas em estudo:

- indução;
- contactos elétricos;
- compatibilidade experimental com docking Roomba.

---

# Hardware de Referência

## Chassis

Referência utilizada no protótipo:

```text
Amazon B0CH4G35X8
```

Estado:

Referência mecânica.

---

## LEDs

Referência:

```text
KY-009 RGB
```

---

## Áudio

Referências:

```text
INMP441

MAX98357A

Altifalantes 3W
```

---

# Home Assistant

## Equipamento Externo Relevante

### Roomba i1

Quantidade:

```text
2
```

Estado:

Integrados no Home Assistant.

Função futura:

Possível reutilização de:

- telemetria;
- zonas;
- mapas;
- docking.

---

# Estado Geral

## Adquirido

✅ Estrutura principal

✅ Controladores

✅ Sensores V1

✅ Sistema áudio

✅ Sistema LED

✅ Cablagem Grove

---

## Principal Componente em Falta

🔲 Powerbank compatível com pass-through charging

---

# Regras

Sempre que um componente for:

- adquirido;
- removido;
- substituído;
- descartado;

este documento deverá ser atualizado.

Este documento tem prioridade sobre qualquer informação presente em conversas.

---

# Documentos Relacionados

- dimensional-reference.md
- project-decisions.md
- physical-layout.md
- mechanical-design.md
- power-system.md
