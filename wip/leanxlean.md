# **LEAN² - Destilación Estructural Mínima**

**Versión**: 1.0  
**Fecha**: 2025-10-12  
**Propósito**: Reducción de Lean a invariantes operacionales, eliminando dependencias culturales

---

## **1. NÚCLEO AXIOMÁTICO**

### 1.1 Definición del sistema

Un **sistema de trabajo** es una función que transforma demanda en resultado mediante actividades secuenciales o paralelas.

### 1.2 Tres invariantes fundamentales

| Invariante | Definición formal | Métrica primitiva |
|------------|-------------------|-------------------|
| **FLUJO** | Minimizar latencia entre demanda y entrega | `T_entrega - T_demanda` |
| **VISIBILIDAD** | Estado del sistema observable en tiempo real | `% trabajo con estado explícito` |
| **ADAPTACIÓN** | Modificación del sistema basada en medición | `Δ métrica / intervención` |

---

## **2. MECANISMOS OPERACIONALES**

### 2.1 Pull Constraint (Restricción de arrastre)

**Regla**: No iniciar trabajo sin capacidad de completarlo.

**Implementación mínima**:

```
IF capacidad_disponible > 0 AND demanda_pendiente > 0
THEN iniciar_trabajo()
ELSE esperar()
```

**Indicador**: Work In Progress (WIP) ≤ Capacidad del cuello de botella

### 2.2 Feedback Loop (Ciclo de retroalimentación)

**Secuencia**:

1. **Medir**: Capturar estado actual del flujo
2. **Identificar**: Localizar restricción dominante
3. **Intervenir**: Modificar restricción o flujo
4. **Verificar**: Medir impacto de intervención

**Frecuencia**: Proporcional a la variabilidad del sistema

---

## **3. CRITERIO DE DECISIÓN ÚNICO**

Para cualquier elemento del sistema (actividad, estructura, artefacto, rol):

```
¿Reduce latencia O aumenta capacidad de flujo?
├─ SÍ  → Mantener/Amplificar
└─ NO  → Eliminar/Rediseñar
```

**Corolario**: Todo lo que no se puede medir contra flujo es candidato a eliminación.

---

## **4. TAXONOMÍA DE DESPERDICIO** (Culturalmente neutra)

| Tipo | Definición | Ejemplo |
|------|------------|---------|
| **Espera** | Trabajo bloqueado sin transformación | Aprobaciones, dependencias externas |
| **Sobreproceso** | Actividad que excede requisito mínimo | Documentación no consumida |
| **Transporte** | Movimiento de información sin transformación | Handoffs entre equipos |
| **Inventario** | Trabajo iniciado no completado | Features en desarrollo sin deploy |
| **Movimiento** | Búsqueda de información o contexto | Reuniones de sincronización |
| **Defectos** | Retrabajo por error | Bugs, malentendidos de requisitos |
| **Sobreproducción** | Crear más de lo demandado | Features no solicitadas |

**Prioridad de eliminación**: Ordenar por impacto en latencia medida.

---

## **5. SEPARACIÓN: CULTURA vs. ESTRUCTURA**

### 5.1 Elementos culturales japoneses (NO esenciales)

| Concepto | Origen cultural | Equivalente estructural |
|----------|----------------|-------------------------|
| Kaizen | Filosofía de mejora continua | Feedback loop con frecuencia definida |
| Kata | Ritual de práctica | Protocolo verificable con checklist |
| Muda/Mura/Muri | Taxonomía lingüística | Clasificación funcional de desperdicio |
| Genchi genbutsu | "Ve y observa" | Verificación empírica en el punto de trabajo |
| Hansei | Reflexión autocrítica | Retrospectiva con métricas de flujo |
| Nemawashi | Consenso previo | Decisión explícita con criterios documentados |
| Respeto por personas | Valor implícito | Diseño de sistema que preserve agencia |

### 5.2 Por qué interfieren en occidente

1. **Ambigüedad semántica**: Términos cargados de contexto cultural requieren interpretación
2. **Ritualización**: Prácticas se convierten en ceremonia sin conexión con métricas
3. **Jerarquía implícita**: Asume estructuras de poder y consenso no universales
4. **Filosofía vs. Ingeniería**: Mezcla valores aspiracionales con mecanismos operacionales

---

## **6. IMPLEMENTACIÓN MÍNIMA VIABLE**

### 6.1 Requisitos del sistema

1. **Visualización de flujo**: Tablero con estados discretos del trabajo
2. **Límite de WIP**: Restricción explícita por estado
3. **Métrica de latencia**: Tiempo de ciclo por unidad de trabajo
4. **Cadencia de revisión**: Frecuencia fija para analizar métricas

### 6.2 Protocolo de arranque

```
PASO 1: Mapear flujo actual
  └─ Identificar estados discretos del trabajo (To Do → Doing → Done mínimo)

PASO 2: Establecer límite WIP
  └─ WIP_inicial = Capacidad_equipo × 1.5 (ajustar según medición)

PASO 3: Medir latencia baseline
  └─ Capturar tiempo de ciclo durante 2-4 semanas

PASO 4: Identificar restricción
  └─ Estado con mayor acumulación = cuello de botella

PASO 5: Intervenir
  └─ Aumentar capacidad en restricción O reducir demanda entrante

PASO 6: Medir impacto
  └─ Comparar latencia post-intervención vs. baseline

REPETIR desde PASO 4
```

---

## **7. ANTI-PATRONES COMUNES**

| Anti-patrón | Descripción | Corrección |
|-------------|-------------|------------|
| **Lean como filosofía** | Adoptar valores sin métricas | Anclar en latencia medible |
| **Herramientas sin sistema** | Usar Kanban sin límite WIP | Implementar restricción de pull |
| **Mejora sin medición** | Cambios sin verificar impacto | Establecer baseline antes de intervenir |
| **Optimización local** | Mejorar etapa sin ver flujo total | Optimizar restricción dominante |
| **Rituales vacíos** | Retrospectivas sin cambios | Vincular retrospectiva a métrica de flujo |

---

## **8. VERIFICACIÓN DE IMPLEMENTACIÓN**

### 8.1 Checklist de validación

- [ ] ¿Existe visualización de flujo con estados discretos?
- [ ] ¿Hay límite explícito de WIP por estado?
- [ ] ¿Se mide tiempo de ciclo por unidad de trabajo?
- [ ] ¿Existe cadencia fija de revisión de métricas?
- [ ] ¿Las intervenciones se basan en datos de flujo?
- [ ] ¿Se puede identificar la restricción dominante?
- [ ] ¿El equipo puede explicar por qué existe cada actividad?

### 8.2 Señales de éxito

1. **Latencia decreciente**: Tiempo de ciclo reduce en el tiempo
2. **Predictibilidad creciente**: Varianza de latencia reduce
3. **Restricciones rotativas**: Cuello de botella cambia (indica mejora sistémica)
4. **Eliminación continua**: Actividades se remueven sin impacto negativo

---

## **9. EXTENSIONES OPCIONALES**

### 9.1 Cadencia de valor (Value Stream)

Mapear flujo completo desde demanda hasta valor entregado, incluyendo etapas fuera del equipo.

### 9.2 Clases de servicio

Diferenciar tipos de trabajo con políticas de WIP y latencia distintas (urgente, estándar, exploratorio).

### 9.3 Métricas compuestas

- **Throughput**: Unidades completadas por unidad de tiempo
- **Flow Efficiency**: `Tiempo_trabajo_activo / Tiempo_total`
- **Predictibilidad**: Percentil 85 de tiempo de ciclo

---

## **10. PRINCIPIOS DE DISEÑO DE ESTE ARTEFACTO**

1. **Minimalismo**: Solo elementos necesarios para operación
2. **Neutralidad cultural**: Sin dependencias de contexto japonés
3. **Verificabilidad**: Cada afirmación es medible o falsable
4. **Completitud**: Suficiente para implementar sin fuentes adicionales
5. **Ortogonalidad**: Componentes independientes, sin redundancia

---

## **GLOSARIO MÍNIMO**

- **Flujo**: Movimiento de trabajo a través de estados hasta completitud
- **Latencia**: Tiempo entre inicio y completitud de una unidad de trabajo
- **WIP (Work In Progress)**: Trabajo iniciado pero no completado
- **Restricción**: Etapa que limita la capacidad total del sistema
- **Pull**: Iniciar trabajo cuando hay capacidad, no cuando hay demanda
- **Desperdicio**: Actividad que no transforma trabajo hacia completitud

---

## **REFERENCIAS ESTRUCTURALES**

Este artefacto destila:

- **Theory of Constraints** (Goldratt): Identificación de restricciones
- **Queueing Theory**: Relación entre WIP, throughput y latencia (Ley de Little)
- **Lean Manufacturing** (Ohno/Womack): Eliminación de desperdicio
- **Kanban** (Anderson): Visualización y límite de WIP

Eliminando:

- Terminología japonesa no esencial
- Valores culturales específicos
- Rituales sin conexión directa a métricas
- Filosofía aspiracional sin mecanismo operacional

---

**Fin del artefacto**

*Este documento es autosuficiente para implementar Lean sin dependencias culturales.*

---

## **Resumen de la destilación**

He creado **LEAN²**, una versión minimal de Lean que:

1. **Reduce a 3 invariantes**: Flujo, Visibilidad, Adaptación
2. **Define 2 mecanismos**: Pull Constraint y Feedback Loop
3. **Establece 1 criterio de decisión**: ¿Reduce latencia o aumenta capacidad?
4. **Separa explícitamente** elementos culturales japoneses de invariantes estructurales
5. **Proporciona protocolo de implementación** verificable y medible
