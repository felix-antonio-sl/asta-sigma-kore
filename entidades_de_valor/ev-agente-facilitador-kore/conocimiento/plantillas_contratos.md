# Plantillas de Contratos

## agentes

### contrato_agente.md

```markdown
# Especificación: Contrato de Agente

ID: `CD-AGENT-001`
Versión: 1.0

## 1. Propósito

Este contrato gobierna un `Sistema Cognitivo` (Agente de IA). Formaliza su propósito, capacidades, guardarraíles de comportamiento y SLOs de rendimiento. Es la "licencia para operar" del agente dentro del ecosistema.
```


---


### contrato_agente.yml

```yaml
# Contrato de Agente - Plantilla v1.0
id: "dominio.nombre_agente"
owner: "nombre-del-equipo"
version: "1.0.0"
purpose: "Descripción de la función principal del agente y el valor que aporta."

# Capacidades (Tools & Knowledge)
capabilities:
  tools_enabled:
    - "tool_api_1"
    - "tool_function_2"
  knowledge_collections:
    - "id_coleccion_conocimiento_1"

# Guardarraíles y Comportamiento
behavioral_guardrails:
  persona: "Asistente experto en X, formal y preciso."
  safety_policy: "no_pii | no_financial_advice"
  hallucination_mitigation: "grounding_check | low_temperature"

# Rendimiento (SLOs)
performance_slos:
  response_time_p90_ms: 2500
  accuracy_target_pct: 95 # Medido contra un benchmark específico
  cost_per_interaction_usd: 0.01

# Observabilidad
observability:
  metrics_dashboard: "url_al_dashboard_de_grafana"
  traces_endpoint: "jaeger_collector_url"
```


---


## conocimiento

### contrato_conocimiento.md

```markdown
# Especificación: Contrato de Conocimiento

ID: `CD-KNOW-001`
Versión: 1.0

## 1. Propósito

Este contrato gobierna una `Colección de Conocimiento` destinada a ser consumida por sistemas cognitivos (ej. RAG) o humanos. Formaliza la autoridad, estructura, frescura y políticas de uso del conocimiento, tratándolo como un producto gestionado.
```


---


### contrato_conocimiento.yml

```yaml
# Contrato de Conocimiento - Plantilla v1.0
id: "dominio.nombre_coleccion"
owner: "nombre-del-equipo"
version: "1.0.0"
purpose: "Descripción de la colección de conocimiento y su audiencia objetivo."

# Fuente y Autoridad
authority_level: "gold | silver | bronze"

# Contenido y Estructura
metadata_schema: "dublin-core | custom-json-schema"
chunking_strategy:
  type: "recursive | token-based | semantic"
  size: 512
  overlap: 64
indexing_strategy:
  model: "text-embedding-ada-002"

# Operación y Calidad (SLOs)
freshness_slo: "7d"

# Política de Servicio
serving_policy:
  citation_policy: "require_citation | best_effort"
  access_control:
    classification: "public | internal | confidential"
    roles_allowed:
      - "rol_agente_ia"
      - "rol_experto_dominio"
```


---


## datos

### contrato_datos.md

```markdown
# Especificación: Contrato de Datos

ID: `CD-DAT-001`
Versión: 1.0

## 1. Propósito

Este contrato gobierna un `Conjunto de Datos` (Dataset) como un producto de primera clase. Formaliza sus características, SLOs de calidad y políticas de acceso, asegurando que sea tratable como un activo confiable y bien definido dentro del ecosistema de la organización.
```


---


### contrato_datos.yml

```yaml
# Contrato de Datos - Plantilla v1.0
id: "dominio.nombre_dataset"
owner: "nombre-del-equipo"
version: "1.0.0"
purpose: "Descripción del conjunto de datos y su rol en el negocio."

# Esquema y Semántica
schema:
  format: "avro | protobuf | json-schema"
  registry_url: "http://schema-registry/path/to/schema"

# Calidad de Datos (SLOs)
quality_slos:
  freshness: "24h"
  completeness_pct: 99.9
  uniqueness_pct: 100
  validity_pct: 100

# Linaje
lineage:
  sources:
    - "id_proceso_origen_1"
    - "id_dataset_origen_2"

# Política de Acceso
access_policy:
  classification: "public | internal | confidential | restricted"
  serving_tier: "batch | real-time"
  roles_allowed:
    - "rol_analista_datos"
    - "rol_cientifico_datos"
```


---


## procesos

### contrato_proceso.md

```markdown
# Guía del Contrato de Proceso

**ID:** `CONTRATO-PROCESO-V1`
**Estado:** Activo

## 1. Propósito

El `Contrato de Proceso` es un artefacto de diseño sociotécnico que formaliza el acuerdo sobre cómo opera un flujo de valor automatizado de punta a punta. Su objetivo es hacer explícitas las garantías de rendimiento, los puntos de intervención humana y la lógica de resiliencia de un proceso de negocio.

Este contrato es la fuente única de verdad para la gobernanza y la auditoría de un proceso automatizado. Debe ser negociado y acordado entre el equipo dueño del proceso, los arquitectos y los stakeholders de negocio.

## 2. Estructura y Campos Clave

El contrato se define en un archivo `contrato_proceso.yml` versionado junto al código de la `Entidad de Valor` que lo implementa. A continuación se describe el significado de cada campo.

### `id` (Obligatorio)

* **Descripción:** Identificador único y legible del proceso.
* **Formato:** `dominio.nombre_proceso`.
* **Ejemplo:** `subsidios.asignacion_automatica`.

### `owner` (Obligatorio)

* **Descripción:** El equipo responsable del ciclo de vida de este proceso.
* **Ejemplo:** `equipo-alpha`.

### `version` (Obligatorio)

* **Descripción:** Versión semántica (SemVer) del contrato.
* **Ejemplo:** `1.0.0`.

### `purpose` (Obligatorio)

* **Descripción:** Una explicación concisa del valor de negocio que entrega este proceso.
* **Ejemplo:** "Orquesta la validación, cálculo y notificación de la asignación de un subsidio de forma automática."

### `sla` (Obligatorio)

* **Descripción:** Los Acuerdos de Nivel de Servicio que el proceso garantiza.
* **Campos:**
  * `cycle_time_p95_minutes`: El percentil 95 del tiempo que tarda un caso en completarse desde que inicia hasta que termina.
  * `success_rate_target_pct`: El porcentaje de ejecuciones que deben terminar exitosamente sin intervención manual.

### `hitl` (Opcional)

* **Descripción:** Define los puntos de intervención Humano-en-el-Bucle (Human-in-the-Loop).
* **Campos:**
  * `checkpoints`: Una lista de puntos de control donde el proceso puede requerir una acción humana. Cada checkpoint tiene un nombre y una descripción del tipo de decisión requerida.
  * `escalation_rules`: Reglas que definen cuándo una ejecución debe ser escalada a un checkpoint humano.

### `saga` (Opcional)

* **Descripción:** Define la lógica de compensación para procesos de larga duración que requieren mantener la consistencia (Patrón Saga).
* **Campos:**
  * `steps`: Una lista de los pasos transaccionales del proceso. Cada paso define su acción principal (`invoke`) y la acción de compensación (`compensate`) que se debe ejecutar si un paso posterior falla.

### `events` (Obligatorio)

* **Descripción:** Declara los eventos de negocio que el proceso emite y consume, definiendo su rol en el ecosistema.
* **Campos:**
  * `emitted`: Lista de eventos que este proceso produce.
  * `consumed`: Lista de eventos que este proceso necesita para operar.

### `observability` (Obligatorio)

* **Descripción:** Define los Indicadores de Nivel de Servicio (SLIs) clave que deben ser medidos para monitorear la salud del proceso.
* **Ejemplo:** `success_rate`, `latency_p95`, `dead_letter_rate`.

## 3. Relacionado con

* **Guía Técnica: Ingeniería de Aplicaciones y Procesos:** [../guias tecnicas/gt_ingenieria_software.md](../guias tecnicas/gt_ingenieria_software.md)
* **Guía Técnica: Arquitectura de Referencia Nexus:** [../guias tecnicas/gt_arquitectura_nexus.md](../guias tecnicas/gt_arquitectura_nexus.md)
* **Plantilla YAML del contrato:** [./contrato_proceso.yml](./contrato_proceso.yml)
```


---


### contrato_proceso.yml

```yaml
# Contrato de Proceso - Especificación Canónica v1.0
# Este archivo es la fuente única de verdad para la gobernanza de un flujo de valor.
# Debe ser versionado junto al código de la Entidad de Valor que lo implementa.

id: "dominio.nombre_proceso"
owner: "nombre-del-equipo"
version: "1.0.0"
purpose: "Descripción concisa del valor de negocio que entrega este proceso."

# (OBLIGATORIO) Acuerdos de Nivel de Servicio (SLA) que el proceso garantiza.
sla:
  # El percentil 95 del tiempo (en minutos) que tarda un caso en completarse.
  cycle_time_p95_minutes: 180
  # El porcentaje de ejecuciones que deben terminar exitosamente sin intervención manual.
  success_rate_target_pct: 99.5

# (OPCIONAL) Puntos de intervención Humano-en-el-Bucle (Human-in-the-Loop).
hitl:
  checkpoints:
    - name: "revision_casos_excepcionales"
      description: "Revisión manual para casos que no cumplen las reglas automáticas."
    - condition: "score_riesgo > 0.8"
      checkpoint: "revision_casos_excepcionales"

# (OPCIONAL) Lógica de compensación para mantener la consistencia (Patrón Saga).
saga:
  steps:
    - name: "validar_postulante"
      invoke: "servicio_validacion.validar"
    - name: "notificar_aprobacion"
      invoke: "servicio_notificaciones.enviar"
      compensate: "servicio_notificaciones.retractar"

# (OBLIGATORIO) Eventos de negocio que el proceso emite y consume.
events:
  emitted:
    - "proceso.iniciado"
    - "proceso.completado"
    - "proceso.fallido"
  consumed:
    - "postulacion.recibida"
    - "validacion_identidad.completada"

# (OBLIGATORIO) Contrato de Observabilidad
observability:
  metrics_dashboard: "url_al_dashboard_de_grafana_del_proceso"
  traces_endpoint: "jaeger_collector_url_para_el_proceso"
  logging:
    level: "info"
    retention_days: 90```


---


