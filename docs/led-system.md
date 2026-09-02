# LED System

> AEGIS - Visual Feedback and Illumination System

Versão: 2.0
Estado: Ativo

---

# Objetivo

Fornecer:

- feedback visual do estado do sistema;
- indicação de modos de funcionamento;
- iluminação ambiente;
- identidade visual do AEGIS;
- integração com Home Assistant.

---

# Filosofia

O sistema LED não é decorativo.

Os LEDs são considerados uma interface de comunicação visual entre:

- o robô;
- os utilizadores;
- o Home Assistant.

---

# Hardware

## Módulos RGB

### KY-009

Quantidade:

```text
5
```

Estado:

```text
Adquirido
```

Tipo:

```text
RGB LED
```

Função:

- estados do sistema;
- iluminação ambiente;
- feedback visual.

---

# Distribuição Física

## Localizações Previstas

### LED 1

Posição:

Frente

Função:

Estado principal.

---

### LED 2

Posição:

Lateral esquerda

Função:

Iluminação ambiental.

---

### LED 3

Posição:

Lateral direita

Função:

Iluminação ambiental.

---

### LED 4

Posição:

Traseira

Função:

Estado secundário.

---

### LED 5

Posição:

Piso superior

Função:

Indicador global de estado.

---

# Integração Física

## Piso 3

Localização principal prevista:

```text
Piso Superior
```

Objetivos:

- melhor difusão da luz;
- maior visibilidade;
- proximidade dos restantes sistemas de interação.

---

## Saia Translúcida

Objetivo futuro:

Difundir a iluminação dos LEDs RGB.

A saia deverá ser instalada:

```text
Entre Piso 2 e Piso 3
```

descendo aproximadamente até ao eixo das rodas.

---

# Estados Visuais

## Inicialização

Cor:

```text
Azul pulsante
```

Significado:

Sistema em arranque.

---

## Operação Normal

Cor:

```text
Azul
```

Significado:

Funcionamento normal.

---

## Assist Ativo

Cor:

```text
Ciano
```

Significado:

Assistente de voz ativo.

---

## Patrulha

Cor:

```text
Branco suave
```

Significado:

Patrulha em execução.

---

## Docking

Cor:

```text
Amarelo
```

Significado:

Procura ou aproximação à base.

---

## Carregamento

Cor:

```text
Verde pulsante
```

Significado:

Em carregamento.

---

## Carregamento Completo

Cor:

```text
Verde fixo
```

Significado:

Bateria carregada.

---

## Alerta

Cor:

```text
Vermelho
```

Significado:

Anomalia ou erro.

---

## Emergência

Cor:

```text
Vermelho intermitente
```

Significado:

Falha crítica.

---

# Integração Home Assistant

Eventos previstos:

- alarmes;
- notificações;
- estados de presença;
- modos de patrulha;
- estado energético.

---

# Integração ESPHome

Objetivos futuros:

```text
light

effects

status indicators
```

---

# Possível Evolução

## PCA9685

Hardware disponível:

```text
PCA9685
16 Channel PWM Driver
```

Estado:

Disponível.

Origem:

Projeto ferroviário HO/OO.

---

## Aplicações Futuras

- animações RGB;
- fading suave;
- efeitos luminosos;
- expansão do número de LEDs;
- controlo de servos.

---

# Requisitos

O sistema LED deverá:

- funcionar independentemente da presença do Home Assistant;
- indicar estados críticos;
- permanecer visível em condições normais de utilização;
- não interferir com sensores ou áudio.

---

# Estado Atual

## Confirmado

✅ 5 × KY-009 adquiridos

✅ Sistema RGB distribuído aprovado

✅ Integração com Home Assistant prevista

✅ Integração com ESPHome prevista

---

## Em Evolução

- localização exata dos módulos;
- animações definitivas;
- eventual utilização da PCA9685;
- implementação da saia translúcida.

---

# Documentos Relacionados

- hardware-inventory.md
- physical-layout.md
- project-decisions.md
- power-system.md
