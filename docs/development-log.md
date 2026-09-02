# Development Log

> AEGIS - Development History and Engineering Decisions

Versão: 1.0
Estado: Ativo

---

# Objetivo

Este documento serve como diário oficial do projeto AEGIS.

Devem ser registados:

- decisões técnicas;
- revisões de arquitetura;
- testes realizados;
- alterações mecânicas;
- alterações de firmware;
- problemas encontrados;
- ideias aprovadas ou rejeitadas.

---

# Filosofia

O objetivo deste documento é preservar contexto.

Uma decisão tomada hoje poderá ser importante meses ou anos mais tarde.

Sempre que uma decisão relevante for tomada:

1. Registar neste documento.
2. Atualizar a documentação correspondente.
3. Atualizar o project_state.md se necessário.

---

# Formato

Cada entrada deve seguir o formato:

```markdown
## DATA

### Tipo

Arquitetura
Hardware
Software
Mecânica
Energia
Docking
Áudio
Vídeo
Segurança

### Alteração

Descrição.

### Motivo

Justificação.

### Impacto

Consequências.
```

---

# Histórico

---

## 2026-08-31

### Tipo

Arquitetura

### Alteração

Definida arquitetura de dois controladores:

- XIAO RP2040
- ESP32-S3

### Motivo

Separar movimento de processamento avançado.

### Impacto

Arquitetura principal aprovada.

---

## 2026-08-31

### Tipo

Arquitetura

### Alteração

Definida organização do robô por pisos.

### Estrutura

- Piso 1 → Movimento
- Piso 2 → Inteligência
- Piso 3 → Vigilância

### Impacto

Base para toda a arquitetura mecânica.

---

## 2026-08-31

### Tipo

Hardware

### Alteração

Selecionado TB6612FNG como driver principal.

### Substitui

L298N

### Motivo

- maior eficiência
- menor aquecimento
- menor queda de tensão

### Impacto

Atualização da documentação de movimento.

---

## 2026-08-31

### Tipo

Sensores

### Alteração

Confirmada utilização de:

- MPU-6050
- HC-SR04

### Impacto

Definida primeira fase da plataforma motora.

---

## 2026-08-31

### Tipo

Áudio

### Alteração

Definida utilização de:

- 3 × INMP441
- 2 × PAM8302
- 2 × Altifalantes 3W

### Impacto

Arquitetura áudio aprovada.

---

## 2026-08-31

### Tipo

Iluminação

### Alteração

Definida utilização de:

- 5 × KY-009 RGB

### Objetivo

- iluminação ambiente
- indicadores de estado

---

## 2026-08-31

### Tipo

Mecânica

### Alteração

Aprovada utilização de saia translúcida.

### Objetivos

- ocultar cablagem
- proteger componentes
- difundir iluminação RGB

---

## 2026-08-31

### Tipo

Energia

### Alteração

Integração do painel solar adiada.

### Motivo

Necessidade de validar primeiro:

- movimento
- docking
- carregamento

### Impacto

Painel solar movido para fase avançada.

---

## 2026-08-31

### Tipo

Energia

### Alteração

Definida arquitetura com:

- carregamento por indução
- painel solar
- cabo USB em Y
- isolamento por díodos Schottky

### Impacto

Base da arquitetura energética futura.

---

## 2026-09-01

### Tipo

Projeto

### Alteração

Criado repositório GitHub.

### Nome

AEGIS-Home-Guardian

### Impacto

Início da documentação pública do projeto.

---

## 2026-09-01

### Tipo

Documentação

### Alteração

Criados documentos base:

- README.md
- architecture.md
- project_state.md

### Impacto

Definida documentação fundamental.

---

## 2026-09-01

### Tipo

Documentação

### Alteração

Iniciada migração dos diagramas ASCII para Mermaid.

### Motivo

Melhor integração GitHub.

### Impacto

Arquitetura gráfica modernizada.

---

## 2026-09-01

### Tipo

Energia

### Alteração

Correção da documentação.

### Situação Anterior

Referência incorreta a díodos Zener.

### Situação Atual

Díodos Schottky.

### Motivo

Os Schottky serão utilizados para impedir retorno de corrente entre:

- indução
- painel solar

### Impacto

Atualização da documentação energética.

---

# Próximas Entradas

As próximas alterações deverão ser registadas nesta secção.

---

## Template

```markdown
## AAAA-MM-DD

### Tipo

### Alteração

### Motivo

### Impacto
```

---

# Estatísticas do Projeto

## Documentação

Documentos criados:

- README.md
- architecture.md
- project_state.md
- bom.md
- gpio-allocation.md
- motor-platform.md
- power-system.md
- sensors.md
- docking-system.md
- audio-system.md
- camera-system.md
- communication-system.md
- software-roadmap.md
- firmware-protocol.md
- security-and-failsafe.md
- physical-layout.md
- mechanical-design.md
- development-log.md

---

# Regra de Ouro

Nenhuma decisão relevante deve existir apenas em conversas.

Toda a decisão que altere:

- hardware;
- firmware;
- arquitetura;
- energia;
- docking;
- segurança;

deve ser registada neste documento.

Este ficheiro é considerado a memória histórica oficial do projeto AEGIS.

# 2026

## 2026-09-01

### Mecânica

#### Dimensões oficiais confirmadas

Confirmadas as seguintes dimensões:

- Chassis base: 260 × 155 × 65 mm
- Rodas: Ø70 mm
- Piso 2: Ø300 mm
- Piso 3: Ø300 mm

Impacto:

Criação do documento dimensional-reference.md.

Referência:

- PD-003

---

#### Altura do Piso 2

Identificada necessidade de validação física dos separadores.

Opções em estudo:

- 45 mm
- 50 mm

Estado:

Em validação.

Impacto:

Afeta a altura final da estrutura e o espaço interno disponível.

Referência:

- PD-013

---

#### Powerbank

Definida localização preferencial.

Posição:

Face inferior do Piso 2.

Objetivos:

- reduzir centro de gravidade;
- libertar área útil;
- simplificar cablagem.

Referência:

- PD-006

---

### Hardware

#### Expansion Board Grove

Validação técnica concluída.

Funcionalidades confirmadas:

- I²C
- UART
- Grove Digital
- Gestão de bateria integrada
- Indicadores de carga
- Modo destacável (25 × 39 mm após separação)

Impacto:

Atualização futura do gpio-allocation.md.

---

#### ESP32-S3

Dimensões físicas confirmadas.

Dimensões:

- 62.74 × 25.40 mm

Impacto:

Validação da integração física no Piso 2.

---

### Áudio

#### Aquisição de hardware

Confirmado hardware áudio disponível:

- 3 × INMP441
- 3 × MAX98357A
- 2 × Altifalantes

Impacto:

Subsistema áudio considerado praticamente completo ao nível de hardware.

Referência:

- PD-012

---

### Iluminação

#### Aquisição de hardware

Confirmada disponibilidade de:

- 5 × KY-009 RGB

Impacto:

Hardware necessário para implementação da iluminação ambiental disponível.

Referência:

- PD-011

---

### Energia

#### Arquitetura energética

Definido o powerbank como fonte energética principal.

Impacto:

Simplificação da arquitetura de alimentação.

Referência:

- PD-004

---

#### Pass-through Charging

Definido como requisito obrigatório.

Todos os powerbanks considerados para utilização no AEGIS deverão suportar:

- carregamento durante utilização;
- alimentação contínua.

Impacto:

Fundamental para docking e carregamento autónomo.

Referência:

- PD-005

---

### Integração

#### Home Assistant

Confirmada estratégia de integração nativa com Home Assistant.

Observações:

- existência de repositório dedicado Home-Assistant;
- existência de dois Roomba i1 integrados;
- possibilidade futura de reutilização de informação de mapas e telemetria.

Estado:

Investigação futura.

Referência:

- PD-008

---

### I²C

#### Estratégia de expansão

Identificadas duas abordagens possíveis:

Opção A:

- Grove I²C Hub

Opção B:

- Bloco de terminais
- Cabos Grove-Pigtail

Estado:

Em avaliação.

Referência:

- PD-015

---

### Montagem

#### Estratégia de prototipagem

A fase inicial utilizará:

- fita dupla-face;
- abraçadeiras;
- fixações temporárias.

Objetivo:

Validar layout e posicionamento antes da criação de suportes definitivos.

Referência:

- PD-007
