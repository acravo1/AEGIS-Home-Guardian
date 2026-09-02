# Security and Failsafe

> AEGIS - Safety, Security and Failsafe Architecture

Versão: 2.0
Estado: Ativo

---

# Objetivo

Definir os mecanismos de segurança do AEGIS.

A segurança tem prioridade absoluta sobre:

- patrulha;
- navegação;
- docking;
- áudio;
- vigilância.

Sempre que existir conflito entre uma função operacional e uma função de segurança:

```text
Segurança vence.
```

---

# Filosofia

O AEGIS deve falhar de forma segura.

Objetivos:

- evitar colisões;
- evitar movimentos descontrolados;
- evitar danos materiais;
- proteger pessoas;
- proteger animais domésticos;
- proteger a própria plataforma.

---

# Arquitetura de Segurança

```text

Home Assistant
       │

ESP32-S3
       │

UART

       │

RP2040
       │

Motores

```

---

# Responsabilidades

## RP2040

Responsável por:

- paragem de emergência;
- controlo dos motores;
- deteção de obstáculos;
- ações de segurança imediatas.

---

## ESP32-S3

Responsável por:

- supervisão;
- telemetria;
- integração Home Assistant;
- lógica de alto nível.

---

## Home Assistant

Responsável por:

- automações;
- alertas;
- monitorização;
- supervisão remota.

---

# Princípio Fundamental

A capacidade de parar o robô nunca depende de:

- Wi-Fi;
- Home Assistant;
- Internet;
- cloud;
- ESP32-S3.

A capacidade de parar o robô deve existir sempre no:

```text
RP2040
```

---

# Obstáculos

## Sensor

HC-SR04

---

## Reação

Quando um obstáculo for detetado abaixo do limite configurado:

```text
Parar
```

---

## Ações Possíveis

```text
Stop

Recuar

Rodar
```

---

# Falha de Comunicação UART

## Situação

Perda de comunicação entre:

```text
ESP32-S3
↔
RP2040
```

---

## Resposta

```text
STOP
```

---

## Objetivo

Garantir que a perda do controlador principal não provoca movimento descontrolado.

---

# Falha de Wi-Fi

## Situação

Perda de rede sem fios.

---

## Consequência

Não deverá impedir:

- navegação básica;
- paragem;
- proteção local.

---

## Responsável

```text
RP2040
```

---

# Falha do ESP32-S3

## Situação

ESP32-S3 bloqueado ou reiniciado.

---

## Consequência

O RP2040 continua responsável por:

- motores;
- sensores;
- segurança.

---

## Comportamento

```text
STOP
```

seguido de:

```text
Estado Seguro
```

---

# Falha do RP2040

## Situação

Falha do controlador de movimento.

---

## Consequência

Perda do movimento.

---

## Resultado Esperado

O robô deve permanecer parado.

---

# Energia Crítica

## Situação

Bateria abaixo do limite mínimo.

---

## Ações

```text
Terminar patrulha

Procurar docking

Iniciar carregamento
```

---

# Perda de Alimentação

## Situação

Falha de energia.

---

## Requisitos

- preservar hardware;
- permitir reinicialização automática;
- evitar movimentos inesperados.

---

# Docking

## Durante aproximação

Prioridade:

```text
Segurança
```

---

## Comportamentos permitidos

```text
Aproximação lenta

Paragem imediata

Nova tentativa
```

---

## Comportamentos proibidos

```text
Impacto deliberado

Aceleração cega
```

---

# Sensores de Queda

## Estado

Planeados

---

## Prioridade

Baixa para a instalação atual.

---

## Justificação

O ambiente de referência não possui:

- escadas;
- desníveis significativos.

---

## Obrigatoriedade

Apesar disso, o projeto considera os sensores de queda como parte integrante da arquitetura de segurança.

---

## Funções Futuras

- deteção de escadas;
- deteção de varandas;
- proteção anti-queda.

---

# Watchdog

## RP2040

Recomendado.

Objetivo:

Recuperar de bloqueios inesperados.

---

## ESP32-S3

Recomendado.

Objetivo:

Reinício automático após falhas.

---

# Estados Seguros

## Idle

```text
Sem movimento
```

---

## Stop

```text
Motores parados
```

---

## Charging

```text
Robot imobilizado
```

---

## Error

```text
Motores desativados
```

---

# Home Assistant

## Alertas Futuros

Eventos a publicar:

```text
Obstacle Detected

UART Failure

ESP32 Failure

Low Battery

Docking Failure
```

---

# Segurança Física

## Estrutura

Objetivos:

- evitar arestas cortantes;
- proteger componentes;
- evitar cabos expostos.

---

## Cablagem

Deverá ser:

- organizada;
- protegida;
- fixada.

---

# Requisitos de Projeto

## Obrigatórios

✅ Paragem segura

✅ Falha segura

✅ Controlo local no RP2040

✅ Sem dependência da cloud

✅ Sem dependência de Internet

---

## Futuros

🔲 Sensores de queda

🔲 Sensores de docking avançados

🔲 Monitorização energética avançada

🔲 Diagnóstico automático

---

# Estado Atual

## Implementado Arquiteturalmente

✅ HC-SR04

✅ MPU6050

✅ RP2040 dedicado ao movimento

✅ ESP32-S3 dedicado à lógica principal

✅ UART entre controladores

✅ Home Assistant como camada estratégica

---

## Em Evolução

- Docking
- Energia
- Gestão de bateria
- Sensores de queda

---

# Documentos Relacionados

- sensors.md
- power-system.md
- communication-system.md
- firmware-protocol.md
- home-assistant-integration.md
- project-decisions.md
