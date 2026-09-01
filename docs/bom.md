# AEGIS Bill of Materials (BOM)

> Autonomous Electronic Guardian Integrated System

Versão: 0.1
Última atualização: 2026-09-01

---

# Legenda de Estado

| Estado | Significado |
|----------|----------|
| ✅ | Disponível |
| 🔧 | Instalado |
| 🟡 | Planeado |
| ❌ | Não adquirido |

---

# Controladores

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Seeed XIAO RP2040 | 1 | ✅ | Controlador de movimento |
| ESP32-S3 (42 pinos) | 1 | ✅ | Controlador principal |

---

# Movimento

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Motores DC | 4 | 🔧 | Instalados |
| Rodas | 4 | 🔧 | Instaladas |
| Rodas preparadas para encoder | 4 | ✅ | Disponíveis |
| TB6612FNG | 1 | 🟡 | Substituir L298N |
| L298N | 1 | 🔧 | Protótipo atual |

---

# Sensores de Navegação

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| MPU-6050 | 1 | 🔧 | IMU principal |
| HC-SR04 | 1 | 🔧 | Frente do robô |
| Encoders | 4 | 🟡 | Implementação futura |

---

# Áudio

## Microfones

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| INMP441 | 3 | ✅ | Entrada áudio I²S |

## Amplificação

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| PAM8302 | 2 | ✅ | Amplificação áudio |

## Altifalantes

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Altifalante 3W / 8Ω | 2 | ✅ | Interface JST-PH 2.0 |

---

# Iluminação

## RGB

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| KY-009 RGB | 5 | ✅ | Iluminação ambiente |

## Vigilância

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Foco LED reciclado | 2 | ✅ | Visão noturna |
| Luzes RC | 1 conjunto | ✅ | Iluminação adicional |

---

# Visão

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Câmara | 1 | 🟡 | Modelo por definir |

---

# Energia

## Alimentação

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Powerbank | 1 | 🔧 | Fonte principal |

## Carregamento

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Sistema de indução | 1 | 🔧 | Base de carregamento |
| Díodos Schottky | 2 | ✅ | Isolamento das fontes |
| Cabo USB em Y | 1 | 🟡 | Construção futura |

## Energia Solar

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Painel solar | 1 | ✅ | Integração futura |

---

# Estrutura

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Chassis acrílico circular | 1 | 🔧 | Estrutura principal |
| Placa acrílica adicional | 1 | 🟡 | Piso superior |
| Saia translúcida | 1 | 🟡 | Acabamento final |
| Espaçadores | Diversos | ✅ | Montagem modular |

---

# Integração Home Assistant

| Componente | Quantidade | Estado | Notas |
|------------|------------|---------|---------|
| Home Assistant | 1 | ✅ | Plataforma central |
| ESPHome | 1 | ✅ | Firmware IoT |
| Assist | 1 | 🟡 | Fase futura |

---

# Componentes por Fase

## Fase 1 - Plataforma Motora

- XIAO RP2040
- TB6612FNG
- MPU-6050
- HC-SR04
- Motores

## Fase 2 - Navegação

- Encoders
- Sistema de docking

## Fase 3 - Inteligência

- ESP32-S3
- ESPHome
- Home Assistant

## Fase 4 - Áudio

- INMP441
- PAM8302
- Altifalantes

## Fase 5 - Visão

- Câmara
- Foco LED

## Fase 6 - Energia Avançada

- Painel solar
- Díodos Schottky
- Cabo USB em Y

---

# Notas

## Energia

A arquitetura energética final prevê:

```text
Painel Solar
      │
 Schottky
      │
      ├── USB em Y ──► Powerbank
      │
 Schottky
      │
Carregamento por Indução
```

Objetivo:

- impedir retorno de corrente;
- proteger as fontes;
- permitir carregamento proveniente de múltiplas origens.

---

## Componentes Reciclados

AEGIS utiliza vários componentes reaproveitados com o objetivo de reduzir custos e promover reutilização de hardware sempre que possível.

- Focos LED
- Iluminação RC
- Estruturas reaproveitadas
