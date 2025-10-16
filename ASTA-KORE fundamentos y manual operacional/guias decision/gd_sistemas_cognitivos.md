# Guía de Decisión: Diseño de Sistemas Cognitivos (IA)

**ID:** GD-IA-001  
**Versión:** 1.0  
**Dominio:** Σ-T (Diseño Táctico)  
**Propósito:** Tomar decisiones estratégicas sobre el diseño, la gobernanza y el rol de los Sistemas Cognitivos (agentes, copilotos) como Entidades de Valor.

---

## Principio KORE: Aumentar la Inteligencia Humana, no Reemplazarla

El objetivo principal de un Sistema Cognitivo en KORE es aumentar y escalar la capacidad humana. El diseño debe priorizar la colaboración humano-máquina, la confianza y la capacidad del humano para supervisar, intervenir y anular al sistema. El `Humano-en-el-Bucle (HITL)` no es una opción, es el modo de operación por defecto para decisiones de alto impacto.

## Protocolo de Decisión para el diseño de un Sistema Cognitivo

Utilice el `Canvas de EV` como el artefacto central para el diseño colaborativo de un Sistema Cognitivo. Las siguientes preguntas deben guiar la conversación:

| Caja del Canvas | Pregunta Clave para un Sistema Cognitivo |
| :--- | :--- |
| 1. Propósito |  Qué decisión o tarea humana estamos aumentando?  Qué es el KPI de éxito del negocio? |
| 2. Usuarios |  Quién interactúa con el sistema (experto, novato)?  Qué nivel de autonomía y confianza le daremos? |
| 3. Flujo de Valor |  Qué es el pipeline cognitivo (ej. RAG, Tool Calling)?  Dónde están los puntos de control HITL? |
| 4. Métricas (SLOs) |  Más allá de la precisión:  Qué es la latencia (`TTFT`), el costo por inferencia, la tasa de alucinación? |
| 8. Gobernanza |  Qué `Guardrails` previenen el contenido tóxico o las fugas de datos?  Cómo se auditan sus acciones? |

## Heurísticas de Decisión de Arquitectura y Rol

Las decisiones sobre la arquitectura y el rol del agente deben ser documentadas en `ADRs`. Use la siguiente guía para orientar la decisión.

| Si su objetivo es... | Considere el patrón/rol... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Responder preguntas sobre un corpus de conocimiento privado y confiable. | Generación Aumentada por Recuperación (RAG) | Permite a los LLMs generar respuestas basadas en sus datos, con citas, reduciendo la alucinación. | `gt_gestion_conocimiento.md` |
| Permitir que la IA interactúe con otros sistemas para ejecutar acciones. | Llamado a Herramientas (Tool Calling) | Expone APIs de negocio de forma segura para que el agente las invoque y realice tareas en el mundo real. | `gt_ingenieria_ia.md` |
| Orquestar múltiples `EVs` (datos, IA, APIs) en un flujo de negocio complejo. | Un Agente Orquestador que sigue un `Contrato de Proceso`. | Centraliza la lógica del flujo de valor, invocando otras capacidades a través de sus `Contratos`. | `gt_ingenieria_software.md`, `gt_arquitectura_nexus.md` |
| Definir los límites y capacidades de un agente de IA. | Implementar un `Contrato de Agente` explícito. | Formaliza el nivel de autonomía, las herramientas permitidas y los `Guardrails` del agente. | `gt_ingenieria_ia.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la arquitectura de referencia para aplicaciones de LLM, el diseño de `Contratos de Agente` y las prácticas de MLOps/LLMOps, consulte la `gt_ingenieria_ia.md`.