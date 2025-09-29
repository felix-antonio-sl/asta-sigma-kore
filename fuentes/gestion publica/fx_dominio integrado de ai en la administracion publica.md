# Dominio Integrado de IA en la Administración Pública (versión técnica)

> **Propósito.** Definir un dominio técnico integrado —conceptos, arquitectura, procesos, métricas y controles— para diseñar, operar y gobernar sistemas de IA en el sector público regional (Ñuble) con foco en servicios, datos, cumplimiento y derechos.

---

## 1) Ontología del dominio (objetos y relaciones)

**Actores**: ciudadanía; funcionariado (perfil clínico, gestor, analista, operador); autoridades; auditoría/contraloría; proveedores; academia.

**Artefactos de IA**: LLMs (base y afinados), modelos discriminativos (árboles/boosting), modelos de visión (OCR, clasificación), agentes (tool-use), RAG (retrieval-augmented generation), módulos de decisión prescriptiva (reglas + ML), pipelines de MLOps.

**Datos**: registros administrativos (salud, social, educación), transaccionales, imágenes (escáner, radiología), texto (oficios, expedientes), series temporales (sensor/IoT), geoespaciales, conocimiento normativo (leyes, dictámenes), metadatos de gobernanza (origen, finalidad, base legal, consentimiento), telemetría de modelos (prompt, temperatura, top‑p, latencia, tokens, score de calidad, huella de entrenamiento, versiones).

**Relaciones clave**:

* *Trazabilidad* (dato → modelo → decisión → servicio)
* *Justificación* (decisión ↔ explicación ↔ base legal)
* *Salvaguardas* (riesgo ↔ control ↔ evidencia)

---

## 2) Arquitectura de referencia (capas)

**Capa 0 – Seguridad**: gestión de identidades (OIDC), segmentación de red, cifrado en tránsito/rep., vault de secretos, KMS, SAST/DAST, SCA para dependencias.

**Capa 1 – Datos**

* **Lago/hub** (parquet/iceberg) con *data contracts* por dominio.
* **Catálogo** (glosario, linaje, retención, bases legales, DPIA).
* **Calidad** (expectativas, anomalías, *data SLAs*).
* **Privacidad**: minimización, pseudonimización, anonimato diferencial en extractos analíticos.

**Capa 2 – Integración y BD**

* **BD operacionales** (OLTP), **BD analíticas** (columnar), **vector DB** (embeddings), **in‑database AI** (UDFs/SQL sobre GPU), **federación** (polystores) y **streaming** (Kafka/Pulsar).
* **Esquema mínimo vectorial**: `{id, embedding, referencia_documental, versión, políticas_acceso}`.

**Capa 3 – Servicios de IA**

* *Model Hub* (catálogo y versionado), *Feature Store*, *RAG* (retrieval → ranking → fusión), *Agentes* (herramientas/funciones), *orquestación* (Dagster/Argo), *A/B y bandits*, *contenedores GPU*.

**Capa 4 – Aplicaciones**

* Asistentes de tramitación, búsqueda semántica normativa, triage clínico/no clínico, priorización de inspecciones, respuesta ciudadana, copilotos administrativos.

**Capa 5 – Gobernanza y Cumplimiento**

* *Gestión de riesgos* por caso de uso (registro, evaluación, clasificación de riesgo, DPIA), *controles* (transparencia, supervisión humana, logging, auditoría), *gestión de incidencias* (SEV, RCA), *comités* (ética/seguridad/datos), *formación continua*.

---

## 3) Patrón de integración de IA + Bases de Datos

**Objetivos**: baja latencia, consistencia de evidencias, control de acceso fino, auditabilidad, ahorro de costos de E/S.

**Componentes**:

* **Vector DB**: indexación de embeddings (FAISS/HNSW), *hybrid search* (BM25 + vector), particiones por sensibilidad.
* **In‑DB AI**: UDFs para inferencia (SQL→GPU), *table functions* para embeddings a granel, *materialized views* para caches semánticos.
* **Federación**: vistas lógicas que combinan OLTP/analítico/vectorial; *push‑down* de filtros.
* **Streaming**: *topics* para eventos (nuevo documento, actualización normativa, medida clínica), *stateful consumers* para refrescar índices.

**Flujo RAG con control de evidencia**:

1. *Chunking* con *policy tags* (fuente, fecha, sigilo).
2. Embeddings ⇒ vector DB (partición por organismo y nivel de sensibilidad).
3. **Consulta híbrida** (top‑k, *rerank* por fecha/autoridad) + filtros por *policy tags*.
4. *Compose* del *context window* con citas + normativa aplicable (IDs y URLs internas).
5. Generación con *guardrails* (límite de temperatura por clase de tarea) y *content filters*.
6. Post‑procesado: verificación de citas, deduplicación, *red teaming* sintáctico (regex/policy-as-code) y semántico (clasificadores).
7. Registro: prompt, parámetros, contexto, salida, *scores*.

**Esquema de *audit log*** (mínimo):

```
case_id, actor, rol, finalidad, base_legal, datos_minimizados,
modelo_id, versión, temperatura, top_p, sistema, herramientas,
context_tokens, fuentes[{id, hash, sello_temporal}],
razonamiento_resumido, salida_hash, riesgo_clase, validadores,
resultado_validación, decisión_final, responsable_humano, retención.
```

**Métricas**: latencia P95, tasa de cita válida, *pass\@k* de recuperación, precisión/recall de evidencia, *drift* de embeddings, coste/1000 req., *escalado* GPU/CPU.

---

## 4) Gobierno algorítmico y salvaguardas (predictive governance)

**Principios**: legalidad, necesidad/proporcionalidad, transparencia *explicable*, no discriminación, responsabilidad compartida, participación.

**Modelo operativo**:

* **Clasificación de casos de uso** (bajo/medio/alto riesgo) y *policy‑as‑code*.
* **Supervisión humana** (*human‑in/on/over‑the‑loop*) configurable por tarea.
* **Transparencia**: registro de lógica (plantillas, prompts), *model cards*, *datasheets*, reporte ciudadano.
* **Debida diligencia**: DPIA, pruebas de sesgo/calibración, *stress tests*.
* **Rendición de cuentas**: *playbook* de incidentes, compensación y remedios.

**Ciclo de vida responsable**: diseño (análisis de derechos), desarrollo (datasets balanceados, *prompt hygiene*), despliegue (*kill‑switch*), operación (monitor de deriva y *fairness*), revisión (auditoría independiente).

---

## 5) Control de calidad de respuesta (LLM) y parámetros

**Política de temperatura** (por clase de tarea):

* **Operativa** (oficios, citaciones normativas, respuestas clínicas administrativas): `T = 0.0–0.2`, *top‑p ≤ 0.2*.
* **Táctica** (revisión de alternativas, síntesis con fuentes): `T = 0.3–0.5`.
* **Estratégica/creativa** (ideación de políticas, talleres): `T = 0.7–0.9` + *nucleus sampling*.

**Evaluación**: *rubrics* por dominio, juzgamiento doble ciego (humano+automático), `>= 8k` muestras por perfil y contexto, *Elo ranking*, *win‑rate*, análisis de error por taxonomía (alucinación, omisión, fuga de privacidad, tono/empatía).

**Guardrails técnicos**: *prompt templates* con verificadores, *restricted tools*, *safety classifiers* (contenido sensible), *post‑hocs* (cotejo de citas, detectores de alucinación), *policy filters* (PD/PCI/PHI), *linting* de prompts.

---

## 6) Modelo cuantitativo (digitalización → gobernanza)

**Variables**: `GGOV` (gobernanza/buen gobierno); `DESI_DPS` (servicios públicos digitales); `DESI_IDT` (integración de tecnología digital); controles (tamaño país, desarrollo humano, inversión TIC).

**Especificación OLS**: `GGOV = β0 + β1*DESI_DPS + β2*DESI_IDT + Σγ_k*Controles_k + ε`.

**Uso en práctica**: *benchmark* anual por región; establecer metas (ΔGGOV) condicionadas a mejoras concretas en fomento digital y adopción tecnológica en municipios/servicios.

---

## 7) Capacidades y formación

**Roles**: *product owner* público de IA, *data steward* legal/técnico, *MLOps engineer*, *prompt engineer* con enfoque normativo, *AI safety officer*, *auditor algorítmico*.

**Plan de upskilling** (12 meses): fundamentos de IA (+ética), privacidad y bases legales, seguridad, ingeniería de *prompts*, RAG y citación, evaluación de modelos, *playbooks* de incidentes, explicación y trato ciudadano.

---

## 8) Roadmap de implementación (6–12 meses)

**0–90 días**: inventario de casos de uso; registro de riesgos; *quick wins* (copiloto documental con RAG de normativa local); data catalog y contratos básicos; *guardrails* mínimos; bitácora de auditoría; comité de IA.

**90–180 días**: vector DB y RAG productivo con *hybrid search*; *feature store* inicial; métricas de calidad; *playbooks* de incidentes y *SEV*; pilotos con *in‑database AI*; dashboard de gobernanza.

**180–365 días**: federación de fuentes; agentes con herramientas seguras; A/B + *bandits*; auditorías externas; formalización de supervisión humana por proceso.

---

## 9) Riesgos y controles

**Mapa**: seguridad (ciberataques, manipulación de salidas), privacidad (reidentificación), legal (base legal insuficiente), operacional (drift, dependencia proveedor), social (sesgo/impacto desigual), organizacional (resistencia, des‑habilitación de competencias), financiero (TCO, lock‑in).

**Controles clave**: diseño centrado en derechos, pruebas de sesgo por cohorte, *kill‑switch* y *rollback*, *canary releases*, *rate‑limits*, doble firma en decisiones de alto impacto, métricas de *equidad*, *audit logs* inviolables, *threat‑modeling*, *purple teaming*.

---

## 10) Anexos

**A. Taxonomía de tareas y parámetros sugeridos** (tabla de 20+ tareas comunes con T, top‑p, herramientas permitidas).

**B. Plantillas de *prompting* con verificación** (oficios, dictámenes, respuesta ciudadana, priorización clínica administrativa).

**C. Esquema de datos para *audit logs* y *model cards*.**

**D. Checklists DPIA/IA** (por nivel de riesgo).

**E. Pseudocódigo de *policy‑as‑code* para filtrado de contexto y redacción de citas.**
