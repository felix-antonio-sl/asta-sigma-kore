# GT-API-DESIGN-001: Diseño de APIs para Contratos de Servicio

**ID:** GT-API-DESIGN-001  
**Versión:** 2.0  
**Dominio:** Σ-T (Diseño Táctico)  
**Protocolo:** 2.1 - Diseño de Arquitectura

## Invariante Central

**Una API es un contrato de comportamiento, no una exposición directa de la base de datos.**

Su propósito es expresar capacidades de negocio, no estructuras técnicas.

## Principios de Diseño

### Principio 1: Orientación a Casos de Uso

**Regla:** Diseñar endpoints para lo que el cliente necesita hacer, no para las tablas de la BD.

**Ejemplo:**

```plain
❌ Orientado a BD:
GET /tablas/postulaciones
GET /tablas/ciudadanos

✅ Orientado a Casos de Uso:
GET /postulaciones/{id}/resumen-completo
  (incluye ciudadano + documentos en una llamada)
```

### Principio 2: Estabilidad del Contrato

**Regla:** Los cambios en la implementación interna NO deben romper el contrato.

**Ejemplo:**

```plain
Versión 1 (BD relacional):
GET /postulaciones/{id} → SELECT * FROM postulaciones

Versión 2 (migración a NoSQL):
GET /postulaciones/{id} → db.postulaciones.findOne()

El contrato NO cambia
```

### Principio 3: Versionado Explícito

**Regla:** Cambios incompatibles requieren nueva versión. Mantener versiones anteriores hasta que todos los clientes migren.

**Patrón:**

```plain
v1: /v1/postulaciones/{id}
v2: /v2/postulaciones/{id}

Deprecación: v1 se mantiene 6 meses después de lanzar v2
```

## Criterios de Decisión: REST vs. GraphQL vs. gRPC

### REST (Recomendado para APIs públicas)

**Cuándo usar:**

- ✅ APIs públicas o inter-organizacionales
- ✅ Clientes diversos (web, móvil, terceros)
- ✅ Cacheo importante

**Ventajas:** Estándar, simple, cacheable  
**Desventajas:** Over-fetching, múltiples requests

### GraphQL (Para clientes con necesidades variables)

**Cuándo usar:**

- ✅ Clientes necesitan datos muy específicos
- ✅ Evitar over-fetching/under-fetching
- ✅ Frontend y backend en mismo equipo

**Ventajas:** Flexible, eficiente  
**Desventajas:** Complejidad, difícil de cachear

### gRPC (Para comunicación interna de alta performance)

**Cuándo usar:**

- ✅ Comunicación entre microservicios internos
- ✅ Baja latencia crítica
- ✅ Tipado fuerte requerido

**Ventajas:** Rápido, tipado, streaming  
**Desventajas:** No browser-friendly, menos estándar

## Patrones de Versionado

### Estrategia: URL Versioning

**Patrón:**

```plain
/v1/postulaciones/{id}
/v2/postulaciones/{id}
```

**Ventajas:**

- ✅ Simple de implementar
- ✅ Fácil de cachear
- ✅ Claro para clientes

### Ciclo de Vida de Versiones

**Regla:** Mantener versión anterior 6 meses después de lanzar nueva versión.

**Ejemplo:**

```yaml
v1:
  lanzamiento: 2024-01-01
  deprecacion: 2025-01-01 (anuncio)
  sunset: 2025-07-01 (apagado)
  
v2:
  lanzamiento: 2025-01-01
  cambios_incompatibles:
    - Campo "estado" ahora es enum (antes string)
```

## Anti-Patrones

| Anti-Patrón | Síntoma | Solución |
|:---|:---|:---|
| **Chatty API** | 10 llamadas para 1 pantalla | Endpoints agregados |
| **CRUD Ingenuo** | API = espejo de BD | Diseñar por casos de uso |
| **Breaking Changes** | Cambios sin versionar | Versionado explícito |
| **Sin Paginación** | Retorna 10,000 items | Paginación obligatoria |

## Integración con ASTA-Kore

**Contrato de API:** Toda API debe tener un `contrato_api.yml` que defina:

- Endpoints y métodos
- Estructura de request/response
- SLOs (latencia, disponibilidad)
- Versionado y deprecación

**Referencia:** Ver plantillas de contratos en `/plantillas_contratos/apis/`
