# GT-BOUNDARIES-001: Trazado de Fronteras entre EVs

**ID:** GT-BOUNDARIES-001  
**Versión:** 2.0  
**Dominio:** Σ-T (Diseño Táctico)  
**Protocolo:** 2.1 - Diseño de Arquitectura

## Invariante Central

**Las fronteras entre EVs son contratos explícitos, no líneas en un diagrama.**

Una frontera bien trazada maximiza autonomía interna y minimiza acoplamiento externo.

## Principios de Trazado

### Principio 1: Cohesión de Propósito

**Regla:** Todo lo que sirve al mismo propósito de valor debe estar dentro de la misma frontera.

**Verificación:** ¿Estos componentes comparten el mismo Objective (OKR)?

### Principio 2: Autonomía de Despliegue


**Regla:** Una EV debe poder desplegarse sin requerir despliegue coordinado de otras EVs.

**Verificación:** ¿Puedo hacer un release sin esperar a otra EV?

### Principio 3: Minimizar Dependencias de Datos

**Regla:** Cada EV es dueña de sus propios datos. Otras EVs acceden vía contrato, no vía BD compartida.

**Verificación:** ¿Esta EV puede funcionar si la BD de otra EV no está disponible?

## Patrones de Trazado

### Patrón 1: Por Capacidad de Negocio

**Criterio:** Agrupar por lo que hace el sistema, no por cómo lo hace.

**Regla:** Si dos capacidades tienen verbos diferentes (postular vs. evaluar), probablemente son EVs distintas.

### Patrón 2: Por Ciclo de Vida

**Criterio:** Agrupar por frecuencia de cambio similar.

**Regla:** No mezclar componentes estables con componentes volátiles en la misma EV.

### Patrón 3: Por Equipo

**Criterio:** Una EV = Un equipo (3-9 personas).

**Regla:** Si dos equipos necesitan coordinarse constantemente para desplegar, las fronteras están mal trazadas.

## Técnica: Context Mapping (DDD)

### Bounded Context

**Definición:** Frontera lingüística donde un término tiene un significado específico.

**Señal de frontera:** El mismo término significa cosas distintas en diferentes contextos.

### Relaciones entre Contexts

| Relación | Definición | Ejemplo |
|:---|:---|:---|
| **Customer-Supplier** | EV-A consume servicios de EV-B | Evaluación consume API de Postulaciones |
| **Conformist** | EV-A adopta modelo de EV-B sin negociar | Portal consume API de Registro Civil (externa) |
| **Anticorruption Layer** | EV-A traduce modelo de EV-B a su propio modelo | Postulaciones traduce datos de Registro Civil |
| **Shared Kernel** | EV-A y EV-B comparten código común | Librería de validación de RUT |

## Anti-Patrones

| Anti-Patrón | Síntoma | Solución |
|:---|:---|:---|
| **BD Compartida** | Múltiples EVs escriben en misma tabla | Separar BDs, comunicar vía API |
| **Distributed Monolith** | Microservicios que deben desplegarse juntos | Fusionar en monolito o rediseñar fronteras |
| **Chatty APIs** | 50 llamadas para renderizar una pantalla | Diseñar APIs orientadas a casos de uso |
| **God Service** | EV que todos necesitan para todo | Descomponer en EVs más pequeñas |

## Integración con ASTA-Kore

**Contratos de Frontera:** Toda frontera entre EVs debe tener un contrato explícito:

- Contrato de Servicio (API)
- Contrato de Datos (Eventos)

**Referencia:** Ver plantillas de contratos en `/plantillas_contratos/`
