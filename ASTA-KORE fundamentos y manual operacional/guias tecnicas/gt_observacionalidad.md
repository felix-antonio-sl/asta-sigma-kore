# GT-OBSERVABILITY-001: Stack de Observabilidad

**ID:** GT-OBSERVABILITY-001  
**Versión:** 2.0  
**Dominio:** Δ-O (Flujo Operacional)  
**Protocolo:** 3.3 - Transparencia Radical

## Invariante Central

**La observabilidad no es monitoreo. Es la capacidad de entender el estado interno del sistema desde sus salidas externas.**

Su propósito es responder "¿Por qué?" sin necesidad de desplegar código nuevo.

## Los Tres Pilares

### Pilar 1: Logs (Qué pasó)

**Definición:** Registro inmutable de eventos discretos.

**Reglas:**

- ✅ Formato estructurado (no texto plano)
- ✅ Timestamp en UTC con precisión
- ✅ Trace ID para correlación
- ✅ Contexto relevante (IDs, duraciones)

### Pilar 2: Métricas (Cuánto/Cuándo)

**Definición:** Valores numéricos agregados en el tiempo.

**Tipos:**

| Tipo | Descripción | Ejemplo |
|------|-------------|---------|
| **Counter** | Contador monotónico (solo sube) | `postulaciones_creadas_total` |
| **Gauge** | Valor instantáneo (sube/baja) | `postulaciones_en_revision_actual` |
| **Histogram** | Distribución de valores | `http_request_duration_seconds` |
| **Summary** | Percentiles precalculados | `api_latency_p95` |

**Convención de Nombres:**

```plain
{namespace}_{subsystem}_{name}_{unit}

Ejemplos:
- postulaciones_api_requests_total
- postulaciones_db_query_duration_seconds
```

### Pilar 3: Traces (Cómo fluye)

**Definición:** Representación del recorrido de una request a través del sistema.

**Estructura conceptual:**

```plain
Trace: abc-123
├─ Span: API Gateway (10ms)
├─ Span: Postulaciones Service (45ms)
│  ├─ Span: Validar RUT (5ms)
│  ├─ Span: Query BD (30ms)
│  └─ Span: Publicar Evento (10ms)
└─ Span: Notificaciones Service (20ms)
```

**Información por Span:**

- Trace ID (correlación)
- Span ID (identificación)
- Parent Span ID (jerarquía)
- Duración
- Atributos de contexto

## Principios de Instrumentación

### Principio 1: Instrumentar desde el Diseño

**Regla:** La observabilidad no se añade al final, se diseña desde el inicio.

**Criterio:** Toda EV debe emitir los tres pilares desde su primer despliegue.

### Principio 2: Correlación entre Pilares

**Regla:** Logs, métricas y traces deben correlacionarse vía Trace ID.

**Beneficio:** Poder navegar de un dashboard (métrica) → log específico → trace completo.

### Principio 3: Cardinalidad Controlada

**Regla:** Evitar etiquetas con alta cardinalidad en métricas.

**Ejemplo:**

- ❌ `user_id` como etiqueta (millones de valores)
- ✅ `user_type` como etiqueta (pocos valores: ciudadano, evaluador, admin)

## Criterios de Decisión: ¿Qué Instrumentar?

### Regla de Oro

**Instrumentar:**

- ✅ Puntos de entrada (APIs, eventos)
- ✅ Puntos de salida (llamadas a BDs, APIs externas)
- ✅ Decisiones de negocio (validaciones, aprobaciones)
- ✅ Errores y excepciones

**No instrumentar:**

- ❌ Loops internos de procesamiento
- ❌ Funciones auxiliares triviales

## Integración con ASTA-Kore

**SLOs:** Las métricas de observabilidad alimentan los SLOs definidos en los Contratos.

**CVC:** Los dashboards de observabilidad son evidencia de salud operacional en el CVC.

**Referencia:** Ver `gt_slo_sli.md` para definición de SLOs basados en métricas de observabilidad.
