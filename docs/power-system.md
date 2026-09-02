# Power System

> AEGIS - Power Architecture

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir a arquitetura energética do AEGIS.

O sistema foi concebido para:

- operação contínua;
- carregamento autónomo;
- integração com Home Assistant;
- elevada modularidade;
- manutenção simplificada.

---

# Filosofia

O AEGIS utiliza uma única fonte energética principal.

Todos os subsistemas são alimentados a partir dessa fonte comum.

```text
Powerbank
    │
    ▼

Barramento 5V

    ├── RP2040
    ├── ESP32-S3
    ├── Sensores
    ├── Áudio
    ├── LEDs
    └── Motores
```

---

# Fonte Principal

## Powerbank

O powerbank constitui a bateria principal do sistema.

Funções:

- armazenamento de energia;
- fornecimento de alimentação;
- suporte ao carregamento autónomo.

---

## Requisitos Obrigatórios

O powerbank selecionado deverá suportar:

- pass-through charging;
- funcionamento durante carregamento;
- reinício automático da saída;
- alimentação estável a 5V.

Powerbanks que não cumpram estes requisitos são considerados incompatíveis com o projeto.

---

# Pass-Through Charging

## Definição

O sistema deverá continuar operacional enquanto o powerbank estiver a carregar.

Objetivo:

```text
Carregar
+
Continuar ligado
```

---

## Necessidade

Fundamental para:

- docking autónomo;
- monitorização da carga;
- atualizações OTA;
- integração Home Assistant;
- funcionamento contínuo.

---

# Arquitetura de Carregamento

## Configuração de Referência

```text

Base de Carga
      │
      ▼

Indução
      │
      ▼

USB-C
      │
      ▼

Powerbank
(pass-through)

      │
      ▼

Barramento 5V AEGIS

```

---

## Vantagens

- simplicidade;
- baixo custo;
- elevada disponibilidade;
- manutenção fácil.

---

# Distribuição Elétrica

## Barramento Principal

Tensão:

```text
5V
```

---

## Consumidores

### RP2040

Função:

- movimento
- sensores base

---

### ESP32-S3

Função:

- processamento principal
- áudio
- comunicações

---

### Sensores

Exemplos:

- MPU6050
- HC-SR04
- INMP441

---

### Sistema Áudio

Componentes:

- MAX98357A
- Altifalantes

---

### Sistema LED

Componentes:

- 5 × KY-009

---

### Driver de Motores

Estado:

Em avaliação.

Opções:

- TB6612FNG convencional;
- Grove Motor Driver I²C.

---

# Posicionamento do Powerbank

## Localização

Face inferior do Piso 2.

```text

Piso 2
═══════════════

Powerbank

═══════════════

Piso 1
```

---

## Justificação

- redução do centro de gravidade;
- libertação do Piso 2;
- simplificação da cablagem;
- melhor equilíbrio.

---

# Integração Grove Base

## Função

A Grove Base do XIAO inclui:

- carregamento de bateria 3.7V;
- gestão de energia local;
- LED de carregamento;
- LED de carga completa.

---

## Utilização no Projeto

A Grove Base não é a fonte energética principal.

Função prevista:

- alimentação local do XIAO;
- diagnóstico energético;
- monitorização de estado.

---

# Monitorização Futura

## Estados de Energia

Objetivos futuros:

```text
Charging

Battery Full

Docked

Undocked
```

---

## Integração Home Assistant

O sistema deverá publicar:

- estado de carga;
- estado da docking;
- disponibilidade energética.

---

# Sistema Solar

## Estado

Planeado.

Não faz parte da arquitetura inicial.

---

## Objetivo Futuro

Fornecer energia complementar.

Não substituirá o sistema principal baseado em powerbank.

---

# Segurança

## Requisitos

Quando a energia atingir níveis críticos:

- terminar patrulha;
- regressar à base;
- iniciar carregamento.

---

## Falha de Energia

Em caso de perda de alimentação:

- preservar integridade dos controladores;
- reiniciar automaticamente quando a energia regressar.

---

# Estado Atual

## Confirmado

- Powerbank será a fonte energética principal.
- Pass-through charging é obrigatório.
- Powerbank ficará suspenso sob o Piso 2.
- Arquitetura principal baseada em alimentação 5V.

---

## Em Avaliação

- Modelo final do powerbank.
- Sistema de docking definitivo.
- Estratégia de monitorização da carga.

---

# Referências

Documentos relacionados:

- dimensional-reference.md
- hardware-inventory.md
- project-decisions.md
- physical-layout.md
