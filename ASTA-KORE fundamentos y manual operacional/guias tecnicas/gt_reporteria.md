# GT-REPORTERIA-001: Vistas Materializadas para Stakeholders Externos

**ID:** GT-REPORTERIA-001  
**Versión:** 2.0  
**Dominio:** Σ-O (Diseño Operacional) + Δ-O (Flujo Operacional)  
**Protocolo:** 3.3 - Transparencia Radical

## Invariante Central

**La reportería tradicional es una vista materializada de artefactos vivos, no una fuente de verdad paralela.**

Su propósito es **traducir** la realidad operacional a formatos consumibles por stakeholders externos, sin crear duplicación ni fricción.

## Problema: Doble Contabilidad

### Anti-Patrón Tradicional

```plain
Sistema Real (Jira, GitHub) ≠≠≠ Reportería (Excel, PPT)
        ↓                              ↓
   Fuente de Verdad #1         Fuente de Verdad #2
        ↓                              ↓
   Divergencia                     Fricción
```

**Consecuencias:**

- ❌ Datos desactualizados en reportes
- ❌ Tiempo perdido en "preparar reportes"
- ❌ Decisiones basadas en información incorrecta

### Patrón ASTA-Kore: Vista Materializada

```plain
Fuente de Verdad Única (Artefactos KORE)
• Canvas de EV
• OKRs en CVC
• Tablero de Flujo
• ADRs
        ↓
(Transformación automatizada)
        ↓
Vista Ejecutiva (PPT, PDF) | Vista Técnica (Dashboard)
```

**Principios:**

1. ✅ **Una sola fuente de verdad:** Los artefactos KORE
2. ✅ **Generación automatizada:** Scripts, no trabajo manual
3. ✅ **Solo lectura:** Las vistas no se editan, se regeneran
4. ✅ **Frecuencia definida:** Semanal, mensual, trimestral

## Tipos de Vistas Materializadas

### Vista 1: Reporte Ejecutivo Mensual

**Audiencia:** Directores, Autoridades  
**Frecuencia:** Mensual (post-CVC)  
**Formato:** Documento de 2-3 páginas

**Contenido Mínimo:**

- Estado de OKRs (gráfico de progreso)
- Hitos logrados este mes
- Bloqueos críticos (si existen)
- Métricas de flujo (Cycle Time, Throughput)
- Disponibilidad del sistema (uptime %)
- Hitos planificados próximo mes
- Riesgos identificados

**Fuente de Datos:**

- Canvas de EV → OKRs
- Tablero de Flujo → Métricas
- CVC → Hitos y bloqueos

### Vista 2: Dashboard Operacional (Tiempo Real)

**Audiencia:** Equipo técnico, Product Owners  
**Frecuencia:** Tiempo real  
**Formato:** Dashboard web

**Contenido Mínimo:**

- Métricas DORA (Deployment Frequency, Lead Time, CFR, MTTR)
- SLOs actuales vs. objetivo
- WIP actual vs. límite
- Throughput semanal
- Restricciones identificadas

**Fuente de Datos:**

- Pipeline CI/CD → Métricas DORA
- Sistema de observabilidad → SLOs
- Tablero de Flujo → WIP, Throughput

### Vista 3: Informe Trimestral (CVC)

**Audiencia:** Nodo de Gobernanza, Stakeholders  
**Frecuencia:** Trimestral  
**Formato:** Documento estructurado

**Contenido Mínimo:**

- Progreso de OKRs (evidencia)
- Demos realizadas
- Métricas de salud (flujo, técnicas)
- Restricciones dominantes identificadas
- Experimentos de mejora ejecutados
- Plan para próximo trimestre

**Fuente de Datos:**

- Canvas de EV → OKRs
- CVC → Evidencia, demos
- Retrospectivas → Restricciones, experimentos

## Principio de Automatización

**Regla:** La generación de reportes debe ser automatizable.

**Patrón:**

```plain
Artefactos KORE (YAML, Markdown)
        ↓
Script de transformación
        ↓
Vista materializada (PDF, HTML, Dashboard)
```

**Criterio de éxito:** Un stakeholder puede regenerar el reporte en <5 minutos sin intervención manual.

## Integración con ASTA-Kore

**CVC → Reportes:** El informe trimestral del CVC es la fuente para reportes ejecutivos.

**Transparencia Radical:** Todos los reportes deben ser accesibles a todos los stakeholders (sin información sensible).

**Referencia:** Ver `protocolos.md` §2.3 para proceso completo del CVC.
