# Communication System

> AEGIS - Communication Architecture

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir o sistema de comunicações do AEGIS.

O sistema deve permitir:

- comunicação entre controladores;
- integração com Home Assistant;
- telemetria;
- comandos remotos;
- atualizações OTA;
- expansão futura.

---

# Arquitetura Geral

```text

          Home Assistant
                 ▲
                 │
            Wi-Fi / ESPHome
                 │
                 ▼

             ESP32-S3
                 ▲
                 │ UART
                 ▼

              RP2040

```

---

# Filosofia

## RP2040

Responsável por:

- movimento;
- sensores locais;
- controlo de motores;
- funções críticas em tempo real.

---

## ESP32-S3

Responsável por:

- Wi-Fi;
- ESPHome;
- Home Assistant;
- Assist;
- áudio;
- vídeo;
- lógica principal.

---

# Comunicação Interna

## RP2040 ↔ ESP32-S3

Método:

```text
UART
```

Estado:

Definido.

---

## Objetivo

Separar:

```text
Movimento
```

de

```text
Lógica Principal
```

---

## Funções

### RP2040 → ESP32-S3

Telemetria.

Exemplos:

```text
Velocidade

Orientação

Estado Motores

Distância HC-SR04

Estado Segurança
```

---

### ESP32-S3 → RP2040

Comandos.

Exemplos:

```text
Frente

Trás

Esquerda

Direita

Parar

Patrulha

Docking
```

---

# Protocolo

## Transporte

UART série.

---

## Estrutura

Formato textual simples.

Exemplo:

```text
MOVE:FORWARD

MOVE:STOP

STATUS:BATTERY

STATUS:SENSORS
```

---

## Evolução Futura

Poderá evoluir para:

```text
JSON

ou

frames binárias
```

caso necessário.

---

# Comunicação Externa

## Wi-Fi

Controlador:

```text
ESP32-S3
```

---

## Utilização

- Home Assistant
- ESPHome
- OTA
- Serviços de voz
- Telemetria

---

# Integração Home Assistant

## Objetivos

Permitir:

- controlo remoto;
- monitorização;
- automações;
- integração Assist;
- ações baseadas em presença.

---

## Papel do Home Assistant

O Home Assistant constitui o nível estratégico do sistema.

Exemplos:

```text
Patrulha Programada

Alertas

Presença

Rotinas

Docking
```

---

# ESPHome

## Estado

Planeado.

---

## Funções

Publicação de:

```text
Sensores

Estado

Bateria

Áudio

Vídeo
```

---

## Controlo

Receção de:

```text
Comandos

Automações

Pedidos Assist
```

---

# Telemetria

## Dados de Movimento

Origem:

RP2040

Exemplos:

- velocidade;
- orientação;
- aceleração.

---

## Dados de Energia

Origem:

ESP32-S3

Exemplos:

- estado de carga;
- docking;
- alimentação.

---

## Dados de Sensores

Origem:

RP2040

Exemplos:

- MPU6050;
- HC-SR04.

---

# Resiliência

## Falha de Wi-Fi

A perda de Wi-Fi não deverá impedir:

- movimento;
- paragem;
- segurança;
- navegação básica.

Responsável:

```text
RP2040
```

---

## Falha do ESP32-S3

O RP2040 deverá continuar capaz de:

- parar motores;
- responder a condições críticas;
- manter a segurança.

---

## Falha UART

Em caso de perda de comunicação:

```text
RP2040
↓
Paragem Segura
```

---

# Integrações Futuras

## Home Assistant

Planeado:

- Assist
- Dashboard
- Telemetria avançada
- Estado energético

---

## Robôs Existentes

Investigação futura.

Possível integração com:

```text
Roomba i1
```

Objetivos:

- comparação de telemetria;
- reutilização de informação;
- integração no ecossistema doméstico.

---

# Estado Atual

## Confirmado

✅ RP2040

✅ ESP32-S3

✅ UART dedicada

✅ Wi-Fi via ESP32-S3

✅ Integração Home Assistant

✅ Integração ESPHome

---

## Em Evolução

- protocolo definitivo UART;
- telemetria avançada;
- docking autónomo;
- integração de mapas e dados externos.

---

# Documentos Relacionados

- architecture.md
- gpio-allocation.md
- power-system.md
- home-assistant-integration.md
- firmware-protocol.md
- project-decisions.md
