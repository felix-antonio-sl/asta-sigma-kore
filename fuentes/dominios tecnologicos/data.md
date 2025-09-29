# Documento Técnico — Arquitectura de Datos Orientada a Productos

**Fundamento**: DAMA‑DMBOK2 como marco rector; sincronizado con **Data as a Product** (DaP), **Ingeniería de Datos** (DE) moderna y **Modelado Semántico** (SM). Dirigido a **Senior Data Architects**.

## 0) Resumen ejecutivo (para alinear)

Construimos una capacidad de datos **socio‑técnica** que entrega **productos de datos** confiables, gobernados y autoservicio. La gobernanza (políticas, roles, métricas) está **embebida** en el ciclo **Plan–Develop–Operate–Control**; la **semántica** provee un lenguaje común; la **ingeniería** operacionaliza con pipelines observables, contratos, y SLOs. Resultado: **tiempo‑a‑valor** menor, **riesgo** controlado, **costos** previsibles.

## 1) Marco integrado (DMBOK × DaP × SM × DE)

**DMBOK (áreas)** → **Capacidad de producto** → **Artefacto semántico** → **Práctica de ingeniería**

* **Data Governance** → *Guardrails federados* → Política, roles RACI, catálogos → CI de políticas, OPA/Rego, *policy‑as‑code*.
* **Data Architecture** → *Blueprint & patterns* → Mapa de dominios, contratos canónicos → Infra como código, módulos reutilizables.
* **Data Modeling & Design** → *Contrato semántico* → Glosario, ontologías, shapes/rules → Tests de esquema/semántica en CI.
* **Data Integration & Interoperability** → *Movilidad controlada* → Esquemas de eventos, mapeos → CDC, *outbox*, *idempotency*, *schema registry*.
* **Data Storage & Operations** → *Resiliencia y costo* → Zonas (bronze/silver/gold), particiones → Compaction, tiering, *data layout*.
* **Metadata** → *Descubribilidad/linaje* → Catálogo, lineage as‑designed/as‑implemented → OpenLineage, activación/automatización.
* **Data Quality** → *Fiabilidad* → Reglas por dataset/métrica → Great Expectations/Deequ, *data diff*, anomalías.
* **Security** → *Zero‑trust de datos* → Clasificación, ABAC/RBAC → Enmascarado, RLS/CLS, KMS/HSM.
* **R/MDM** → *Consistencia* → Entidades maestras, jerarquías → Algoritmos match/merge, *golden record*.
* **DW/BI** → *Métricas como producto* → Capa semántica, *metric store* → Vistas materializadas, *query‑serving*.
* **Big Data & DS** → *ML como producto* → Feature store, tracking → Pipelines reproducibles, *drift*.

## 2) Operating Model (federado con guardrails)

**Estructura**: Consejo de Gobernanza (CDO), Arquitectura Empresarial, Plataforma de Datos (enablement), Dominios (equipos de producto), Riesgo/Legal/Seguridad.

**Principios**

1. **Gobernanza embebida** en el flujo (no después). 2) **Semántica primero**. 3) **Automatizar y versionar todo**. 4) **Contratos** como filtro de cambios. 5) **Observabilidad** como requisito.

**RACI mínimo**

* Contratos de datos: A Dominios · R Data Product Owner/Engineer · C Gobernanza · I Consumidores.
* Catálogo/linaje: A Gobernanza · R Plataforma · C Dominios.
* Seguridad/Privacidad: A Seguridad/Legal · R Plataforma · C Dominios.

## 3) Arquitectura de referencia (agnóstica a vendors)

```
+-----------------------+   +-------------------+   +---------------------+
|     Fuentes           |   |  Ingesta          |   |  Zona Bronze        |
| (OLTP, SaaS, APIs,   |-->|  CDC, batch,      |-->|  crudo inmutable    |
|  eventos)             |   |  stream, outbox   |   |  (parquet/orc)      |
+-----------------------+   +-------------------+   +---------------------+
                                                     |
                                                     v
                                            +---------------------+
                                            |   Zona Silver       |
                                            |   limpieza, SCD,    |
                                            |   llaves/ids, DQ    |
                                            +---------------------+
                                                     |
                                                     v
                                            +---------------------+
                                            |   Zona Gold         |
                                            |   métricas, vistas, |
                                            |   data products     |
                                            +---------------------+
                                                     |
                              +----------------------+--------------------+
                              v                      v                    v
                        +-----------+          +-----------+        +-----------+
                        | BI/DW     |          | APIs/Graph|        | Feature   |
                        | (OLAP)    |          | (serving) |        | Store/ML  |
                        +-----------+          +-----------+        +-----------+
```

**Decisiones no‑funcionales**: partición temporal/natural, clustering, índices, archivo (hot/warm/cold), *compaction*, *small files*, retención/TTL, RTO/RPO y BCP/DR.

## 4) Ciclo de vida de **Productos de Datos** (E2E)

1. **Descubrimiento** (outcome, usuarios, KPIs, riesgos);
2. **Semántica** (términos, entidades, eventos, reglas);
3. **Contrato de datos** (esquema, SLO/SLA, calidad, seguridad);
4. **Implementación** (ingesta, transformación, modelado físico, serving);
5. **Operación** (observabilidad, SRE, runbooks, costos);
6. **Evolución** (semver, coexistencia, deprecación, retiro).

**Puertas de calidad (gates)**: *spec → test → run* con *policy‑as‑code*.

## 5) Contratos de datos (especificación)

**Estructura mínima**

* Contexto (propósito, consumidores, owner, dominio)
* Semántica (glosario, taxonomía, unidades, reglas)
* Esquema (campos, tipos, PK, cardinalidades)
* Calidad (checks, severidad, umbrales, *error budgets*)
* SLO/SLA (frescura, disponibilidad, latencia, exactitud)
* Seguridad/Privacidad (clasificación, PII/PHI, controles)
* Cambios (semver, compatibilidad, ventana de deprecación)
* Operación (linaje, monitoreo, alertas, runbook)

**Ejemplo (YAML)**

```yaml
product: billing_invoices
version: 2.1.0
owners: ["dom-finanzas", "dp-owner@ejemplo.cl"]
interfaces: ["sql:warehouse.gold.billing_invoices", "rest:/api/v1/invoices"]
semantics:
  glossary_refs: ["Factura", "Nota de crédito", "Cliente"]
  business_rules:
    - name: valid_invoice
      rule: status in [ISSUED, PAID, VOID]
schema:
  primary_key: [invoice_id]
  fields:
    - {name: invoice_id, type: string, required: true}
    - {name: customer_id, type: string, required: true}
    - {name: amount_total, type: decimal(18,2), unit: CLP, required: true}
    - {name: issued_at, type: timestamp, timezone: America/Santiago}
quality:
  checks:
    - {name: pk_unique, rule: unique(invoice_id), severity: error}
    - {name: status_domain, rule: in_domain(status), severity: error}
    - {name: late_arrival, rule: event_time_diff < 24h, severity: warn}
slo:
  freshness_p95_minutes: 30
  availability_pct: 99.9
  accuracy_variance_pct: 0.3
changes:
  policy: semver
  deprecation_window_days: 120
security:
  classification: P1
  pii: false
  access: {roles: [billing_analyst, finance_engineer]}
operations:
  lineage: ["kafka.billing.events -> bronze.billing -> silver.billing -> gold.billing_invoices"]
  alerts: [freshness_breach, dq_fail]
```

## 6) Semántica práctica (del concepto al físico)

* **Glosario controlado**: términos canónicos, sinónimos, anti‑conceptos.
* **Modelo conceptual**: entidades, relaciones, cardinalidad, reglas.
* **Shapes/Constraints**: SHACL/JSON Schema para validaciones.
* **Modelo lógico**: tablas/vistas, tópicos/eventos, APIs.
* **Modelo físico**: tipos, particionamiento, índices, SCD/Bitemporalidad.

**Ejemplo SHACL (extracto)**

```ttl
ex:Factura a sh:NodeShape ;
  sh:targetClass ex:Factura ;
  sh:property [ sh:path ex:status ; sh:in ("ISSUED" "PAID" "VOID") ; ] ;
  sh:property [ sh:path ex:amount_total ; sh:datatype xsd:decimal ; sh:minInclusive 0 ] .
```

**Reglas temporales**: separar `event_time` vs `ingest_time`; usar SCD2 para atributos cliente; bitemporalidad cuando haya correcciones retroactivas.

## 7) Integración & movimiento de datos

* **CDC log‑based** (mínimo acoplamiento) + *outbox pattern* para eventos confiables.
* **Estrategias de evolución de esquema**: compatibilidad *backward*; `nullable` al introducir campos; *views* de compatibilidad.
* **Idempotencia & orden**: claves de deduplicación, *exactly‑once* donde crítico; *watermarks* y *replays*.

**Anti‑patrones**: *dual‑write*, tópicos sin contrato, *big‑bang* cambios.

## 8) Almacenamiento & serving

* **Lakehouse**: tablas ACID (Delta/Iceberg/Hudi), *time‑travel*, *OPTIMIZE/compact*.
* **Warehouse/OLAP**: *star/snowflake*, *semantic layer* con métricas declarativas.
* **APIs**: REST/GraphQL con paginación y control de cuotas; *dataset tokens* por producto.
* **Feature Store**: *offline/online parity*, TTL y *point‑in‑time join*.

## 9) Metadatos, catálogo y linaje activo

**Capacidades**:

* *Harvesting* automático (as‑implemented) + mapeos (as‑designed), *stitching*; *column‑level lineage*.
* Diccionario/glosario de negocio vinculado a modelos lógicos/físicos y a la capa semántica.
* Uso/Popularidad (telemetría) para limpieza y prioridades.

**OpenLineage (ejemplo evento)**

```json
{
  "eventType": "START",
  "job": {"name": "silver.billing.transform", "namespace": "etl"},
  "inputs": [{"namespace": "lake/bronze", "name": "billing_raw"}],
  "run": {"runId": "…"}
}
```

## 10) Calidad de datos como sistema

**Dimensiones**: exactitud, completitud, validez, unicidad, consistencia, frescura, puntualidad, integridad referencial.

**Pipeline de DQ**

* Preventivo: contratos + validaciones en origen (UI/APIs), esquemas estrictos.
* Detectivo: *profiling*, reglas, anomalías (z‑score, ESD), *data diff*.
* Correctivo: cuarentenas, *repair* con MDM o backfills.

**Great Expectations (extracto)**

```yaml
expectations:
  - expect_column_values_to_be_in_set:
      column: status
      value_set: ["ISSUED","PAID","VOID"]
  - expect_column_values_to_not_be_null: {column: invoice_id}
```

## 11) Observabilidad y SRE de datos

* **SLIs** por producto y por etapa (ingesta/transform/serving): frescura (p95), latencia (p95), tasa de fallos, calidad (violaciones/1k filas), costo/consulta.
* **Alertas** por *error budget*; *golden signals* adaptados.
* **Runbooks**: *rollback/shadow*, *retries* exponenciales, *idempotent replays*; *postmortems* con acciones preventivas.

## 12) Seguridad, privacidad y ética

* **Clasificación** P0–P3; etiquetas obligatorias.
* **Controles**: ABAC/RBAC, RLS/CLS, enmascarado dinámico; cifrado en tránsito/en reposo.
* **Privacidad**: minimización, propósito, retención/expurgo, *privacy by default*; anonimización/k‑anon cuando aplique.
* **Ética**: *datasheets for datasets*, *model cards*, revisiones de sesgo.

**Ejemplo Rego (OPA)**

```rego
package data.access
allow { input.user.role == "finance_engineer"; input.resource.classification != "P0" }
```

## 13) MDM/RDM

* Estilos: *registry*, *consolidation*, *coexistence*.
* *Match/merge* con umbrales y supervivencia; *golden record*; jerarquías.
* Gobernanza: cambio de dominios de referencia, versiones de catálogos, *drift*.

## 14) DW/BI y capa semántica

* **Matriz de bus** + dimensiones conformadas.
* Capa semántica con **métricas declarativas** (definiciones versionadas; unidad, agregación, compatibilidad dimensional).
* *Self‑service* gobernado (roles, cuotas, *query sandboxes*).

**Métrica (YAML)**

```yaml
metric: revenue_net
expr: sum(amount_total) FILTER status = 'PAID'
unit: CLP
compatible_dims: [date, region, product]
owner: dom-finanzas
max_variance_vs_erp_pct: 0.5
```

## 15) Big Data, DS y MLOps

* **Feature store** con *point‑in‑time*; *offline/online parity*.
* Linaje de modelos/datasets; *model registry*; *concept/data drift*.
* Entregas: *shadow*, *canary*, *AB testing*; auditoría de inferencias.

## 16) DataOps y Gobierno del cambio

* CI/CD de datos: *schema‑diff*, validaciones, despliegues *blue/green*.
* Gestión de cambios **MAJOR/MINOR/PATCH**; coexistencia y *adapters*; ventanas de deprecación.
* Tablero de *flow* (lead time, MTTR, cambios/semana, % exitosos).

## 17) FinOps de datos

* *Showback/chargeback* por dominio; etiquetas de costo.
* *Storage tiering*, *partition pruning*, *file sizing/compaction*, materializaciones *on‑demand*.
* KPIs: costo/TB, costo/consulta, costo/consumidor, *waste* por *small files*.

## 18) Cumplimiento y riesgo

* **Records of Processing**, DPIA, contratos de intercambio, licencias.
* Evidencias auditables (*policy‑as‑code*, logs, linaje, DQ histórico).

## 19) Madurez y roadmap (12–24 meses)

**Fase 1 (0–6 m)**: estrategia y charter, catálogo mínimo viable, clasificación, *product template*, repositorio de contratos, pipelines *bronze→silver* con DQ y linaje básico.

**Fase 2 (6–12 m)**: 3–5 data products con SLOs, *semantic layer* de métricas, ABAC, *error budgets*, tableros de observabilidad.

**Fase 3 (12–24 m)**: dominios federados, MDM entidad crítica, *FinOps guardrails*, privacidad avanzada, *backfills* automatizados, deprecación sistemática.

## 20) Checklists operativas

**Readiness de producto**: owner/on‑call · contrato vX.Y.Z · SLOs y alertas · glosario enlazado · linaje up/down · reglas DQ · clasificación/políticas · *replay/backfill* · etiquetas FinOps.

**Cambio MAJOR**: impacto (lineage) · *notice* y coexistencia · *adapters* · validaciones reforzadas · comunicación consumidores · plan de migración.

## 21) Anexos (plantillas)

**A) Data Product Charter (MD)**

```
Nombre · Dominio · Owner · Consumidores · Casos de uso · KPIs · Interfaces · SLOs · Riesgos · Roadmap
```

**B) Data Contract (YAML)** — ver §5.

**C) Catálogo de métricas (CSV)**

```
metric,definition,unit,owner,compat_dims,source_of_truth,max_variance_pct
revenue_net,sum(amount_total) where status='PAID',CLP,dom-finanzas,date|region|product,erp_ledger,0.5
```

**D) SHACL para conceptos clave** — ver §6.

**E) Reglas DQ (Great Expectations)** — ver §10.

### Cierre

Este documento operacionaliza DMBOK en una arquitectura orientada a productos, con contratos y semántica como cimiento, y prácticas de ingeniería/observabilidad como motor. Forma una **línea base** adaptable a organización, dominio e industria.
