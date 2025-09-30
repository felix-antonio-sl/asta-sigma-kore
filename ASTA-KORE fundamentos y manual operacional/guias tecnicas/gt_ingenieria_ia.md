# Guía Técnica: Ingeniería de Sistemas Cognitivos (IA)

ID: `GT-IA-001`
Versión: 1.0
Dominio: Inteligencia Artificial, MLOps, LLMOps

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para el diseño, construcción y operación de Sistemas Cognitivos (agentes, copilotos, motores de inferencia) como `Entidades de Valor (EV)` responsables y gobernadas.

Audiencia: Arquitectos de IA, Ingenieros de ML/IA, Científicos de Datos.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_sistemas_cognitivos.md`
* Contrato Nexus Implementado: `Contrato de Agente`

---

## 1. Principios KORE para Sistemas Cognitivos

1. El Modelo no es el Sistema: El valor reside en el sistema sociotécnico completo que rodea al modelo (datos, interfaces, `Contratos`, `Guardrails`), no solo en la precisión del modelo.
2. Contexto Específico: El rendimiento de un modelo de IA no es transferible. Cada aplicación debe ser validada para su caso de uso y contexto específico.
3. Aumento, no Reemplazo: Priorizar el diseño de sistemas que aumenten la inteligencia humana. El patrón `Humano-en-el-Bucle (HITL)` es la norma para decisiones de alto impacto.
4. Responsabilidad Distribuida: La responsabilidad por las acciones de un agente de IA se distribuye explícitamente entre roles definidos (Dueño de la Capacidad, Arquitecto de IA, Ingeniero de Prompts, etc.).

## 2. Arquitectura de Referencia para Aplicaciones de LLM

Esta arquitectura de 4 capas permite construir aplicaciones de IA de forma segura, escalable y agnóstica al proveedor del modelo.

* Capa 4: Aplicación y Experiencia de Usuario (UX): La interfaz final con el usuario (chatbot, copiloto en una app existente, buscador inteligente).
* Capa 3: Servicios de Negocio e Integración: Expone la capacidad de IA como una API segura y gobernada, integrada con el sistema de identidad de la empresa (OIDC/SSO).
* Capa 2: Gateway de IA (Consumo del Modelo): Fachada única que centraliza todas las llamadas a las APIs de LLMs. Proporciona abstracción del proveedor, gestión de credenciales, caché, control de tráfico y monitoreo de costos.
* Capa 1: Orquestación de Lógica y Contexto: El "cerebro" de la aplicación. Coordina el flujo de trabajo, gestiona los prompts y la memoria de la conversación, y decide cuándo usar RAG o llamar a herramientas.

## 3. Patrones de Orquestación Cognitiva

* Generación Aumentada por Recuperación (RAG - Retrieval-Augmented Generation):
  * Propósito: Permite a los LLMs responder preguntas basadas en un corpus de conocimiento privado y confiable.
  * Flujo: `Ingesta y Curación` -> `Chunking Estructural` -> `Indexación Híbrida (Vectorial + Lexical)` -> `Recuperación y Re-ranking` -> `Construcción de Prompt con Contexto` -> `Generación con Citas`.
  * Gobernanza: Regulado por el `Contrato de Conocimiento`. Ver `gt_gestion_conocimiento.md`.

* Llamado a Herramientas (Tool Calling / Function Calling):
  * Propósito: Permite a un LLM interactuar con el mundo exterior invocando APIs de negocio (ej. consultar un stock, crear un ticket).
  * Gobernanza: Cada herramienta expuesta al LLM debe tener un `Contrato de Servicio` claro y permisos de acceso restringidos.

* Sistemas Multi-Agente:
  * Propósito: Descomponer tareas complejas en roles especializados (ej. `Planificador-Ejecutor`, `Crítico-Refinador`).
  * Patrones: `Router` (dirige la petición al agente correcto), `Supervisor-Worker`, `Debate`.

## 4. El `Contrato de Agente`

Este `Contrato Nexus` define la "personalidad", las capacidades y los límites de un agente de IA.

Nota de Implementación Canónica: Para asistentes de IA conversacionales y declarativos, la implementación de este contrato se realiza utilizando el "Marco de Ingeniería de Asistentes de IA (MIA)". Este marco provee:

* `Agent Lifecycle Management (ALM)`: El proceso de ciclo de vida para el diseño, desarrollo y mantenimiento del agente.
* `Agent Definition Protocol (ADP)`: El lenguaje YAML declarativo para escribir la instancia del `Contrato de Agente` como código fuente.

La implementación de referencia del MIA se encuentra en `implementaciones/marco_ingenieria_asistentes_ai_conversacionales_declarativos/`.

Estructura Mínima del Contrato:

```yaml
agent_id: "agente_revision_contratos"
version: 1.0
owner: "equipo-legal"
autonomy_level: "PLAN_AND_EXECUTE" # Nivel de autonomía (RAG, ReAct, Plan & Execute)
role: "COPRODUCIR" # Rol en el sistema de trabajo (Monitor, Coproduce, Execute)
tools: # Herramientas que puede invocar
  - "api:buscar_jurisprudencia"
  - "api:validar_clausula_riesgo"
rag_policy: # Cómo usa el conocimiento
  retrieval_mode: "hybrid"
  citation_policy: "required_exact"
guardrails: # Barandas de seguridad
  input_scans: ["pii_detection", "prompt_injection_filter"]
  output_scans: ["toxicity_scan", "faithfulness_check"]
  operational_limits:
    max_iterations: 5
    token_cost_limit_usd: 1.5
quality_metrics: # SLOs del agente
  faithfulness_score: ">= 0.9"
  citation_exactness: ">= 0.95"
hitl_checkpoints: # Cuándo escalar a un humano
  - "confidence_score < 0.8"
  - "riesgo_legal_detectado == 'alto'"
```

## 5. MLOps y LLMOps: El Ciclo de Vida Operacional

* Gestión de Prompts: Tratar los prompts como código. Centralizarlos en un `Registro de Prompts` para versionarlos, probarlos (A/B testing) y actualizarlos sin redesplegar la aplicación.
* Serving de Modelos:
  * Runtimes Optimizados: Utilizar servidores de inferencia como vLLM, TGI o Triton para maximizar el rendimiento en GPUs (ej. con `continuous batching`).
  * Endpoints OpenAI-Compatible: Exponer los modelos (tanto comerciales como open-source) a través de una API interna compatible con el estándar de OpenAI para facilitar la integración.
* Evaluación y Monitoreo:
  * Evaluación Offline: Usar `golden sets` (conjuntos de datos de prueba) para regresión y `LLM-as-a-judge` para evaluar la calidad de las respuestas en base a rúbricas.
  * Monitoreo Online: Medir métricas de calidad (fidelidad, tasa de alucinación, toxicidad), rendimiento (latencia TTFT, tokens/seg), y costo (costo por tarea/conversación).
* Seguridad (OWASP Top 10 para LLMs): Implementar defensas contra `inyección de prompts`, `fugas de datos` a través del contexto, y `envenenamiento de datos de entrenamiento`.
