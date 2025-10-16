# Guía de Decisión: Priorización de Inversión en Capacidades

**ID:** GD-CAPACITY-001  
**Versión:** 3.0  
**Dominio:** Δ-T (Flujo Táctico)  
**Propósito:** Decidir en qué capacidad invertir primero cuando los recursos son limitados.

## Principio Invariante: OKR-First

**Regla Fundamental:** Solo se prioriza trabajo que contribuye a un Resultado Clave (KR) activo del trimestre.

**Fundamento:** El backlog se subordina a los OKRs. Primero se define el resultado (KR), luego se crea el trabajo. Esto garantiza que cada esfuerzo esté anclado en la estrategia y sea medible.

**Excepción:** Trabajo sin KR asociado va al **"Objetivo Cero"** (deuda técnica, exploración, mejora de herramientas) con 20% de capacidad reservada obligatoriamente.

## Pregunta Estratégica

**¿En qué capacidad invertir primero cuando los recursos son limitados?**

## Árbol de Decisión

### Pregunta 0: ¿Esta capacidad contribuye a un KR activo del trimestre?

**Verificación:** ¿Puedo identificar el KR específico (ej. "KR-2025-Q1-02: Reducir tiempo de postulación de 15 a 5 minutos") al que contribuye?

- **SÍ** → **CONTINUAR** a Pregunta 1. Es trabajo priorizable.
- **NO** → **EVALUAR OBJETIVO CERO**:
  - ¿Es deuda técnica crítica, exploración o mejora de herramientas?
    - **SÍ** → Asignar al 20% de capacidad reservada para Objetivo Cero.
    - **NO** → **RECHAZAR**. No priorizar hasta que se formule un KR que lo justifique.

### Pregunta 1: ¿La capacidad desbloquea valor inmediato medible en el KR?

**Verificación:** ¿Puedo medir impacto en el KR asociado en <4 semanas?

- **SÍ** → **PRIORIDAD ALTA**. Continuar a Pregunta 2.
- **NO** → **PRIORIDAD MEDIA/BAJA**. Evaluar si es habilitadora.

### Pregunta 2: ¿Es un cuello de botella crítico en el flujo de valor?

**Verificación:** ¿Múltiples historias están bloqueadas esperando esta capacidad?

- **SÍ** → **PRIORIDAD MÁXIMA**. Ejecutar inmediatamente.
- **NO** → **PRIORIDAD ALTA**. Continuar a Pregunta 3.

### Pregunta 3: ¿El costo de NO tenerla crece exponencialmente?

**Verificación:** ¿Cada semana de retraso aumenta significativamente el costo/riesgo?

- **SÍ** → **PRIORIDAD MÁXIMA**. Ejecutar inmediatamente.
- **NO** → **PRIORIDAD ALTA**. Priorizar por ROI.

## Matriz de Priorización: Valor vs. Esfuerzo

```plain
         │                       │
  Alto   │   ┌──────────┐    │   ┌──────────┐
  Valor  │   │  HACER   │    │   │PLANIFICAR│
         │   │    YA    │    │   │  (Q+1)   │
         │   └──────────┘    │   └──────────┘
 ─────────┼───────────────────────┼───────────────────────
  Bajo   │   ┌──────────┐    │   ┌──────────┐
         │   │  HACER   │    │   │    NO    │
         │   │ (Quick  │    │   │  HACER   │
         │   │  Wins)  │    │   │         │
         │   └──────────┘    │   └──────────┘
         └───────────────────────┴───────────────────────
           Bajo Esfuerzo          Alto Esfuerzo
```

**Fórmula de Priorización (OKR-First):**

```
Score = (Impacto_en_KR × Urgencia) / Esfuerzo
```

**Donde:**

- **Impacto_en_KR** (1-10): Δ esperado en el Resultado Clave asociado
  - 10 = Mueve el KR >50% hacia el objetivo
  - 7-9 = Mueve el KR 25-50%
  - 4-6 = Mueve el KR 10-25%
  - 1-3 = Mueve el KR <10%
  - 0 = No contribuye a ningún KR activo → **Rechazar o asignar a Objetivo Cero**

- **Urgencia** (1-3): Costo de retraso
  - 3 = Cada semana de retraso aumenta costo/riesgo significativamente
  - 2 = Costo de retraso moderado
  - 1 = Puede esperar sin penalización

- **Esfuerzo** (1-20): Semanas estimadas de implementación

**Ejemplo:**

- Capacidad A: Impacto_en_KR=8, Urgencia=3, Esfuerzo=2 → Score = (8×3)/2 = **12**
- Capacidad B: Impacto_en_KR=5, Urgencia=2, Esfuerzo=8 → Score = (5×2)/8 = **1.25**
- **Decisión:** Priorizar Capacidad A

## Tipos de Capacidades

### 1. Capacidades de Valor Directo

**Definición:** Entregan valor inmediato a usuarios finales y mueven un KR activo.  
**Criterio:** Impacto medible en KR del trimestre (Impacto_en_KR ≥ 4).  
**Requisito:** Debe estar explícitamente vinculada a un KR en el Mapeo de Historias.

### 2. Capacidades Habilitadoras

**Definición:** Desbloquean múltiples capacidades de valor.  
**Criterio:** Número de capacidades de valor que desbloquea.  
**Regla:** Implementar solo cuando ≥3 capacidades de valor las requieren.

### 3. Capacidades de Deuda Técnica (Objetivo Cero)

**Definición:** Reducen fricción operacional o riesgo técnico sin contribuir directamente a un KR del trimestre.  
**Criterio:** Costo de NO hacerlo (bugs, lentitud, riesgo, sostenibilidad del equipo).  
**Regla Obligatoria:** Reservar 20% de capacidad para Objetivo Cero.

**Ejemplos válidos de Objetivo Cero:**

- Pago de deuda técnica crítica (refactorización, actualización de dependencias)
- Mejora de herramientas del equipo (automatización de tests, optimización de pipeline)
- Exploración de nuevas tecnologías (spikes, prototipos de aprendizaje)
- Formación y capacitación del equipo

**Regla:** Trabajo de Objetivo Cero NO compite con trabajo de KRs. Tiene presupuesto separado.

## Patrones de Priorización

### Patrón 1: Esqueleto Andante Primero

**Principio:** Implementar el flujo de valor de punta a punta antes de optimizar.  
**Regla:** No optimizar antes de validar que el flujo básico funciona.

### Patrón 2: Desbloquear Cuellos de Botella

**Principio:** Atacar primero lo que bloquea a más personas.  
**Regla:** Si ≥3 historias están bloqueadas por la misma dependencia, esa dependencia es prioridad máxima.

### Patrón 3: Reducir Variabilidad

**Principio:** Priorizar capacidades que estabilizan el sistema.  
**Regla:** Si >30% de capacidad se gasta en bugs/incidentes, priorizar calidad sobre features.

## Integración con ASTA-Kore

| Artefacto | Acción |
|:---|:---|
| **OKRs (Caja 9 Canvas EV)** | Cada capacidad de valor directo DEBE estar vinculada a un KR específico |
| **Mapeo de Historias** | Historias se agrupan por KR y se ordenan por Score de priorización |
| **Tablero de Flujo** | Columna "Opciones" muestra KR asociado a cada historia |
| **CVC** | Progreso de KRs se reporta mostrando qué capacidades contribuyeron |
| **Objetivo Cero** | 20% de capacidad visible en Tablero como trabajo sin KR |

**Referencia Detallada:** Ver `protocolos.md` §2.2 (Mapeo de Historias) para matriz Valor/Esfuerzo completa.

## Anti-Patrones

| Anti-Patrón | Síntoma | Solución |
|:---|:---|:---|
| **Gold Plating** | Optimizar antes de validar | Esqueleto Andante primero |
| **HIPPO** | Priorizar por opinión del jefe sin ancla en KRs | Priorizar por Impacto_en_KR medible |
| **Trabajo Huérfano** | Historias sin KR asociado en el backlog | Rechazar o mover a Objetivo Cero |
| **Deuda Infinita** | 0% de capacidad para deuda técnica | Reservar 20% obligatorio (Objetivo Cero) |
| **Parálisis de Análisis** | Semanas decidiendo prioridades | Timebox: 1 hora de priorización/semana |
| **KR Inflado** | Vincular todo trabajo a KRs forzadamente | Usar Objetivo Cero para trabajo legítimo sin KR |
