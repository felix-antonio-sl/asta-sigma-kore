# Guía Técnica: Ingeniería de Datos Orientada a Productos

ID: `GT-DATA-001`
Versión: 1.0
Dominio: Ingeniería de Datos, Arquitectura de Datos

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para diseñar, construir y operar Productos de Datos como `Entidades de Valor (EV)` confiables, gobernadas y de autoservicio.

Audiencia: Arquitectos de Datos, Ingenieros de Datos, Data Product Owners.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_datos.md`
* Contrato Nexus Implementado: `Contrato de Datos`

---

## 1. Principios de la Ingeniería de Datos KORE

1. Dato como Producto (Data as a Product): Cada conjunto de datos expuesto es un producto. Tiene un dueño, un ciclo de vida, un `Contrato de Datos` explícito y `SLOs` de calidad y disponibilidad.
2. Gobernanza Federada y Automatizada: La gobernanza no es un cuello de botella central. Se implementa a través de `policy-as-code` (ej. OPA/Rego) y se aplica automáticamente en los pipelines.
3. Semántica Primero: Antes de mover datos, se define su significado. El `Glosario de Negocio` y los modelos conceptuales son artefactos de primera clase.
4. Observabilidad de Datos: Los pipelines y productos de datos deben ser instrumentados para medir las dimensiones de calidad (frescura, completitud, validez) y rendimiento.

## 2. Arquitectura de Referencia: Lakehouse Orientado a Zonas

Esta arquitectura equilibra la flexibilidad de un Data Lake con el rendimiento y la gobernanza de un Data Warehouse.

* Zona Bronce (Crudo):
  * Propósito: Ingesta de datos en su formato original, inmutable.
  * Tecnología: Almacenamiento de objetos (S3, ADLS) con formatos eficientes (Parquet, Avro).
  * Patrón de Ingesta: CDC (Debezium), Outbox Pattern para eventos, APIs, Batch.

* Zona Plata (Limpio y Conforme):
  * Propósito: Limpieza, desduplicación, conformación de datos y aplicación de reglas de calidad. Los datos se modelan y se les asignan identificadores únicos.
  * Tecnología: Motores de procesamiento distribuido (Spark, dbt) sobre formatos de tabla transaccionales (Delta Lake, Iceberg, Hudi).

* Zona Oro (Agregado y Expuesto):
  * Propósito: Creación de los `Productos de Datos` finales, agregados y optimizados para el consumo. Son las vistas de negocio.
  * Tecnología: Vistas materializadas, modelos dimensionales (Star Schema), APIs de datos (GraphQL/REST).

## 3. El `Contrato de Datos`

Este `Contrato Nexus` es el pilar de la gobernanza de datos. Es un archivo YAML versionado en Git que define las expectativas entre el productor y el consumidor de un `Producto de Datos`.

Estructura Mínima del Contrato:

```yaml
product: facturacion_clientes
version: 1.0.0
owner: "equipo-finanzas"
interfaces: # Cómo se consume
  - type: sql
    uri: "warehouse.gold.facturacion_clientes"
  - type: api
    uri: "/v1/facturacion"
semantics: # Qué significa
  glossary_refs: ["Factura", "Cliente"]
  business_rules:
    - name: factura_valida
      rule: "estado IN ('EMITIDA', 'PAGADA', 'ANULADA')"
schema: # Cuál es la estructura
  primary_key: [id_factura]
  fields:
    - {name: id_factura, type: string, required: true}
    - {name: monto_total, type: decimal(18,2), required: true}
quality: # Cuán confiable es
  checks:
    - {name: pk_unica, rule: "unique(id_factura)"}
    - {name: monto_positivo, rule: "monto_total >= 0"}
slo: # Compromisos medibles
  freshness_p95_minutes: 60
  availability_pct: 99.9
security: # Quién puede acceder
  classification: "Confidencial"
  access_roles: ["analista_finanzas"]
lineage: # De dónde viene
  sources: ["kafka.topic.billing.events", "db.legacy.customers"]
changes: # Cómo evoluciona
  policy: semver
  deprecation_window_days: 90
```

## 4. Protocolo de Calidad de Datos (Data Quality)

La calidad de los datos se gestiona como un sistema, no como una tarea manual.

* Dimensiones de Calidad: Medir sistemáticamente exactitud, completitud, validez, unicidad, consistencia y frescura.
* Pipeline de DQ:
    1. Preventivo: Validar datos en el punto de entrada (APIs, UIs) usando el `Contrato de Datos`.
    2. Detectivo: Ejecutar tests de calidad como parte del pipeline de transformación (ej. Great Expectations, dbt tests) entre las zonas Bronce, Plata y Oro.
    3. Correctivo: Poner en cuarentena los registros que fallan las validaciones para su análisis, en lugar de detener todo el pipeline.

## 5. Observabilidad y SRE de Datos

Tratar los `Productos de Datos` como servicios con `SLOs` y `Error Budgets`.

* SLIs (Indicadores de Nivel de Servicio):
  * Frescura (p95): ¿Cuán actualizados están los datos?
  * Latencia de Pipeline (p95): ¿Cuánto tarda el pipeline E2E en ejecutarse?
  * Tasa de Fallos de Calidad: % de registros que violan las reglas de calidad.
  * Disponibilidad de la Interfaz: % de tiempo que la API o la tabla está accesible.
* Linaje Activo: Utilizar herramientas como OpenLineage para capturar automáticamente el linaje de datos a nivel de columna. El linaje no es un diagrama estático, es metadata viva.

## 6. Seguridad y Privacidad

La seguridad de los datos es por diseño, no por accidente.

* Clasificación de Datos: Etiquetar cada `Producto de Datos` con un nivel de sensibilidad (ej. Público, Interno, Confidencial, Restringido).
* Control de Acceso Basado en Atributos (ABAC): Usar políticas (`Policy-as-Code` con OPA/Rego) que definen el acceso basado en el rol del usuario, la clasificación del dato y el contexto de la petición.
* Privacidad por Diseño: Aplicar técnicas de minimización, anonimización y pseudoanonimización según la clasificación del dato. Implementar políticas de retención y expurgo automáticas.
