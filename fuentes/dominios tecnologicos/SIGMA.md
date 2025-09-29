# Supradominio SIGMA

## 0) Propósito y alcance del supradominio

**Objetivo:** alinear estrategia, datos, conocimiento, procesos y agentes de IA en un **Sistema de Trabajo** gobernado por **contratos semánticos**, **guardrails** y **SLO/SLA**, con operación observable end‑to‑end. Parto de: (i) el marco estratégico de “Agentes Digitales” y espectro de autonomía/rol; (ii) prácticas de ingeniería de software empresarial (C4/ADR/CI‑CD/observabilidad/seguridad/FinOps); (iii) BPA con BPMN/EDA/RPA y CoE; (iv) arquitectura de datos orientada a productos (DaP) con **policy‑as‑code**, linaje activo y lakehouse/OLAP; y (v) gestión del conocimiento con **curation** y **RAG** para respuestas citables.

---

## 1) Nombre y principios: **SIGMA** (Sistemas Inteligentes Gobernados por Métricas y Autonomía)

**Principios rectores**

1. **Semántica primero**: todo artefacto opera bajo **contratos** (datos, procesos, agentes, conocimiento).&#x20;
2. **Gobernanza embebida**: *guardrails* éticos, técnicos y operacionales desde diseño→operación, no *after‑the‑fact*.&#x20;
3. **Federación con guardrails**: dominios autónomos, estándares comunes y **policy‑as‑code**.&#x20;
4. **Observabilidad como requisito**: métricas, *traces* y linaje activo para auditar decisiones humanas y de IA.
5. **HITL por defecto en riesgo** y espectro de autonomía progresivo (RAG → ReAct → Plan\&Execute).&#x20;
6. **Automatiza procesos, no solo tareas**: BPMN/EDA orquestan; RPA es último recurso y con CoE.&#x20;
7. **KM + RAG confiable**: *curation* documental, indexación híbrida y respuestas **citables** por diseño.&#x20;

---

## 2) Mapa de capas del supradominio

```ascii
+-----------------------------------------------------------------------------------+
|  Capa de Valor y Gobierno (Estrategia, Ética, Riesgo, CoE, FinOps, Policy-as-Code)|
+-----------------------------------------------------------------------------------+
|  Capa Semántica-Común (Ontologías, Glosario, Contratos: Datos/Procesos/Agentes/KM)|
+-----------------------------------------------------------------------------------+
|  Tejidos de Ejecución:                                                            |
|   - Tejido de Conocimiento (Curation→Indexación híbrida→RAG→Respuestas citables)  |
|   - Tejido de Datos (Lakehouse/OLAP, Data Products, Linaje, DQ, SLOs)             |
|   - Tejido de Procesos (BPMN/EDA, Sagas, HITL, RPA atendido/no atendido)          |
|   - Tejido de Agentes (LLMs, herramientas, espectro de autonomía y rol)           |
+-----------------------------------------------------------------------------------+
|  Plataforma de Ingeniería (CI/CD, IaC, Observabilidad, Seguridad, SRE)            |
+-----------------------------------------------------------------------------------+
|  Integración (APIs/Graph, Bus de Mensajes, MDM/RDM, Catálogos, Catálogo de Métr.) |
+-----------------------------------------------------------------------------------+
```

* El **tejido de conocimiento** operacionaliza *Connect/Collect*, curation y *indexación híbrida* para RAG auditables.&#x20;
* El **tejido de datos** entrega **productos de datos** con contratos, SLOs y linaje activo sobre lakehouse/OLAP.&#x20;
* El **tejido de procesos** combina BPMN/EDA, **Sagas** y colas HITL; RPA como *fallback* o *bridge* a *legacy*.&#x20;
* El **tejido de agentes** define cerebro, herramientas, autonomía y responsabilidad dentro del Sistema de Trabajo.&#x20;
* La **plataforma de ingeniería** aplica C4, ADRs, CI/CD, IaC, OpenTelemetry, SAST/DAST/SCA.&#x20;

---

## 3) Ontología núcleo (metamodelo SIGMA)

**Clases principales**

* **SistemaDeTrabajo** (contexto sociotécnico). → contiene **Proceso**, **AgenteDigital**, **ActorHumano**, **ProductoDeDatos**.&#x20;
* **AgenteDigital** (LLM + herramientas): *capabilities*, *guardrails*, *autonomía*, *rol*, *contratoAgente*.&#x20;
* **Proceso** (BPMN/EDA): *flujo*, *tareas*, *SLA*, *HITL*, *compensaciones*.&#x20;
* **Tarea** (automatizable): *clase* (API, UI/RPA, humana, agente), *idempotencia*, *reintentos*.&#x20;
* **Evento** (EDA): *esquema*, *contratoEvento*, *orden*, *exactly/at‑least once*.&#x20;
* **ProductoDeDatos**: *contratoDatos*, *SLO*, *linaje*, *clasificación*, *métricas*.&#x20;
* **Documento** y **Chunk** (KM/RAG): *taxonomía*, *vigencia*, *ACL*, *citas exactas*.&#x20;
* **Contrato** (abstracta): **ContratoDeDatos**, **ContratoDeProceso**, **ContratoDeAgente**, **ContratoDeConocimiento**.&#x20;
* **Métrica**/**SLO**/**SLA** y **Guardrail** (entrada/salida/operacional/ético).&#x20;
* **Política** (policy‑as‑code), **Riesgo**, **Incidente**, **Linaje** (as‑designed/as‑implemented).&#x20;

**Relaciones clave (extracto)**

* *AgenteDigital* **operaEn** *Proceso* y **consume** *ProductoDeDatos* y *Chunks*.
* *Proceso* **publica** *Evento* y **alcanza** *SLA* medidos por *Métrica* de **STP/tiempo de ciclo**.&#x20;
* *ProductoDeDatos* **sirve** *MétricaNegocio* y **expone** interfaces (SQL/APIs/Graph).&#x20;
* *Contrato* **rige** cambios (semver), **distribuye** responsabilidades y **activa** *policy‑as‑code*.&#x20;

**Invariantes (muestra)**

* Toda **respuesta RAG** debe tener ≥1 **cita exacta** con *documento/folio/versión*.&#x20;
* Toda **tarea compensable** en una Saga define *acción inversa* determinista.&#x20;
* Todo **producto de datos P1** mantiene **linaje columna‑a‑columna** y **SLO de frescura** publicado.&#x20;

---

## 4) Espectros integrados: autonomía, responsabilidad e interacción

* **Autonomía**: *Aumentación (RAG)* → *Agente ReAct* → *Plan‑and‑Execute*.&#x20;
* **Responsabilidad**: *Monitorear → Proveer info/capacidades → Controlar → Coproducir → Ejecutar*.&#x20;
* **Interacción**: *Máquina‑en‑el‑bucle*, *Iniciativa mixta*, *Humano‑en‑el‑bucle* (por defecto en riesgo), *Autónomo con supervisión*.&#x20;

**Regla SIGMA**: el **modo de interacción** se selecciona por *impacto/irreversibilidad/riesgo* del **Proceso**, reforzado con *checkpoints* HITL y rutas de escalamiento.&#x20;

---

## 5) Contratos canónicos (plantillas unificadas)

### 5.1 Contrato de Datos (resumen)

Basado en DaP: propósito, semántica, esquema, **calidad**, **SLO/SLA**, **seguridad**, **cambios**, **operación/linaje**.&#x20;

```yaml
type: data_contract
product: billing_invoices
version: 2.1.0
semantics: {glossary_refs: ["Factura","Cliente"], rules: [{name: valid_invoice, rule: status in [ISSUED,PAID,VOID]}]}
slo: {freshness_p95_minutes: 30, availability_pct: 99.9}
quality: {checks: [{name: pk_unique, rule: unique(invoice_id)}]}
security: {classification: P1, pii: false}
lineage: ["kafka.billing.events -> bronze.billing -> silver -> gold.billing_invoices"]
changes: {policy: semver, deprecation_window_days: 120}
```

*(Adaptado al formato y atributos propuestos en tu documento de datos).*&#x20;

### 5.2 Contrato de Proceso (BPMN/EDA + SLA/Compensaciones)

Incluye *SLA*, *STP target*, *acciones compensatorias*, *HITL queues*, *eventos canónicos*, *idempotencia* y *errores transitorios vs. definitivos*.&#x20;

```yaml
type: process_contract
process: invoice_approval
sla: {cycle_time_p95_minutes: 180, stp_target_pct: 80}
hitl: {queues: ["exceptions.approval"], escalation_rules: [">48h -> supervisor"]}
saga: {compensations: [{action: "revert_posting", on: "post_to_ERP"}]}
events:
  - {name: invoice.received, schema_ref: avro://billing/invoice/v1, delivery: at_least_once}
idempotency: {keys: ["invoice_id"]}
rpa_fallback: {enabled: true, guardrails: ["credential_vault","screen_selector_stability"]}
```

### 5.3 Contrato de Agente (capabilities, herramientas, autonomía, guardrails)

Integra **espectros**, **guardrails** de entrada/salida/operación, **métricas de calidad** (fidelidad, latencia, coste).&#x20;

```yaml
type: agent_contract
agent: pre_reviewer
autonomy_level: PLAN_AND_EXECUTE
role: COPRODUCIR
tools: [kb_search_secure, erp_api, doc_parser_vision]
rag_policy:
  retrieval: {hybrid: true, filters: ["vigente:true"], reranking: cross_encoder}
  citations: {required: true, granularity: "articulo/pagina"}
guardrails:
  input: [prompt_rewrite, pii_detection]
  output: [schema_validation: json, faithfulness_check: true, toxicity_scan: true]
  ops: {max_iterations: 5, token_cost_limit_usd: 2.0}
quality_metrics: {faithfulness>=0.9, citation_exactness>=0.95, ttft_p95_ms<=1200}
hitl_checkpoints: ["score<0.85", "conflict_detected"]
```

### 5.4 Contrato de Conocimiento (Curation→Indexación→Serving)

Exige **autoridad/vigencia**, **metadatos mínimos suficientes**, **chunks estructurales**, **doble índice** y **citas obligatorias**.&#x20;

```yaml
type: knowledge_contract
collection: normativa_interna
authority: official_only
doc_units: [expediente, documento, seccion, articulo]
metadata_min: [id_doc, tipo, emisor, fecha_emision, vigencia, estado, materia, hash, version, acl]
indexing:
  lexical: bm25
  vector: embeddings_v3
  filters: [estado: "vigente", confidencialidad<=role]
serving:
  context_assembly: {by: "articulo/seccion", add_hierarchy: true}
  citation_policy: required_exact
audit: {chain_of_custody: true, snapshots: true}
```

---

## 6) Arquitectura de referencia (ejecutable y auditable)

### 6.1 Flujo E2E (alto nivel)

1. **Descubrir oportunidades** por fricción (operacional, cognitiva, capacidad, variabilidad) y alinear a pilares de valor.&#x20;
2. **Diseñar** con C4/ADRs, NFRs y *go/no‑go* por deseabilidad/factibilidad/viabilidad.
3. **Construir**: datos (ingesta→bronze/silver/gold, DQ, contratos), agentes (prompts/herramientas/orquestación), procesos (BPMN/EDA, Sagas, HITL), UIs y conectores.
4. **Probar**: *offline+online*, *LLM‑as‑a‑Judge*, rendimiento, seguridad adversaria; *e2e* de RAG con **citation‑exactness**.
5. **Desplegar/Operar**: CI/CD, IaC, contenedores/K8s, observabilidad (logs/métricas/traces), linaje activo, SRE de datos y procesos.
6. **Mejora continua**: *data flywheel*, feedback, drift, *canary* de embeddings/reranking y políticas.

### 6.2 Tejido de procesos (BPMN/EDA/RPA)

* **Orquestación** con BPMN + **Sagas** para compensación, visibilidad y SLAs; **Coreografía** con EDA para desac acoplamiento masivo.&#x20;
* **HITL**: colas de excepciones, pausas y escalamiento; **STP** y **cycle time** como métricas top.&#x20;
* **RPA**: *attended/unattended*, *orchestrator*, *credential vault*, *screen selector stability*, como *fallback* a *legacy*.&#x20;

### 6.3 Tejido de datos (DaP)

* **Lakehouse** (ACID/time‑travel) con *bronze→silver→gold*, **DQ** declarativa, **contratos** y **SLOs** publicados.&#x20;
* **Linaje activo** (*as‑designed*+*as‑implemented*, columna‑a‑columna), **OpenLineage** y *metric store*.&#x20;
* **Evolución de esquema** *backward‑compatible*, CDC log‑based + *outbox*, idempotencia/orden/watermarks.&#x20;

### 6.4 Tejido de conocimiento (KM→RAG)

* **Curation**: autoridad, vigencia, metadatos min‑suficientes, OCR fiable, deduplicación por *hash estructural*.&#x20;
* **Indexación híbrida** (BM25+vector) con filtros de vigencia/confidencialidad y **reranking** por autoridad/entidades.&#x20;
* **Serving**: ensamblado por secciones/artículos, **citas obligatorias** y modo extractivo por defecto en normativa.&#x20;

### 6.5 Tejido de agentes (IA en producción)

* **Motor cognitivo** + **herramientas** (APIs, DBs, visión) + **orquestación** (ReAct/plan) + **guardrails** (entrada/salida/ops/éticos).&#x20;
* **Evaluación**: fidelidad, *citation‑exactness*, latencia (TTFT/TPOT), coste, sesgo y *no‑answer rate*.

### 6.6 Plataforma de ingeniería y seguridad

* **C4, ADRs, CI/CD, IaC, K8s, OpenTelemetry, logs/métricas/traces**; *blue/green*, *canary*, *feature flags*.&#x20;
* **Shift‑left security**: OAuth2/OIDC, RBAC/ABAC, SAST/DAST/SCA, vault de secretos.&#x20;

---

## 7) Métricas, SLOs y tableros (negocio, datos, procesos, IA)

* **Proceso**: *Cycle time p95*, **STP %**, tasa de error, backlog HITL, *MTTR de excepciones*.&#x20;
* **Datos**: frescura p95, latencia p95 *ingesta/transform/serving*, violaciones DQ/1k filas, costo/consulta, *error budget*.&#x20;
* **IA (Agente/RAG)**: fidelidad, *citation‑exactness*, *no‑answer correcto*, TTFT/TPOT, coste/tarea, *drift*.
* **KM**: % respuestas con cita válida, cobertura del corpus, lag de ingestión, participación CoPs.&#x20;

---

## 8) Anti‑patrones y controles

* **RPA como martillo universal** (usar APIs/ETL cuando existan); **automatizar procesos rotos** sin *process mining* previo; **ignorar la “larga cola” de excepciones**.&#x20;
* **Data dual‑write** y cambios *big‑bang* de esquema; **tópicos sin contrato**.&#x20;
* **RAG sin curation**/vigencia/ACL; respuestas sin cita exacta.&#x20;
* **Observabilidad mínima** y falta de ADRs/linaje activo.

---

## 9) Operacionalización avanzada (selección de patrones)

* **Sagas + ReAct**: el agente planifica, ejecuta pasos con *tools*, confirma *pre‑commit* y compensa *on failure*.
* **RAG con *policy‑as‑code***: filtros de vigencia/ACL en retrieval (ABAC/RLS) y *citation‑gate* en *output*.
* **Linaje 2D (datos+razonamiento)**: OpenLineage para tablas y *trace* para *tool‑calls* de agentes.
* **FinOps**: *showback/chargeback* por dominio y presupuesto de tokens/cómputo por *agent\_contract*.&#x20;

---

## 10) Especificaciones formales (extractos)

### 10.1 SHACL — fragmentos ontológicos

```ttl
ex:ProductoDeDatos a sh:NodeShape ;
  sh:property [ sh:path ex:hasSLO ; sh:minCount 1 ] ;
  sh:property [ sh:path ex:hasLineage ; sh:minCount 1 ] .

ex:RespuestaRAG a sh:NodeShape ;
  sh:property [ sh:path ex:hasCitations ; sh:minCount 1 ] ;
  sh:property [ sh:path ex:faithfulnessScore ; sh:minInclusive 0.8 ] .
```

*(Coherente con contratos de datos y política de citas del corpus).*

### 10.2 Modelo de evento canónico (Avro/JSON)

```json
{
  "name": "invoice.received",
  "version": "1.0.0",
  "idempotencyKey": "invoice_id",
  "payload": { "invoice_id": "str", "amount_total": "decimal", "issued_at": "ts" },
  "source": "ingest.gateway",
  "schemaRef": "avro://billing/invoice/v1"
}
```

*(Alineado a CDC/outbox, orden y compatibilidad).*

---

## 11) Roadmap de implementación (90/180/365 días)

* **90 días**: *charter* SIGMA, *templates* de contratos, 1 proceso orquestado con **Sagas/HITL**, 2 data products con SLO y linaje, curation mínima y RAG citables, CI/CD + observabilidad base.
* **180 días**: 3–5 agentes con *ReAct/plan*, *metric store*, ABAC/RLS E2E, *error budgets* por producto, *CoE* BPA activo.
* **365 días**: dominios federados, MDM entidad crítica, *privacy by default*, *canary* de embeddings/reranking, *FinOps guardrails* y deprecación sistemática.&#x20;

---

## 12) Cómo usar el supradominio en práctica (checklist de adopción)

1. **Selecciona** un flujo de valor con fricción prioritaria y define KPIs (STP, cycle time, fidelidad RAG).
2. **Modela** el contexto (C4 L1/L2), límites (DDD), eventos y contratos.&#x20;
3. **Aplica** contratos unificados (datos/proceso/agente/conocimiento) antes del primer commit.
4. **Instrumenta** observabilidad (OpenTelemetry) y linaje; define *error budgets*.
5. **Prueba** e2e con *citation‑exactness* y *no‑answer* correctos; endurece *guardrails*.
6. **Despliega** con *canary* y HITL por defecto; revisa métricas/SLIs semanalmente.

---

### Cierre

**SIGMA** unifica IA en producción, automatización E2E, datos como productos y KM auditable en un **supradominio ontológico** listo para operar en entornos corporativos y públicos. Sus contratos, espectros y tejidos permiten **coproducir** con agentes bajo guardrails, con **SLOs** claros y **respuestas citables** —cerrando el círculo entre valor, ingeniería y gobernanza.

> Si quieres, convierto este supradominio en **artefactos listos para Git** (plantillas de contratos, SHACL, esquemas de evento, ADR inicial, dashboards de métricas) y en un **playbook de adopción** por dominio/tribu.
