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
