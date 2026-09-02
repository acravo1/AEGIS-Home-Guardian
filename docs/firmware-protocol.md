# Firmware Protocol

> AEGIS - Intercontroller Communication Protocol

Versão: 1.0
Estado: Ativo

---

# Objetivo

Definir o protocolo de comunicação entre:

- Seeed XIAO RP2040
- ESP32-S3

O protocolo foi concebido para:

- simplicidade;
- legibilidade;
- facilidade de depuração;
- baixa utilização de recursos.

---

# Arquitetura

```text

ESP32-S3
     ▲
     │ UART
     ▼
RP2040

```

---

# Responsabilidades

## RP2040

Responsável por:

- motores;
- MPU6050;
- HC-SR04;
- segurança de movimento.

---

## ESP32-S3

Responsável por:

- Home Assistant;
- ESPHome;
- Assist;
- áudio;
- lógica principal;
- docking;
- vigilância.

---

# Transporte

## Meio

UART

---

## Ligação

```text
RP2040 ↔ ESP32-S3
```

---

## Características

- comunicação bidirecional;
- texto ASCII;
- terminador LF.

---

# Estrutura da Mensagem

Formato:

```text
COMANDO:VALOR
```

Exemplos:

```text
MOVE:FORWARD

MOVE:STOP

STATUS:BATTERY

SENSOR:HC_SR04
```

---

# Comandos Movimento

## Frente

```text
MOVE:FORWARD
```

---

## Trás

```text
MOVE:BACKWARD
```

---

## Esquerda

```text
MOVE:LEFT
```

---

## Direita

```text
MOVE:RIGHT
```

---

## Parar

```text
MOVE:STOP
```

---

# Comandos de Velocidade

## Definir velocidade

Formato:

```text
SPEED:0

SPEED:50

SPEED:100
```

Escala:

```text
0 a 100
```

---

# Comandos de Patrulha

## Iniciar

```text
PATROL:START
```

---

## Parar

```text
PATROL:STOP
```

---

# Comandos Docking

## Iniciar

```text
DOCK:START
```

---

## Parar

```text
DOCK:STOP
```

---

# Sensores

## Pedido de distância

```text
SENSOR:HC_SR04
```

Resposta:

```text
DISTANCE:123
```

Unidade:

```text
cm
```

---

## Pedido de orientação

```text
SENSOR:MPU6050
```

Resposta:

```text
HEADING:270
```

---

# Telemetria

## Movimento

Exemplo:

```text
MOTION:FORWARD

MOTION:STOPPED
```

---

## Sensores

Exemplo:

```text
DISTANCE:125

HEADING:180
```

---

## Estado

Exemplo:

```text
STATE:IDLE

STATE:PATROL

STATE:DOCKING

STATE:CHARGING
```

---

# Heartbeat

## Objetivo

Confirmar que a comunicação continua ativa.

---

## ESP32-S3 → RP2040

```text
PING
```

---

## RP2040 → ESP32-S3

```text
PONG
```

---

## Timeout

Se não forem recebidos comandos válidos durante um período prolongado:

```text
STOP
```

---

# Segurança

## Falha UART

Em caso de perda de comunicação:

```text
RP2040
↓
Paragem Segura
```

---

## Falha de Comando

Comando inválido:

```text
ERROR:INVALID_COMMAND
```

---

## Falha de Sensor

```text
ERROR:SENSOR
```

---

# Estados do Sistema

## Idle

```text
STATE:IDLE
```

---

## Patrulha

```text
STATE:PATROL
```

---

## Docking

```text
STATE:DOCKING
```

---

## Carregamento

```text
STATE:CHARGING
```

---

## Erro

```text
STATE:ERROR
```

---

# Evolução Futura

A versão inicial utiliza mensagens ASCII para facilitar:

- testes;
- monitorização;
- depuração.

Versões futuras poderão introduzir:

```text
JSON
```

ou

```text
frames binárias
```

caso a complexidade do sistema aumente.

---

# Requisitos

## Simplicidade

Prioridade máxima na V1.

---

## Legibilidade

Toda a comunicação deverá ser facilmente observável através de um monitor série.

---

## Robustez

A perda de comunicação nunca deverá causar movimento não controlado.

---

# Estado Atual

## Confirmado

✅ UART dedicada RP2040 ↔ ESP32-S3

✅ Protocolo textual

✅ Heartbeat PING/PONG

✅ Paragem segura em falha

---

## Em Evolução

- Mensagens de telemetria avançadas
- Gestão de bateria
- Estados de docking
- Eventos Home Assistant

---

# Documentos Relacionados

- architecture.md
- communication-system.md
- gpio-allocation.md
- power-system.md
- project-decisions.md
