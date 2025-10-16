# GT-CI-CD-001: Pipelines de Integración y Despliegue Continuo

**ID:** GT-CI-CD-001  
**Versión:** 2.0  
**Dominio:** Δ-O (Flujo Operacional)  
**Protocolo:** 3.2 - Gestión del Flujo de Entrega

## Invariante Central

**El pipeline es la única forma de desplegar a producción. No hay excepciones.**

Su propósito es automatizar la verificación de calidad y reducir el tiempo entre commit y producción.

## Fundamentos: Métricas DORA

### Métricas Primitivas de Flujo de Entrega

| Métrica | Definición | Objetivo |
|---------|------------|----------|
| **Deployment Frequency** | Deploys a producción por día | >1 deploy/día |
| **Lead Time for Changes** | Tiempo desde commit hasta producción | <1 hora |
| **Change Failure Rate** | % de deploys que requieren rollback | <5% |
| **Time to Restore** | Tiempo para recuperarse de falla | <1 hora |

**Fuente:** DORA Metrics (DevOps Research and Assessment)

### Criterio de Decisión para Stages del Pipeline

**Para cualquier stage del pipeline:**

```plain
¿Reduce Change Failure Rate O reduce Lead Time?
├─ SÍ  → Mantener/Optimizar
└─ NO  → Eliminar
```

**Ejemplos:**

- Stage de security scan que detecta vulnerabilidades → Mantener (reduce CFR)
- Stage de lint que falla en <30s → Mantener (bajo impacto en LT, alto en CFR)
- Stage de documentación que nadie lee → Eliminar (no impacta métricas)
- Stage de tests E2E que toma 2 horas → Optimizar o mover a post-deploy

## Principios

### Principio 1: Trunk-Based Development

**Regla:** Todos comitean a `main`. Branches de feature viven <2 días.

**Ventaja:** Reduce conflictos de merge, acelera feedback.

### Principio 2: Pipeline as Code

**Regla:** El pipeline está versionado en el repo, no en la UI de CI.

**Ventaja:** Cambios al pipeline se revisan como código.

### Principio 3: Fail Fast

**Regla:** Tests rápidos primero, lentos después.

**Orden recomendado:**

1. Lint (30s)
2. Unit tests (2 min)
3. Integration tests (5 min)
4. E2E tests (10 min)
5. Deploy to staging
6. Smoke tests (2 min)
7. Deploy to production

**Ventaja:** Feedback en <3 min para 90% de errores.

## Estrategias de Despliegue

### Estrategia 1: Rolling Update (Por Defecto)

**Proceso:**

1. Crear nuevos pods con versión nueva
2. Esperar que estén healthy
3. Terminar pods con versión vieja
4. Repetir hasta completar

**Ventaja:** Sin downtime  
**Desventaja:** Versión vieja y nueva coexisten temporalmente

### Estrategia 2: Blue-Green

**Proceso:**

1. Desplegar versión nueva (green) en paralelo a vieja (blue)
2. Ejecutar smoke tests en green
3. Cambiar tráfico de blue a green
4. Mantener blue por 1 hora para rollback rápido

**Ventaja:** Rollback instantáneo  
**Desventaja:** Requiere 2× recursos temporalmente

### Estrategia 3: Canary

**Proceso:**

1. Desplegar nueva versión a 5% de tráfico
2. Monitorear métricas por 30 min
3. Si OK, aumentar a 25%
4. Si OK, aumentar a 50%
5. Si OK, aumentar a 100%

**Ventaja:** Riesgo minimizado  
**Desventaja:** Despliegue más lento

## Feature Flags

### Propósito

**Problema:** Código nuevo en producción pero feature no lista para usuarios.

**Solución:** Feature flag para activar/desactivar sin redesplegar.

### Tipos de Flags

| Tipo | Propósito | Duración |
|------|-----------|----------|
| **Release Flag** | Activar feature nueva gradualmente | Temporal (eliminar después de rollout) |
| **Ops Flag** | Circuit breaker para dependencias | Permanente |
| **Experiment Flag** | A/B testing | Temporal (hasta tener datos) |

**Regla:** Eliminar flags de release después de 2 semanas en 100%.

## Rollback

### Rollback Automático

**Trigger:** Métricas de salud degradadas.

**Criterio:** Si error rate >5% durante 5 minutos → rollback automático

### Rollback Manual

**Tiempo de Rollback:** <5 minutos (objetivo)

## Ambientes

### Topología Mínima

| Ambiente | Propósito | Datos | Despliegue |
|----------|-----------|-------|------------|
| **Desarrollo** | Desarrollo local | Datos sintéticos | Manual |
| **Staging** | Pre-producción | Copia anonimizada de producción | Automático (cada commit a main) |
| **Producción** | Usuarios reales | Datos reales | Automático (después de smoke tests) |

### Paridad de Ambientes

**Regla:** Staging debe ser idéntico a producción.

**Diferencias permitidas:**

- Escala (staging: 2 pods, prod: 10 pods)
- Datos (staging: anonimizados, prod: reales)

**Diferencias prohibidas:**

- Versión de runtime
- Configuración de servicios
- Topología de red

## Integración con ASTA-Kore

**Referencia:** Ver `protocolos.md` §3.2 para proceso completo de gestión del flujo de entrega.

**Métricas DORA → CVC:** Las métricas DORA se reportan trimestralmente en el CVC como evidencia de salud operacional.
