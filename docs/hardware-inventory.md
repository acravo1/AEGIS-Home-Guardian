# Hardware Inventory

> AEGIS - Hardware Inventory and Procurement Status

Versão: 1.0
Estado: Ativo

---

# Objetivo

Inventário oficial de hardware do projeto AEGIS.

Este documento representa a fonte oficial de verdade para:

- componentes adquiridos;
- componentes encomendados;
- componentes em avaliação;
- componentes ainda em falta.

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

- 260 × 155 × 65 mm

Notas:

Plataforma mecânica base do protótipo.

---

### Placa Acrílica Piso 2

Estado:
Adquirido

Características:

- Circular
- Acrílico transparente
- Ø300 mm

---

### Placa Acrílica Piso 3

Estado:
Adquirido

Características:

- Circular
- Acrílico transparente
- Ø300 mm

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
Adquirido

Características:

- Gestão bateria integrada
- Indicadores de carga
- I²C
- UART
- Grove Digital

Notas:

Possibilidade de utilização em formato integral ou reduzido.

---

### ESP32-S3

Estado:
Adquirido

Dimensões:

- 62.74 × 25.40 mm

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

3

Estado:
Adquirido

Função:

Captação áudio.

---

## Áudio

### MAX98357A

Quantidade:

3

Estado:
Adquirido

Função:

DAC I²S + Amplificador.

---

### Altifalantes

Quantidade:

2

Estado:
Adquirido

Função:

Reprodução áudio.

---

## Iluminação

### KY-009 RGB

Quantidade:

5

Estado:
Adquirido

Função:

Sistema LED.

---

## Cablagem

### Grove → Grove

Estado:
Adquirido

---

### Grove → Pigtail

Estado:
Adquirido

---

## Outros

### PCA9685

Estado:
Disponível

Origem:

Projeto ferroviário HO/OO.

Funções futuras possíveis:

- LEDs RGB
- Servos
- Animações

---

# Encomendado

## Espaçadores

### M2/M3 (a validar)

Estado:
Encomendado

Dimensões:

- 45 mm
- 50 mm

Objetivo:

Determinar altura ideal do Piso 2.

---

# Em Avaliação

## Grove I²C Hub

Estado:
Em avaliação

Alternativa:

Bloco de terminais + Grove Pigtail.

---

### Grove Motor Driver (TB6612FNG)

Estado:
Em avaliação

Vantagens:

- Grove nativo
- Ligações por parafuso
- Integração simplificada

---

# Em Falta

## Powerbank

Estado:
Por selecionar

Requisito obrigatório:

- Pass-through charging

---

## Sistema de Docking

Estado:
Futuro

---

## Sensores de Queda

Estado:
Planeado

Prioridade:
Baixa

Justificação:

Projeto público e arquitetura de segurança.

---

# Requisitos Arquiteturais

## Energia

O powerbank principal deverá obrigatoriamente suportar:

- Pass-through charging
- Alimentação contínua durante carregamento
- Operação simultânea carga/consumo

---

# Histórico

Este ficheiro deve ser atualizado sempre que:

- hardware é comprado;
- hardware é recebido;
- hardware é removido;
- hardware é substituído.

A informação neste documento tem prioridade sobre qualquer informação presente em conversas.
