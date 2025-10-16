# GT-TRACE-001: Patrones de Trazabilidad Estrategia-Ejecución

**ID:** GT-TRACE-001 | **Versión:** 1.0 | **Dominio:** Δ-O | **Estado:** ROADMAP

## Invariante Central

**La trazabilidad entre estrategia (OKRs) y ejecución debe ser verificable mediante convenciones explícitas y automatización progresiva.**

**Objetivo:** Responder en <30 segundos: "¿Qué KR motivó este cambio?" y "¿Qué trabajo contribuyó a este KR?"

## Propósito: Alineación Lateral, No Control

### I-1. Bottom-up Alignment
Trazabilidad para **coordinación horizontal** entre equipos, NO control top-down ni micro-gestión de performance individual.

### I-2. Outcome-Oriented
Trackear **OUTCOMES** (cambios medibles en negocio), NO outputs (features entregadas) ni progress (% de tareas completadas).

**Ejemplo correcto:** "Commits vinculados a KR-Q1-02: Reducir tiempo de 15→5 min" → Medir impacto en tiempo real  
**Ejemplo incorrecto:** "85% de features del backlog completadas" → Output sin outcome

### I-3. Measure What Matters
Solo implementar trazabilidad que **informa decisiones reales**. Prohibido: vanity metrics sin acción (ej: "commits por desarrollador").

### I-4. Track Distractions
Crear feedback loop de trabajo **NO vinculado a OKRs** para identificar distracciones sistemáticas y decidir: tolerar, eliminar, o convertir en Objetivo Cero (20% capacidad).

## Modelo de Trazabilidad

### Cadena de Conexiones

```
OKR (KR-2025-Q1-02: Reducir tiempo 15→5 min)
  ├── Rebanada Story Map (R2: Optimización UX)
  │   ├── Historia (US-101: Autofill datos)
  │   │   ├── Commit abc123
  │   │   └── Release v1.2.0
  │   └── Historia (US-102: Validación inteligente)
  ├── ADR-015 (Integrar API Registro Civil)
  │   └── Commits (ghi789, jkl012)
  └── Evidencia de Impacto
      └── Métrica: 9 min (-33% vs baseline)
```

**Principios:**
1. **Declarativo:** Metadatos explícitos en origen, no inferidos post-facto
2. **Bidireccional:** Navegable OKR→Código y Código→OKR
3. **Verificable:** Automatizable sin interpretación humana
4. **Incremental:** Comienza manual, automatiza progresivamente

## Convenciones de Metadatos

### Formato de Commits

```
[KR-ID] [US-ID] tipo: descripción

Refs: IDs relacionados
```

**Ejemplo:**
```
[KR-2025-Q1-02] [US-101] feat: agregar autofill de RUT

Integración con API Registro Civil para pre-llenar datos,
reduciendo tiempo de llenado de formulario en ~3 minutos.

Refs: KR-2025-Q1-02, US-101, ADR-015
```

**Tipos:** feat, fix, refactor, docs, test, chore

### Campo en ADRs

**Obligatorio:**
```markdown
**KR Motivador:** [KR-ID]: [Descripción del KR]
```

**Ejemplo:**
```markdown
# ADR-015: Integración API Registro Civil

**KR Motivador:** KR-2025-Q1-02: Reducir tiempo 15→5 min

## Contexto
74% rechazos por RUTs inválidos. Validación manual genera fricción.

## Decisión
Integrar API Registro Civil para validación automática en tiempo real.

## Consecuencias
+ Reduce errores de captura en 90%
+ Disminuye tiempo de postulación en ~3 min (contribuye directamente a KR)
- Introduce dependencia externa (SLA 99.5% del Registro Civil)

## Medición de Impacto en KR
Baseline: 12 min promedio → Target: 9 min promedio (-25%)
Dashboard: [link a métricas en tiempo real]
```

## Agregación por Release

**Release Notes Automatizadas:**

```markdown
# Release v1.2.0 (2025-01-20)

## KRs Impactados
- **KR-2025-Q1-02:** Reducir tiempo postulación (18 commits)
  - Impacto medido: -33% (de 12 min → 9 min)
- **KR-2025-Q1-03:** Aumentar completitud (5 commits)
  - Impacto esperado: +10% (baseline 60% → target 70%)

## Cambios Funcionales
- Validación automática RUT (US-101)
- Autofill datos desde Registro Civil (US-102)
- Notificaciones SMS (US-105)

## Decisiones Arquitectónicas
- ADR-015: Integración API Registro Civil
- ADR-016: Circuit Breaker para APIs externas

## Trabajo Sin KR (Distracciones)
- 3 commits de bugs críticos en producción (no planificados)
- 2 commits de deuda técnica urgente
- **Análisis:** 22% del trabajo fue no planificado → Considerar Objetivo Cero
```

## Validación Automatizada

### Nivel 1: Git Hooks (Pre-commit)
- Validar formato de commit antes de aceptar
- Verificar que KR-ID existe en OKRs activos del trimestre
- Verificar que US-ID corresponde a Story Map actual
- **Beneficio:** Garantiza adherencia desde el origen

### Nivel 2: CI/CD Pipeline
- Extraer metadatos de commits automáticamente
- Validar consistencia KR↔US↔ADR
- Generar release notes automáticas con KRs impactados
- Bloquear merge si violaciones críticas detectadas
- **Beneficio:** Visibilidad continua + release notes sin esfuerzo manual

## Dashboard de Trazabilidad

**Vistas Esenciales (6 paneles accionables):**

| Vista | Pregunta que Responde | Acción que Informa |
|:---|:---|:---|
| **Progreso de KR** | ¿Cuánto trabajo se completó por KR? | Decidir acelerar/pausar iniciativa |
| **Velocity por KR** | ¿A qué ritmo avanzamos? | Detectar desaceleración temprana |
| **Impacto de Release** | ¿Qué KRs se desplegaron esta semana? | Comunicar valor a stakeholders |
| **Red de ADRs** | ¿Qué decisiones arquitectónicas soportan este KR? | Trazabilidad de decisiones técnicas |
| **Alertas** | ¿Qué KRs no tienen actividad hace >2 semanas? | Intervenir proactivamente en estancamientos |
| **Distracciones** | ¿Qué % de trabajo NO tiene KR-ID? | Decidir sobre Objetivo Cero (20% capacidad) |

**Principio:** Tecnología-agnóstico. Funciona con cualquier sistema que pueda extraer metadatos estructurados y agregarlos.

## Niveles de Madurez (Implementación Incremental)

### Nivel 1: Manual (Baseline)
**Artefactos:** Convenciones documentadas (formato commit, ADR con KR)  
**Esfuerzo:** 1 semana (documentación + capacitación)  
**Beneficio:** Trazabilidad consultable manualmente

### Nivel 2: Validación Automatizada
**Artefactos:** Git hooks + Pipeline que extrae KR-IDs + Release notes auto  
**Esfuerzo:** 2-4 semanas (1 desarrollador)  
**Beneficio:** Adherencia garantizada + visibilidad en releases

### Nivel 3: Dashboard en Tiempo Real
**Artefactos:** ETL que agrega metadatos + Dashboard con 6 vistas + API de consulta  
**Esfuerzo:** 6-10 semanas (2 desarrolladores)  
**Beneficio:** Visibilidad continua + detección proactiva de estancamientos

### Nivel 4: Análisis Predictivo
**Artefactos:** Modelos que predicen cumplimiento de KR + Alertas de riesgo + Recomendaciones  
**Esfuerzo:** 12+ semanas (equipo de datos)  
**Beneficio:** Gestión anticipatoria de portafolio

**Regla:** NO saltar niveles. Validar valor en Nivel N antes de invertir en Nivel N+1.

## Alternativas de Implementación

### Opción A: Herramientas Comerciales
**Ventajas:** Funcionalidad inmediata, soporte vendor  
**Desventajas:** Costo, vendor lock-in, adaptación al modelo ASTA-Kore  
**Ejemplos:** Jira, Azure DevOps, Linear, Shortcut

### Opción B: Solución Custom
**Ventajas:** Control total, adaptable al modelo exacto, sin lock-in  
**Desventajas:** Esfuerzo de desarrollo inicial, mantenimiento  
**Componentes genéricos:** Parser de commits, base de datos de metadatos, API de consulta, dashboards

### Opción C: Híbrida (Recomendada)
**Enfoque:** Usar herramienta comercial para gestión de US, scripts custom para trazabilidad específica ASTA-Kore  
**Ejemplo:** Jira para historias + scripts Python que extraen KR-IDs y generan dashboards custom

## Anti-Patrones

| Anti-Patrón | Síntoma | Consecuencia | Corrección |
|:---|:---|:---|:---|
| **Trazabilidad retrospectiva** | Documentar vínculos después del hecho | Metadatos inexactos, esfuerzo desperdiciado | Convenciones desde commit 1 |
| **Granularidad excesiva** | Trackear cada línea de código | Sobrecarga sin valor | Focus en unidades de valor (US, ADR) |
| **Dashboard vanity** | Métricas que no informan decisiones | Esfuerzo desperdiciado | Solo trackear lo accionable (I-3) |
| **Infraestructura prematura** | Construir Nivel 4 sin validar Nivel 1 | Alto riesgo de abandono | Implementación incremental obligatoria |
| **Control jerárquico** | Usar como herramienta de micro-gestión | Destruye autonomía de equipos | Énfasis en alineación lateral (I-1) |
| **Ignorar distracciones** | No trackear trabajo sin KR-ID | Pérdida de visibilidad sistémica | Vista "Distracciones" obligatoria (I-4) |

## Integración con ASTA-Kore

| Artefacto | Rol en Trazabilidad | Visibilidad Generada |
|:---|:---|:---|
| **Canvas EV (Caja 9)** | Fuente de verdad de OKRs activos del trimestre | Qué KRs están "en juego" |
| **Story Map** | Vincula KRs → Rebanadas → Historias | Qué historias contribuyen a qué KR |
| **ADR** | Vincula decisiones arquitectónicas → KRs motivadores | Por qué tomamos decisión X para KR Y |
| **CVC** | Presenta evidencia de progreso por KR con métricas reales | Progreso medido, no estimado |
| **Tablero de Flujo** | Visibilidad diaria de trabajo activo con tags de KR | Qué se está trabajando ahora mismo |
| **Retrospectiva** | Analiza % de trabajo con vs sin KR-ID | Aprender sobre distracciones sistemáticas |

## Criterios de Éxito

**Pregunta de Validación (responder en <30 segundos):**

- [ ] ¿Qué commits/releases contribuyeron a KR-X?
- [ ] ¿Qué KR motivó el cambio Y?
- [ ] ¿Qué KRs están sin actividad hace >2 semanas?
- [ ] ¿Qué ADRs soportan la decisión para KR-Z?
- [ ] ¿Qué % del trabajo del trimestre NO tiene KR-ID (distracciones)?

**Si respuesta = "Necesito 30 minutos de búsqueda manual"** → Incrementar nivel de madurez.

**Si respuesta = "No tenemos esos datos"** → Estamos en Nivel 0. Comenzar con Nivel 1 (convenciones manuales).