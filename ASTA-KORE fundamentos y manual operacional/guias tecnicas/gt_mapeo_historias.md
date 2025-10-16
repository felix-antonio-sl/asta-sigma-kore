# GT-STORY-MAP-001: Técnicas de Mapeo de Historias

**ID:** GT-STORY-MAP-001 | **Versión:** 1.0 | **Dominio:** Δ-T  

## Invariantes Fundamentales

**I-1. Story as Placeholder:** Historias NO son especificaciones, son placeholders para conversación  
**I-2. Conversation > Documentation:** Conversación en vivo es más barata y efectiva que documentos escritos  
**I-3. Business Benefit Required:** TODA historia DEBE tener valor de negocio explícito. Sin valor = no construir  
**I-4. Transitory Nature:** Historias son tokens transitorios de corta vida. Prohibido perfeccionarlas  
**I-5. Vertical Slicing:** Rebanadas entregan valor end-to-end, nunca por capas técnicas horizontales  
**I-6. OKRs-First:** Preguntar "¿Cómo avanzamos OKRs?" no "¿Qué quemamos del backlog?"  

## Anatomía del Story Map

```plain
ESPINA: [Descubrir] → [Postular] → [Evaluar] → [Notificar]
            ↓             ↓            ↓            ↓
R1:     [Buscar]     [Form básico] [Validar]   [Email]
R2:     [Filtros]    [Autofill]    [IA Score]  [SMS+Portal]
R3:     [Recom.]     [Anexos]      [Panel]     [Analytics]
```

**Elementos:**  

1. **Espina Dorsal:** Actividades principales del usuario (horizontal). Verbos de acción, NO etapas técnicas  
2. **Historias:** Tareas específicas bajo cada actividad (vertical). Placeholders para conversaciones  
3. **Rebanadas:** Agrupaciones horizontales que entregan valor completo de punta a punta  
4. **Rebanada 1 = Esqueleto Andante:** Mínimo para completar el viaje del usuario con valor real  

## Patrones de Slicing

| Patrón | Cuándo Aplicar | Ejemplo |
|:---|:---|:---|
| **Persona** | Múltiples tipos de usuarios | R1: Individual / R2: Apoderado / R3: Org |
| **Regla** | Variantes por condición | R1: Happy path / R2: Validaciones / R3: Excepciones |
| **Dato** | Complejidad de campos | R1: Texto / R2: Validación API / R3: Archivos |
| **Plataforma** | Multicanal | R1: Web / R2: Mobile / R3: API |
| **Escala** | Performance creciente | R1: 100/día / R2: 10K/día / R3: 100K/día |

**Técnica SPIDR:** Spike, Path, Interface, Data, Rule (aplicar cuando historia >5 días)

## Esqueleto Andante: 5 Criterios

**Restricción:** Rebanada 1 DEBE cumplir los 5 criterios antes de iniciar Rebanada 2.

- [ ] **Flujo completo:** Recorre inicio→fin sin gaps. Usuario completa su objetivo
- [ ] **Valor medible:** Existe métrica observable de éxito (tiempo, conversión, satisfacción)
- [ ] **Desplegable:** Sistema real en producción con datos reales, NO prototipo
- [ ] **Genera datos:** Métricas/logs implementados desde día 1 para medir outcomes
- [ ] **Versión simple:** Camino feliz sin excepciones ni optimizaciones prematuras

**Regla de capacidad:** Si Esqueleto estimado >8 semanas → aplicar slicing adicional hasta cumplir restricción.

## Facilitación del Taller (2-3h)

**Participantes:** PO (lidera), Equipo completo, Usuario/stakeholder (ideal)

### Fase 1: Narrar Viaje (30m)

- PO cuenta historia del usuario inicio→fin
- Equipo identifica actividades principales (verbo + sustantivo)
- Ordenar horizontalmente = Espina Dorsal

### Fase 2: Desglosar Historias (45m)

- Por actividad, proponer historias específicas
- Formato: "Como [rol], quiero [acción], para [beneficio]"
- Pegar verticalmente bajo cada actividad
- NO estimar aún

### Fase 3: Identificar Esqueleto (30m)

- Marcar historias de Rebanada 1
- Aplicar 5 criterios rigurosamente
- Eliminar "por si acaso"
- Validar: ¿Entrega valor punta a punta?

### Fase 4: Priorizar Rebanadas (30m)

- Agrupar historias restantes en R2, R3, N
- Anclar cada rebanada en OKR activo
- Ordenar por impacto en KR

### Fase 5: Estimar y Validar (30m)

- Planning Poker solo R1
- Validar cabe en 4-8 semanas
- Si no: Volver a Fase 3 con slicing adicional

## Vinculación a OKRs

**Formato estándar:**

```markdown
## Rebanada 1: Esqueleto Andante
**KR:** KR-Q1-02: Reducir tiempo de postulación 15→5 min
**Impacto:** Baseline ~10 min (primera versión digital)
**Estimación:** 6 semanas

## Rebanada 2: Optimización UX
**KR:** Mismo KR-Q1-02
**Impacto:** Meta <5 min (con autofill + validaciones)
**Estimación:** 4 semanas
```

**Regla:** Si rebanada NO contribuye a OKR activo → Rechazar o mover a Objetivo Cero (20% capacidad).

## Anti-Patrones

| Anti-Patrón | Síntoma | Corrección |
|:---|:---|:---|
| **WBS técnico** | Historias son tareas técnicas ("Crear tabla") | Re-enmarcar en valor usuario. Aplicar I-3 |
| **Esqueleto inflado** | R1 con 50 historias, 6+ meses | Slicing radical. Solo 20% del total debe ir a R1 |
| **Sin OKR** | Rebanadas sin vinculación estratégica | Aplicar I-6: OKRs-First. Rechazar o Objetivo Cero |
| **Slicing horizontal** | Rebanadas por capas (backend/frontend) | Slicing vertical obligatorio (I-5) |
| **Mapa estático** | Nunca actualizado post-taller | Revisar en retrospectivas. "¿Reflejó realidad?" |
| **Estimación prematura** | Estimar todo antes de Esqueleto | Solo estimar R1 inicialmente |

## Checklist de Calidad

**Estructura:**

- [ ] Espina cubre flujo usuario completo
- [ ] Actividades = verbos de acción usuario
- [ ] Historias agrupadas bajo actividad correcta

**Esqueleto Andante:**

- [ ] Cumple 5 criterios (restricción de pull)
- [ ] Estimado 4-8 semanas (restricción de capacidad)
- [ ] Vinculado a KR activo
- [ ] Formato "Como [rol], quiero..."

**Rebanadas Adicionales:**

- [ ] Priorizadas por impacto en KR
- [ ] Patrón de slicing aplicado coherentemente
- [ ] Cada una entrega valor incremental observable

**Facilitación:**

- [ ] Participaron PO + Equipo + Usuario
- [ ] Duración 2-3h
- [ ] Resultado documentado
