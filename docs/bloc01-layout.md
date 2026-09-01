# Block 01 Layout

> AEGIS - Phase 1 Physical Layout

Versão: 1.0
Estado: Planeamento

---

# Objetivo

Definir a organização física da primeira fase do AEGIS.

Esta fase tem como objetivo validar:

- plataforma motora;
- distribuição energética;
- estabilidade mecânica;
- organização da cablagem.

---

# Componentes Instalados

## Chassis Original (Piso 1)

- XIAO RP2040
- TB6612FNG
- MPU-6050
- HC-SR04
- Motores DC

---

## Placa Circular Intermédia (Piso 2)

- Powerbank

---

## Placa Circular Superior (Piso 3)

Reservada para expansão futura.

Ainda sem componentes instalados.

---

# Dimensões Reais

## Chassis Original

| Parâmetro | Valor |
|------------|------------|
| Comprimento | 260 mm |
| Largura | 155 mm |
| Altura | 65 mm |

---

## Piso 2

| Parâmetro | Valor |
|------------|------------|
| Diâmetro | 300 mm |
| Altura acima do chassis | 45 mm |

---

## Piso 3

| Parâmetro | Valor |
|------------|------------|
| Diâmetro | 300 mm |
| Altura acima do Piso 2 | 30 mm |

---

# Arquitetura Vertical

```text

               Piso 3
        Ø300 mm - Reservado

        ──────────────────

                 ▲
                 │
                 │ 30 mm
                 ▼

             Piso 2
          Ø300 mm

          [Powerbank]

        ──────────────────

                 ▲
                 │
                 │ 45 mm
                 ▼

      Chassis Original

RP2040
TB6612FNG
MPU-6050
HC-SR04

Motores

```

---

# Vista Frontal

```text

           Piso 3
     ┌───────────────┐
     │   Reservado   │
     └───────────────┘

     ┌───────────────┐
     │   Powerbank   │
     └───────────────┘

══════════════════════════
     Chassis Original
══════════════════════════

        HC-SR04

      O         O

      O         O
```

---

# Vista Superior Piso 1

```text

                 Frente

      ┌─────────────────────┐
      │                     │
      │       HC-SR04       │
      │                     │
      │      MPU-6050       │
      │                     │
      │ RP2040  TB6612FNG   │
      │                     │
      └─────────────────────┘

                Traseira
```

---

# Vista Superior Piso 2

```text

           Ø300 mm

      ╭─────────────────╮
    ╭─╯                 ╰─╮
   │                       │
   │                       │
   │      POWERBANK        │
   │                       │
   │                       │
    ╰─╮                 ╭─╯
      ╰─────────────────╯
```

---

# Distribuição de Peso

## Componentes Principais

### Piso 1

- Motores
- TB6612FNG
- RP2040

---

### Piso 2

- Powerbank

---

## Centro de Gravidade

Objetivo:

```text
Powerbank
      │
      ▼

 MPU-6050

      ▼

 Centro do Robô
```

A colocação do powerbank deverá ficar o mais próxima possível do centro 
