# Dominio: Orquestación Cognitiva Empresarial

*(Enterprise AI Orchestration)*

## Definición y propósito

Coordinación, integración y gobierno de modelos, agentes y datos para ejecutar objetivos de negocio como flujos coherentes, observables, seguros y escalables. Enfoque en **system-of-systems**: modelos + datos + reglas + personas. Resultado: **capabilities-as-APIs**, **workflows** auditables y **KPIs/SLOs** sostenibles.

## Metamodelo OCE

**Capas (layers):**

1. **Experiencia y Agentes** *(Experience & Agents)*: copilotos, chatbots, asistentes, **multi-agent systems**.
2. **Orquestación** *(Orchestration fabric)*: **workflow engine**, **rules engine**, **event bus**, compensaciones, reintentos.
3. **Modelos y Serving** *(Model serving)*: **LLMs**, CV/NLP/tabular, **OpenAI-compatible endpoints**, **continuous batching**.
4. **Datos** *(Data layer)*: **data mesh**, **data lakehouse**, **feature store**, **vector store**, **semantic cache**, catálogos.
5. **Infraestructura**: **containers**, **Kubernetes**, **GPU/accelerators**, **autoscaling**, **GitOps**, **IaC**.
6. **Gobernanza y Seguridad**: **policy-as-code**, **RBAC/ABAC**, **PII/DLP**, auditoría, cumplimiento.

**Ejes (axes):** integración (APIs), automatización (CI/CD, **canary/blue-green**), gestión (lifecycle de modelos/prompts/datos), observabilidad, seguridad, costos.
**Dominios transversales:** **state management**, **prompt management**, **evaluation**, **guardrails**, **cost governance**.

## Contratos y artefactos

* **API/Schema contracts**: **OpenAPI/JSON Schema**, **AsyncAPI** para eventos.
* **Tool/Function calling**: funciones de negocio expuestas a LLM con **permissions** y **quotas**.
* **Policies**: **OPA/Rego**, **Cedar**; **policy-as-code** versionada.
* **Prompts**: plantillas, **prompt registry**, versiones y **A/B**.
* **Datos**: **data contracts**, linaje (**data lineage**), **SLAs** de frescura/calidad.
* **Modelos**: **model registry**, **artifact store**, **SBOM** de imágenes.
* **Workflows**: DSL declarativa, **idempotency keys**, **saga pattern** para transacciones distribuidas.

## Patrones de orquestación

* **Pipelines**: ETL/ELT + **RAG** + post-procesos.
* **Multi-agente**: **Router**, **Supervisor–Worker**, **Planner–Executor**, **Critic–Refiner**, **Debate**, **ReAct**, **Tree/Graph-of-Thoughts**.
* **Compensaciones**: **saga/compensation**, **outbox** transaccional.
* **Human-in-the-loop (HITL)**: aprobación, corrección, **active learning**.

## Gestión de estado y memoria *(State & Memory)*

* **Corto plazo**: sesión, **conversation state**, **tool context**.
* **Largo plazo**: **knowledge base**, **vector store**, **entity memory** con retención y TTL.
* **Consistencia**: **event sourcing**, **CRDTs** cuando colabora multi-agente.
* **Privacidad**: **scoping** por tenant, redacción de PII, **encryption-at-rest/in-transit**.

## Capa de datos ampliada

* **Data mesh/lakehouse** con **governed zones** (raw/clean/curated).
* **Feature store** para reutilizar variables; **vector DB** para embeddings; **index selection** y **hybrid search** (dense+BM25).
* **Semantic cache** de respuestas por **prompt+retrieval hash**.
* **Qualidad**: **great expectations**/**evidently** estilo, **drift detection** (datos y modelo).

## Serving de modelos y despliegue LLM

* **Containerization**: imágenes fijadas, **CUDA/cuDNN** alineadas, **Trivy/Grype**.
* **Runtimes**: **vLLM**, **TGI**, **SGLang**, **Triton**, **Ray Serve**.
* **Endpoints**: **OpenAI-compatible**, **streaming**, **rate limits**, colas y **continuous batching**.
* **Autoscaling**: gatillar por **queue length**, **batch occupancy**, **GPU memory**, **cold-start pre-warm**; **scale-to-zero**.
* **Model gardens** y **routing** por **policies** (costo/latencia/calidad), **fallbacks**, **shadow traffic**.
* **BYOC**/**air-gapped** para residencia y soberanía.

## Seguridad y cumplimiento

* **OWASP Top-10 for LLMs**: **prompt injection**, **data exfiltration**, **training data poisoning**, **supply chain**.
* **Zero-trust**: **mTLS**, **JWT/OIDC**, **WAF**, **network policies** K8s.
* **Secrets/KMS**: rotación, **envelope encryption**.
* **DLP/PII**: detección, **masking**, **tokenization**.
* **Guardrails**: filtros de entrada/salida, **allow/deny lists**, **content moderation**, **safety policies**.
* **Auditoría**: **tamper-evident logs**, opcional **ledger/blockchain** para trails regulados.
* **Cumplimiento**: HIPAA/GDPR/ISO 27001/**EU AI Act** según sector.

## Observabilidad, evaluación y calidad

* **Trazabilidad**: **OpenTelemetry** para spans de workflow, tool y modelo.
* **Métricas técnicas**: latencia **p50/p95/p99**, **time-to-first-token**, throughput, **GPU util**, **cache hit rate**.
* **Métricas de negocio**: **Cost per Resolution (CpR)**, costo/1k tokens, **Tasks per Hour**, tasa de automatización.
* **Calidad**: **faithfulness**, **hallucination rate**, **answer similarity**, **calibration error**.
* **Eval harness**: **golden sets**, **human eval**, **LLM-as-a-judge** con rúbricas, **regression tests**.
* **Alertas/SLOs**: error budget, **RCA** estilo SRE, **postmortems**.

## Gobierno y costos

* **FinOps**: presupuestos, **unit economics** por flujo, **rightsizing**, **spot/on-demand** mix.
* **Catálogo**: inventario de **capabilities**, **datasets**, **models**, **prompts** con owners y políticas.
* **Riesgo**: **model cards**, **data cards**, evaluación de impacto, **change control**.

## Tooling agnóstico (referencial)

* **Workflow engines**: Airflow, Flyte, Prefect, Temporal; nativos cloud: Step Functions, Cloud Composer, Logic Apps.
* **LLM orchestration**: LangChain, LlamaIndex, Semantic Kernel, DSPy, Guidance, AutoGen, CrewAI; no-/low-code: SmythOS, Orq.ai.
* **Vector DB**: Qdrant, Milvus, Weaviate, **pgvector**.
* **Observabilidad**: Arize, WhyLabs, **OpenTelemetry** + Prometheus/Grafana.
* **Prompt/Experiments**: Humanloop, PromptLayer, Braintrust.
* **CI/CD & IaC**: GitHub Actions, ArgoCD, Terraform, Helm.
* **Mensajería**: Kafka, NATS, SQS/PubSub.

## Casos de uso compuestos

* **Salud**: **imaging AI** → reporte estructurado → agenda → autorización → notificación; **HITL** clínico y cumplimiento.
* **Finanzas**: **fraud graph** multi-fuente + verificación KYC + decisión con **rules+ML**.
* **Retail/logística**: **demand forecasting** ↔ inventario ↔ **recommender** ↔ ruteo.
* **CI/CD**: pruebas generativas, **policy checks**, despliegues **canary**, rollback automático.

## Antipatrones

Acoplar UI a un modelo único. Autoscaling por CPU/RAM en LLM. Falta de **state** explícito. RAG sin **data contracts**. Observabilidad parcial (solo métricas de modelo). Políticas fuera del repo (sin **policy-as-code**). Sin **guardrails**. Sin **HITL** en alto riesgo.

## Roadmap de implantación

1. **Descubrimiento**: inventario de flujos y **KPIs**; **data contracts** mínimos.
2. **Arquitectura base**: K8s, **model serving** OpenAI-compatible, **vector store**, **workflow engine**, **observabilidad**.
3. **Piloto**: 1–2 **workflows** con **HITL**, **guardrails**, **eval harness**, **SLOs**.
4. **Productivizar**: **GitOps**, **policy-as-code**, **model registry**, **prompt registry**, **FinOps**.
5. **Escalar**: **model routing**, **fallbacks**, **multi-cloud**, **self-healing**, automatización de **RCA**.

## Checklists operativas

* **Seguridad**: OWASP-LLM, secretos, PII/DLP, **RBAC/ABAC**, **mTLS**.
* **Datos**: linaje, calidad, frescura, retención.
* **Modelos**: versiones, card, pruebas de regresión, **canary/shadow**.
* **Workflows**: idempotencia, compensaciones, reintentos exponenciales.
* **Observabilidad**: trazas E2E, dashboards p95/p99, alertas por colas/batches.
* **Costos**: límites por flujo, auditoría de tokens, **cache** semántica.

## Glosario mínimo (EN → ES)

* **Orchestration** → Orquestación.
* **Workflow engine** → Motor de flujos.
* **Function/Tool calling** → Llamado a funciones/herramientas.
* **RAG (Retrieval-Augmented Generation)** → Generación aumentada con recuperación.
* **Vector store** → Base vectorial.
* **Model serving** → Exposición de modelos.
* **Continuous batching** → Loteo continuo.
* **Guardrails** → Barandas de seguridad.
* **Policy-as-code** → Políticas como código.
* **Prompt registry** → Registro de prompts.
* **Model registry** → Registro de modelos.
* **HITL (Human-in-the-loop)** → Humano en el ciclo.
* **SLO/SLA** → Objetivos/Acuerdos de servicio.
* **FinOps** → Gestión financiera de nube/AI.
* **BYOC/Air-gapped** → Trae-tu-nube / Aislado.
* **Data mesh/Lakehouse** → Malla de datos / Lago-casa.
* **Zero-trust** → Confianza cero.
* **Drift** → Deriva.
* **Shadow traffic** → Tráfico sombra.
* **Canary/Blue-Green** → Canario/Azul-Verde.
* **OpenAI-compatible** → Compatible OpenAI.

## Ejemplo de integración con Semantic Kernel (resumen)

* **Plugins** (.NET) que encapsulan APIs de negocio.
* **LLM** consume plugins con **permissions** y **rate limits**; **multilanguage** por defecto.
* Patrón: Prompt → Plan (**Planner**) → Invocación de **KernelFunction** → Verificación **guardrails** → Persistencia de **state** → Telemetría.

## Métricas clave sugeridas

* Técnicas: **TTFT**, p95/p99, **GPU mem**, **queue length**, **batch occupancy**, **cache hit**.
* Calidad: **faithfulness**, **factuality**, **toxicity**, **grounding score**.
* Negocio: **CpR**, tasa de resolución sin HITL, **time-to-resolution**, costo/flujo.
