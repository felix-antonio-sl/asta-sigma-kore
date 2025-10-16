# GT-DATA-001: Ingeniería de Datos Orientada a Productos

**ID:** GT-DATA-001  
**Versión:** 2.0  
**Dominio:** Ingeniería de Datos, Arquitectura de Datos  
**Protocolo:** 2.1 - Diseño de Arquitectura

## Invariante Central

**Cada conjunto de datos expuesto es un producto con dueño, ciclo de vida, contrato explícito y SLOs.**

Los datos no son un subproducto de las aplicaciones, son activos de primera clase.

## Principios

### Principio 1: Dato como Producto (Data as a Product)

**Regla:** Cada conjunto de datos tiene:

- Dueño responsable
- Contrato de Datos explícito
- SLOs de calidad y disponibilidad
- Ciclo de vida gestionado

### Principio 2: Gobernanza Federada y Automatizada

**Regla:** La gobernanza no es un cuello de botella central.

**Patrón:** Policy-as-Code aplicada automáticamente en pipelines.

### Principio 3: Semántica Primero

**Regla:** Antes de mover datos, definir su significado.

**Artefactos:** Glosario de Negocio y modelos conceptuales son de primera clase.

### Principio 4: Observabilidad de Datos

**Regla:** Los pipelines y productos de datos deben ser instrumentados.

**Dimensiones:** Frescura, completitud, validez, rendimiento.

## Arquitectura de Referencia: Lakehouse por Zonas

### Zona Bronce (Crudo)

**Propósito:** Ingesta de datos en formato original, inmutable.

**Características:**

- Almacenamiento de objetos
- Formatos eficientes (columnar)
- Patrones: CDC, Outbox Pattern, APIs, Batch

### Zona Plata (Limpio y Conforme)

**Propósito:** Limpieza, desduplicación, conformación y aplicación de reglas de calidad.

**Características:**

- Datos modelados
- Identificadores únicos asignados
- Formatos de tabla transaccionales

### Zona Oro (Agregado y Expuesto)

**Propósito:** Productos de Datos finales, agregados y optimizados para consumo.

**Características:**

- Vistas de negocio
- Modelos dimensionales
- APIs de datos

## Contrato de Datos

**Definición:** Archivo versionado que define expectativas entre productor y consumidor de un Producto de Datos.

**Secciones del Contrato:**

- **Interfaces:** Cómo se consume (SQL, API)
- **Semántica:** Qué significa (glosario, reglas de negocio)
- **Schema:** Estructura (campos, tipos, PK)
- **Calidad:** Checks de validación
- **SLO:** Compromisos medibles (frescura, disponibilidad)
- **Seguridad:** Clasificación, roles de acceso
- **Linaje:** De dónde viene
- **Cambios:** Política de versionado

**Referencia:** Ver plantillas en `/plantillas_contratos/datos/`

## Protocolo de Calidad de Datos

### Estrategia de 3 Capas

**1. Preventivo:** Validar en punto de entrada (APIs, UIs)

**2. Detectivo:** Tests de calidad en pipeline de transformación

**3. Correctivo:** Cuarentena de registros fallidos (no detener pipeline)

### Dimensiones de Calidad

- Exactitud
- Completitud
- Validez
- Unicidad
- Consistencia
- Frescura

## Observabilidad y SRE de Datos

**Principio:** Tratar Productos de Datos como servicios con SLOs y Error Budgets.

**SLIs Típicos:**

- Frescura (p95): ¿Cuán actualizados están los datos?
- Latencia de Pipeline (p95): ¿Cuánto tarda el pipeline E2E?
- Tasa de Fallos de Calidad: % de registros que violan reglas
- Disponibilidad de Interfaz: % de tiempo accesible

**Linaje Activo:** Capturar automáticamente linaje de datos a nivel de columna como metadata viva.

## Seguridad y Privacidad

### Clasificación de Datos

**Niveles:** Público, Interno, Confidencial, Restringido

**Regla:** Etiquetar cada Producto de Datos con nivel de sensibilidad.

### Control de Acceso

**Patrón:** ABAC (Attribute-Based Access Control)

**Criterios:** Rol del usuario, clasificación del dato, contexto de petición

### Privacidad por Diseño

**Técnicas:**

- Minimización de datos
- Anonimización
- Pseudoanonimización
- Políticas de retención y expurgo automáticas

## Integración con ASTA-Kore

**Contratos:** Todo Producto de Datos debe tener un Contrato de Datos versionado.

**Referencia:** Ver `gt_observabilidad.md` para instrumentación de pipelines.
