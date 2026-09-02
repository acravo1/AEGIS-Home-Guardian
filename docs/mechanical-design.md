# Mechanical Design

> AEGIS - Mechanical Architecture

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir a arquitetura mecânica oficial do AEGIS.

Este documento descreve:

- estrutura;
- organização física;
- componentes mecânicos;
- critérios de construção;
- expansão futura.

As dimensões oficiais encontram-se em:

```text
docs/dimensional-reference.md
```

---

# Filosofia

O AEGIS utiliza uma arquitetura modular por níveis.

Objetivos:

- manutenção simples;
- expansão futura;
- reutilização de hardware;
- montagem acessível;
- modularidade.

---

# Estrutura Geral

```text

        Piso 3
      Perceção

          ▲
          │ 30 mm
          ▼

        Piso 2
  Energia e Processamento

          ▲
          │ 30 mm
          ▼

        Piso 1
 Movimento e Sensores

```

---

# Piso 1

## Plataforma Base

Descrição:

Chassis acrílico de quatro rodas.

Características:

- 4 motores DC
- 4 rodas
- plataforma motora

Dimensões:

```text
260 × 155 × 65 mm
```

---

## Funções

- movimento;
- navegação básica;
- sensores locais;
- suporte estrutural.

---

## Componentes

- RP2040
- Grove Base
- MPU6050
- HC-SR04
- Driver de motores

---

# Piso 2

## Estrutura

Disco acrílico transparente.

Dimensões:

```text
Ø300 mm
```

---

## Função

- energia;
- processamento principal;
- distribuição elétrica.

---

## Espaçamento

Distância ao Piso 1:

```text
30 mm
```

Estado:

Validado fisicamente.

---

## Componentes Planeados

- ESP32-S3
- MAX98357A
- distribuição de energia

---

## Powerbank

### Localização

Face inferior do Piso 2.

```text

 Piso 2
═══════════════

 Powerbank

═══════════════

 Piso 1

```

---

### Vantagens

- centro de gravidade reduzido;
- maior área útil;
- cablagem simplificada.

---

# Piso 3

## Estrutura

Disco acrílico transparente.

Dimensões:

```text
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

## Função

- vigilância;
- comunicação;
- interação.

---

## Componentes Planeados

- câmara;
- microfones;
- LEDs;
- sensores futuros.

---

# Rodas

## Especificações

```text
Diâmetro : 70 mm

Raio : 35 mm

Largura : 30 mm
```

---

## Configuração

```text
4 rodas

2 esquerda

2 direita
```

---

# Materiais

## Chassis

Material:

```text
Acrílico
```

---

## Piso 2

Material:

```text
Acrílico transparente
```

---

## Piso 3

Material:

```text
Acrílico transparente
```

---

## Estrutura Vertical

Material:

```text
Espaçadores metálicos
```

---

# Transparência

A transparência dos materiais faz parte da identidade visual do projeto.

Objetivos:

- exibir eletrónica;
- facilitar manutenção;
- melhorar iluminação interna.

---

# Saia Translúcida

## Estado

Planeada.

---

## Localização

Entre:

```text
Piso 2
+
Piso 3
```

---

## Limite Inferior

Aproximadamente:

```text
Eixo das rodas
```

---

## Objetivos

- ocultar cablagem;
- difundir iluminação;
- melhorar estética.

---

# Centro de Gravidade

## Estratégia

Manter os componentes mais pesados o mais baixo possível.

---

## Componentes Críticos

### Powerbank

Prioridade:

Máxima.

Localização:

```text
Face inferior do Piso 2
```

---

### Motores

Localização:

```text
Piso 1
```

---

# Estratégia de Montagem

## Fase Inicial

Montagem provisória.

Métodos:

- fita dupla-face;
- abraçadeiras;
- fixação temporária.

---

## Fase Final

Suportes dedicados poderão ser desenvolvidos após validação física.

---

# Compatibilidade

A arquitetura foi concebida para permitir:

- substituição de sensores;
- substituição de controladores;
- integração de módulos adicionais;
- expansão futura.

---

# Estado Atual

## Validado

✅ Chassis 260 × 155 × 65 mm

✅ Rodas Ø70 mm

✅ Piso 2 Ø300 mm

✅ Piso 3 Ø300 mm

✅ Espaçamento Piso 1 → Piso 2 = 30 mm

✅ Configuração física montada

---

## Em Evolução

- Espaçamento definitivo Piso 2 → Piso 3
- Sistema de docking
- Posicionamento definitivo dos sensores
- Suportes finais

---

# Referências

Documentos relacionados:

- dimensional-reference.md
- physical-layout.md
- hardware-inventory.md
- project-decisions.md
- power-system.md
