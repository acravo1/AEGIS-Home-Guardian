# Dimensional Reference

> AEGIS - Official Mechanical Dimensions

Versão: 1.0
Estado: Ativo

---

# Objetivo

Este documento contém as dimensões oficiais utilizadas no projeto AEGIS.

Sempre que existam conflitos entre desenhos conceptuais e documentação, este documento tem prioridade.

---

# Chassis Base

Descrição:

Chassis 4WD em acrílico utilizado como plataforma principal.

Dimensões:

| Parâmetro | Valor |
|------------|------------|
| Comprimento | 260 mm |
| Largura | 155 mm |
| Altura | 65 mm |

---

# Rodas

| Parâmetro | Valor |
|------------|------------|
| Diâmetro | 70 mm |
| Raio | 35 mm |
| Largura | 30 mm |

---

# Piso 2

Descrição:

Primeira plataforma circular superior.

Material:

Acrílico transparente.

Dimensões:

| Parâmetro | Valor |
|------------|------------|
| Diâmetro | 300 mm |

---

# Piso 3

Descrição:

Segunda plataforma circular superior.

Material:

Acrílico transparente.

Dimensões:

| Parâmetro | Valor |
|------------|------------|
| Diâmetro | 300 mm |

---

# Separadores

## Chassis → Piso 2

Estado:

Em validação.

Opções:

| Valor |
|----------|
| 45 mm |
| 50 mm |

Decisão final pendente de montagem física.

---

## Piso 2 → Piso 3

Dimensão:

```text
30 mm
```

---

# Estrutura Vertical

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
      │ 45/50 mm
      ▼

Chassis
260 × 155 × 65 mm

```

---

# Powerbank

Posição prevista:

```text
Face inferior do Piso 2
```

Objetivos:

- baixar o centro de gravidade;
- libertar área útil do Piso 2;
- simplificar cablagem.

---

# Componentes Mecânicos em Validação

## Separadores

Estado:

Por validar.

Objetivo:

Comparar:

- 45 mm
- 50 mm

Critérios:

- estabilidade;
- acessibilidade;
- espaço para cablagem.

---

# Regras

Não utilizar dimensões provenientes de:

- imagens conceptuais;
- renderizações;
- estimativas.

Apenas dimensões confirmadas devem ser registadas neste documento.

---

# Histórico

## 2026-09-01

Dimensões confirmadas:

- Chassis 260 × 155 × 65 mm
- Rodas Ø70 mm
- Piso 2 Ø300 mm
- Piso 3 Ø300 mm
- Separador Piso 3 = 30 mm
