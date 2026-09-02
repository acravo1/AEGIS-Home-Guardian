# Physical Layout

> AEGIS - Physical Layout Reference

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir a organização física oficial do AEGIS.

Este documento descreve:

- distribuição dos pisos;
- localização dos componentes;
- organização da cablagem;
- ocupação prevista das plataformas.

As dimensões oficiais encontram-se em:

```text
docs/dimensional-reference.md
```

---

# Arquitetura Física

O AEGIS utiliza uma arquitetura modular organizada por níveis.

```text

Piso 3
Perceção

Piso 2
Controlo Superior e Energia

Piso 1
Movimento e Sensores Locais

```

---

# Piso 1

## Estrutura

Componentes instalados no chassis original.

Função principal:

```text
Movimento
Navegação local
Sensores base
```

---

## Componentes

### RP2040

Função:

Controlo de movimento.

---

### Grove Base para XIAO

Função:

Expansão de interfaces.

Interfaces principais:

- I²C
- UART
- Grove Digital

---

### MPU-6050

Posição prevista:

Centro do robô.

Objetivo:

- IMU
- orientação
- aceleração

---

### HC-SR04

Posição prevista:

Frente do robô.

Objetivo:

Deteção de obstáculos.

---

### Driver de Motores

Estado:

Em avaliação.

Opções:

- TB6612FNG convencional
- Grove Motor Driver I²C

---

# Piso 2

## Estrutura

Plataforma circular.

Características:

```text
Acrílico transparente
Ø300 mm
```

---

## Espaçamento

Distância ao Piso 1:

```text
30 mm
```

Estado:

Validado fisicamente.

Observações:

- Rodas totalmente livres.
- Espaço suficiente para integração.
- Perfil compacto.

---

## Utilização

Função principal:

```text
Energia
Processamento principal
Distribuição
```

---

## Componentes Planeados

### ESP32-S3

Função:

Controlador principal.

---

### Distribuição de Energia

Função:

Distribuição de:

- 5V
- GND

---

### Áudio

Componentes previstos:

- MAX98357A

---

# Powerbank

## Localização

Face inferior do Piso 2.

```text

Piso 2
════════════

Powerbank
(suspenso)

════════════

Piso 1

```

---

## Objetivos

- redução do centro de gravidade;
- libertação da superfície superior;
- simplificação de cablagem.

---

# Piso 3

## Estrutura

Plataforma circular.

Características:

```text
Acrílico transparente
Ø300 mm
```

---

## Espaçamento

Distância ao Piso 2:

```text
30 mm
```

Estado:

Configuração de referência.

---

## Utilização

Função principal:

```text
Perceção
Vigilância
Interação
```

---

## Componentes Planeados

### Câmara

Posição:

Frente superior.

---

### INMP441

Quantidade:

3

Distribuição prevista:

- Frente
- Esquerda
- Direita

---

### LEDs RGB

Hardware:

```text
5 × KY-009
```

Funções:

- feedback visual;
- iluminação da saia;
- estados do sistema.

---

# Cablagem

## Filosofia

Sempre que possível utilizar:

```text
Grove
```

em vez de:

```text
Cablagem individual
```

---

## I²C

Dispositivos previstos:

- MPU6050
- Motor Driver I²C (se selecionado)
- PCA9685 (futuro)

Distribuição:

- Grove I²C Hub
ou
- bloco de terminais + pigtail

---

## UART

Reserva:

```text
RP2040 ↔ ESP32-S3
```

---

# Montagem Inicial

A fase inicial utilizará:

- fita dupla-face;
- abraçadeiras;
- fixação temporária.

Objetivo:

Validar:

- posicionamento;
- cablagem;
- acessibilidade;
- manutenção.

Apenas após validação serão criadas fixações definitivas.

---

# Geometria Atual de Referência

```text

Piso 3
Ø300 mm

      ▲
      │
      │ 30 mm
      ▼

Piso 2
Ø300 mm

      ▲
      │
      │ 30 mm
      ▼

Piso 1
260 × 155 × 65 mm

```

---

# Estado

## Validado

- Chassis 260 × 155 × 65 mm
- Rodas Ø70 mm
- Piso 2 Ø300 mm
- Piso 3 Ø300 mm
- Espaçamento Piso 1 → Piso 2 = 30 mm

---

## Em Evolução

- Espaçamento definitivo Piso 2 → Piso 3
- Driver de motores final
- Distribuição elétrica definitiva
- Sistema de docking
