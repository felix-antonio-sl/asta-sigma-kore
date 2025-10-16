# GT-SLO-SLI-001: Definición de SLOs y SLIs

**ID:** GT-SLO-SLI-001  
**Versión:** 2.0  
**Dominio:** Σ-O (Diseño Operacional)  
**Protocolo:** 3.1 - Gestión de la Confiabilidad

## Invariante Central

**Un SLO es un contrato de confiabilidad con los usuarios, no una aspiración técnica.**

Su propósito es definir cuánta indisponibilidad es aceptable, no aspirar a 100% de uptime.

## Definiciones

### SLI (Service Level Indicator)

**Definición:** Métrica cuantitativa de un aspecto del nivel de servicio.

**Ejemplos:**

- Disponibilidad: % de requests exitosas
- Latencia: % de requests respondidas en <Xms
- Correctitud: % de transacciones sin errores
- Frescura: % de datos con antigüedad <X minutos

### SLO (Service Level Objective)

**Definición:** Objetivo de confiabilidad expresado como un rango de valores aceptables para un SLI.

**Ejemplos:**

- "99.5% de disponibilidad en ventana de 30 días"
- "95% de requests <500ms en ventana de 7 días"

### SLA (Service Level Agreement)

**Definición:** Contrato legal con consecuencias si no se cumple el SLO.

**Regla:** SLA ≤ SLO. Ejemplo: Si SLO es 99.5%, SLA puede ser 99.0%.

## Criterios de Selección de SLIs

### Pregunta: ¿Qué le importa al usuario?

**Categorías:**

| Aspecto | Pregunta | SLI Típico |
|---------|----------|------------|
| **Disponibilidad** | ¿El servicio responde? | % de requests exitosas |
| **Latencia** | ¿Qué tan rápido responde? | % de requests <Xms |
| **Correctitud** | ¿La respuesta es correcta? | % de transacciones sin errores |
| **Frescura** | ¿Los datos están actualizados? | % de datos con antigüedad <X min |

## Patrón de Definición

### Paso 1: Identificar SLI

**Pregunta:** ¿Qué métrica refleja la experiencia del usuario?

**Ejemplo:** Para una API de consulta de postulaciones → Latencia p95

### Paso 2: Definir SLO

**Pregunta:** ¿Qué nivel de servicio es aceptable?

**Ejemplo:** "95% de requests deben responder en <500ms en ventana de 7 días"

### Paso 3: Instrumentar

**Pregunta:** ¿Cómo mido este SLI?

**Ejemplo:** Instrumentar API con métricas de duración de requests

### Paso 4: Alertar

**Pregunta:** ¿Cuándo debo intervenir?

**Ejemplo:** Alerta si SLO cae por debajo del 95% durante 1 hora

## Integración con ASTA-Kore

**Contratos:** Todo contrato de EV debe declarar sus SLOs.

**Observabilidad:** Los SLIs se miden con el stack de observabilidad (métricas).

**CVC:** Los SLOs se reportan trimestralmente como evidencia de confiabilidad.

**Referencia:** Ver `gt_observabilidad.md` para instrumentación de SLIs.
