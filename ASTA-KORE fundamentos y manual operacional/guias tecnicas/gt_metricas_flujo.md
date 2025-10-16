# GT-FLOW-001: Técnicas Avanzadas de Métricas de Flujo

**ID:** GT-FLOW-001  
**Versión:** 2.0  
**Dominio:** Δ-O (Flujo Operacional)  
**Protocolo:** 3.2 - Gestión del Flujo de Entrega

## Invariante Central

**Las métricas de flujo miden la eficiencia del sistema de trabajo del equipo, no del sistema técnico.**

Su propósito es implementar los invariantes de LEAN² (Flujo, Visibilidad, Adaptación) mediante instrumentación práctica.

**Referencia:** Ver `protocolos.md` §3.2.2 para definiciones de métricas primitivas (Lead Time, Cycle Time, Throughput, WIP, Flow Efficiency).

## Casos Edge: Manejo de Situaciones Especiales

### Caso 1: Trabajo Bloqueado

**Problema:** Item pasa días en estado "Blocked" sin progreso.

**Estrategias de Manejo:**

| Estrategia | Descripción | Cuándo Usar |
|------------|-------------|-------------|
| **Excluir del Cycle Time** | Restar tiempo bloqueado del cálculo | Bloqueos externos (dependencias de otros equipos) |
| **Incluir en Cycle Time** | Contar tiempo bloqueado como parte del trabajo | Bloqueos internos (parte del proceso del equipo) |
| **Métrica Separada** | Reportar "Tiempo Bloqueado" como métrica independiente | Siempre (para visibilidad) |

**Fórmula ajustada:**

```plain
Cycle Time Ajustado = (T_done - T_doing) - Σ(tiempo_bloqueado)
```

**Decisión:** Si >20% del tiempo es bloqueado, es señal de desperdicio sistémico (tipo: Espera).

### Caso 2: Items Reabiertos

**Problema:** Item se marca Done, luego se reabre por bug o cambio de requisitos.

**Estrategias de Manejo:**

| Estrategia | Descripción | Cuándo Usar |
|------------|-------------|-------------|
| **Última Completitud** | Usar la fecha de la última vez que se marcó Done | Recomendado (refleja realidad) |
| **Primera Completitud** | Usar la fecha de la primera vez que se marcó Done | Si quieres medir "tiempo hasta primer intento" |
| **Contar como Nuevo Item** | Tratar reapertura como trabajo nuevo | Si reapertura es sustancialmente diferente |

**Fórmula recomendada:**

```plain
Lead Time = max(T_done_1, T_done_2, ..., T_done_n) - T_created
```

**Métrica adicional:** "Tasa de Reapertura" = (Items reabiertos / Items completados) × 100%

### Caso 3: Percentiles vs. Promedios

**Problema:** Promedios ocultan outliers y no representan la experiencia típica.

**Solución:** Usar percentiles para reportar distribución.

**Percentiles Recomendados:**

| Percentil | Significado | Cuándo Usar |
|-----------|-------------|-------------|
| **p50 (Mediana)** | Experiencia típica | Baseline, comparaciones |
| **p85** | Peor caso razonable | Objetivos de SLO |
| **p95** | Casos extremos | Identificar outliers |
| **p99** | Peor caso absoluto | Análisis de patología |

**Ejemplo de Reporte:**

```plain
Lead Time (últimos 90 días):
- p50: 5.2 días (típico)
- p85: 9.8 días (peor caso razonable)
- p95: 15.3 días (outliers)
- Promedio: 7.1 días (no usar para objetivos)
```

**Regla:** Nunca uses promedio para objetivos. Usa p50 o p85.

## Identificación de Restricciones

### Análisis de Acumulación

**Pregunta:** ¿Dónde se acumula el trabajo?

**Patrón de Análisis:**

1. Calcular tiempo promedio por estado
2. Identificar el estado con mayor acumulación
3. Ese es tu cuello de botella (restricción)

**Ejemplo de Resultado:**

```plain
Backlog: 2.3 días
Ready: 0.5 días
Doing: 3.1 días
Review: 4.8 días  ← RESTRICCIÓN (mayor acumulación)
Done: 0 días
```

**Acción:** Intervenir en Review (agregar revisores, automatizar checks).

### Patrones de Anti-Patrones

| Patrón Observado | Diagnóstico | Intervención |
|------------------|-------------|---------------|
| **WIP creciente, Throughput decreciente** | Sobrecarga del equipo | Reducir WIP, rechazar trabajo nuevo |
| **Lead Time creciente, Cycle Time estable** | Acumulación en Backlog | Mejorar priorización, reducir demanda |
| **Flow Efficiency <20%** | Mucho tiempo de espera | Identificar y eliminar handoffs |
| **Throughput errático** | Tamaño de historias variable | Partir historias más pequeñas |
| **Cycle Time >2× Lead Time** | Retrabajo o bloqueos | Mejorar Definition of Ready |

## Comparación Interna (No Externa)

**Mejor práctica:** Comparar contra tu propio baseline, no contra benchmarks externos.

**Patrón de Comparación:**

```yaml
baseline:
  periodo: "Últimos 90 días"
  metrica: "Lead Time p85"
  valor: "12.5 días"

periodo_actual:
  periodo: "Últimos 30 días"
  metrica: "Lead Time p85"
  valor: "9.8 días"

analisis:
  tendencia: "Mejorando"
  delta: "-2.7 días (-21.6%)"
  accion: "Mantener intervenciones actuales"
```

**Criterios de Evaluación:**

| Cambio vs. Baseline | Interpretación | Acción |
|---------------------|----------------|--------|
| **Mejora >20%** | Intervención exitosa | Amplificar, documentar en ADR |
| **Mejora 5-20%** | Progreso incremental | Mantener, seguir monitoreando |
| **Cambio <5%** | Estable | Buscar nueva restricción |
| **Degradación 5-20%** | Alerta temprana | Investigar causa |
| **Degradación >20%** | Crisis | Intervención inmediata |

## Integración con CVC (Δ-E)

### Template de Reporte

```markdown
## Salud del Flujo (Δ-O)

### Métricas del Trimestre Q1 2025

| Métrica | Actual | Objetivo | vs. Q4 2024 | Estado |
|---------|--------|----------|-------------|--------|
| Lead Time (p85) | 8.5d | <10d | ▼ -2.3d | 🟢 |
| Cycle Time (p50) | 3.2d | <5d | ▼ -0.8d | 🟢 |
| Throughput | 12 items/sem | >8 items/sem | ▲ +3 | 🟢 |
| Flow Efficiency | 38% | >40% | → 0% | 🟡 |
| WIP Promedio | 10 | ≤12 | ▼ -2 | 🟢 |

### Restricción Dominante Identificada

**Estado:** Review (45% del Lead Time total)

**Tipo de desperdicio:** Espera (aprobaciones manuales)

**Hipótesis de mejora:** Automatizar 80% de code reviews con linters + tests obligatorios

**Experimento:** Implementar pre-commit hooks + CI checks

**KR asociado:** "Reducir tiempo en Review de 2.1d a <0.5d hacia fin de Q1"

**Responsable:** Tech Lead

**Verificación:** Próximo CVC (Q2)
```

## Integración con ASTA-Kore

| Artefacto | Cómo se Conecta |
|-----------|------------------|
| **Tablero de Flujo** (Δ-O) | Fuente de datos para métricas |
| **Retrospectiva del Flujo** (Δ-O) | Consume métricas para identificar restricciones |
| **OKRs Trimestrales** (Δ-T) | KRs pueden ser métricas de flujo |
| **CVC** (Δ-E) | Reporta métricas como evidencia de salud |
| **ADRs** (Δ-O) | Documenta experimentos de mejora |

**Referencia completa:** Ver `protocolos.md` §3.2 para proceso completo de gestión del flujo.
