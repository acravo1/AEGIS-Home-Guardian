# Home Assistant Integration

> AEGIS - Home Assistant Integration

Versão: 1.0
Estado: Ativo

---

# Objetivo

Definir a integração do AEGIS com o ecossistema Home Assistant.

O AEGIS foi concebido para funcionar como uma extensão física do ambiente Home Assistant existente.

---

# Filosofia

O AEGIS não é o sistema central.

O Home Assistant assume o papel de:

- cérebro estratégico;
- agregador de informação;
- motor de automação;
- interface principal com o utilizador.

O AEGIS assume o papel de:

- agente físico móvel;
- plataforma de vigilância;
- plataforma de interação;
- plataforma de recolha de informação.

---

# Arquitetura Geral

```text

            Home Assistant
                   ▲
                   │
                   │
                   ▼

               ESP32-S3
                   ▲
                   │ UART
                   ▼

                RP2040

```

---

# Responsabilidades

## Home Assistant

Responsável por:

- automações;
- presença;
- calendarização;
- notificações;
- dashboards;
- gestão estratégica.

---

## AEGIS

Responsável por:

- movimento;
- patrulha;
- vigilância;
- áudio;
- interação local;
- execução física das ações.

---

# Comunicação

## Método Principal

```text
Wi-Fi
```

através de:

```text
ESPHome
```

---

## Controlador

```text
ESP32-S3
```

---

# Integração ESPHome

## Objetivos

Permitir publicação de:

- sensores;
- estados;
- telemetria;
- energia;
- áudio.

---

## Objetivos Futuros

```text
Assist Pipeline

Media Player

Microphone

Speaker

Camera
```

---

# Entidades Previstas

## Estado

### Robot State

Exemplos:

```text
Idle

Patrol

Docking

Charging

Error
```

---

## Movimento

### Atributos

```text
Velocidade

Orientação

Direção
```

---

## Energia

### Atributos

```text
Battery

Charging

Charged

Docked
```

---

## Sensores

### HC-SR04

Distância frontal.

---

### MPU6050

Orientação e aceleração.

---

## Áudio

### Microfones

```text
3 × INMP441
```

---

### Altifalantes

```text
2 × Altifalantes
```

---

# Assist

## Objetivo

Utilizar o Home Assistant Assist como interface de voz principal.

---

## Fluxo

```text

Utilizador
      │
      ▼

 INMP441
      │
      ▼

 ESP32-S3
      │
      ▼

 Home Assistant Assist
      │
      ▼

 MAX98357A
      │
      ▼

 Altifalantes

```

---

# Notificações

## Objetivos

Permitir que o Home Assistant utilize o AEGIS para:

- anúncios;
- avisos;
- alarmes;
- interações.

---

## Exemplos

```text
Porta aberta

Alerta de movimento

Chegada de pessoa

Lembretes
```

---

# Patrulha

## Objetivo

Permitir ao Home Assistant iniciar e interromper patrulhas.

---

## Futuras Ações

```text
Start Patrol

Stop Patrol

Return Home

Start Docking
```

---

# Docking

## Objetivo

Permitir ao Home Assistant:

- monitorizar;
- iniciar;
- acompanhar carregamentos.

---

## Estados

```text
Docked

Undocked

Charging

Charged
```

---

# HomeLab

## Integração

O AEGIS deverá ser tratado como mais um serviço do ecossistema HomeLab.

---

## Dependências Previstas

- Docker
- Home Assistant
- ESPHome

---

# Integração com Robôs Existentes

## Roomba i1

Estado:

Investigação futura.

---

## Objetivos

Possível reaproveitamento de:

- informação de mapas;
- telemetria;
- zonas;
- localização da docking.

---

## Instalação de Referência

Atualmente existem:

```text
2 × Roomba i1
```

integrados no Home Assistant.

---

# Segurança

## Falha de Comunicação

A perda de ligação ao Home Assistant não deverá impedir:

- paragem segura;
- navegação local;
- respostas de segurança.

---

## Responsável

```text
RP2040
```

---

# Evolução Futura

## Integração de Mapas

Objetivo:

Utilização de informação espacial disponível no Home Assistant.

---

## Presença

Objetivo:

Patrulhas e comportamentos baseados em ocupação da habitação.

---

## Segurança

Objetivo:

Integração com alarmes e sensores existentes.

---

## Vídeo

Objetivo:

Streaming remoto.

---

# Estado Atual

## Confirmado

✅ Home Assistant como sistema central.

✅ ESPHome como integração principal.

✅ ESP32-S3 responsável pela integração.

✅ AEGIS concebido como nó móvel do ecossistema.

---

## Em Evolução

- Assist.
- Vídeo.
- Mapas.
- Docking.
- Integração com Roomba.

---

# Documentos Relacionados

- architecture.md
- communication-system.md
- power-system.md
- audio-system.md
- project-decisions.md
- firmware-protocol.md
