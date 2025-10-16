# GT-IA-001: Ingeniería de Sistemas Cognitivos (IA)

**ID:** GT-IA-001  
**Versión:** 2.0  
**Dominio:** Inteligencia Artificial, MLOps, LLMOps  
**Protocolo:** 2.1 - Diseño de Arquitectura

## Invariante Central

**El modelo no es el sistema. El valor reside en el sistema sociotécnico completo que rodea al modelo.**

Los sistemas cognitivos son Entidades de Valor responsables y gobernadas.

## Principios

### Principio 1: El Modelo no es el Sistema

**Regla:** El valor está en el sistema completo: datos, interfaces, contratos, guardrails.

**Criterio:** La precisión del modelo es solo una métrica entre muchas.

### Principio 2: Contexto Específico

**Regla:** El rendimiento de un modelo no es transferible.

**Criterio:** Cada aplicación debe validarse para su caso de uso y contexto específico.

### Principio 3: Aumento, no Reemplazo

**Regla:** Priorizar sistemas que aumenten la inteligencia humana.

**Patrón:** Humano-en-el-Bucle (HITL) es la norma para decisiones de alto impacto.

### Principio 4: Responsabilidad Distribuida

**Regla:** La responsabilidad por acciones de un agente se distribuye explícitamente.

**Roles:** Dueño de Capacidad, Arquitecto de IA, Ingeniero de Prompts.

## Arquitectura de Referencia (4 Capas)

### Capa 4: Aplicación y UX

**Propósito:** Interfaz final con el usuario.

**Ejemplos:** Chatbot, copiloto, buscador inteligente.

### Capa 3: Servicios de Negocio e Integración

**Propósito:** Exponer capacidad de IA como API segura y gobernada.

**Integración:** Sistema de identidad corporativo (OIDC/SSO).

### Capa 2: Gateway de IA

**Propósito:** Fachada única para todas las llamadas a LLMs.

**Funciones:**

- Abstracción del proveedor
- Gestión de credenciales
- Caché
- Control de tráfico
- Monitoreo de costos

### Capa 1: Orquestación de Lógica y Contexto

**Propósito:** "Cerebro" de la aplicación.

**Funciones:**

- Coordinar flujo de trabajo
- Gestionar prompts y memoria
- Decidir cuándo usar RAG o llamar herramientas

## Patrones de Orquestación Cognitiva

### Patrón 1: RAG (Retrieval-Augmented Generation)

**Propósito:** Permitir a LLMs responder basándose en corpus de conocimiento privado.

**Flujo:**

1. Ingesta y curación
2. Chunking estructural
3. Indexación (vectorial + lexical)
4. Recuperación y re-ranking
5. Construcción de prompt con contexto
6. Generación con citas

**Gobernanza:** Regulado por Contrato de Conocimiento.

### Patrón 2: Tool Calling (Function Calling)

**Propósito:** Permitir a LLM interactuar con el mundo exterior invocando APIs.

**Gobernanza:** Cada herramienta debe tener Contrato de Servicio y permisos restringidos.

### Patrón 3: Sistemas Multi-Agente

**Propósito:** Descomponer tareas complejas en roles especializados.

**Patrones:**

- Router (dirige a agente correcto)
- Supervisor-Worker
- Debate (Crítico-Refinador)

## Contrato de Agente

**Definición:** Define personalidad, capacidades y límites de un agente de IA.

**Secciones del Contrato:**

- **Autonomy Level:** Nivel de autonomía (RAG, ReAct, Plan & Execute)
- **Role:** Rol en sistema de trabajo (Monitor, Coproduce, Execute)
- **Tools:** Herramientas que puede invocar
- **RAG Policy:** Cómo usa el conocimiento
- **Guardrails:** Barandas de seguridad (input/output scans, límites operacionales)
- **Quality Metrics:** SLOs del agente
- **HITL Checkpoints:** Cuándo escalar a humano

**Referencia:** Ver plantillas en `/plantillas_contratos/agentes/`

## MLOps y LLMOps: Ciclo de Vida Operacional

### Gestión de Prompts

**Patrón:** Tratar prompts como código.

**Práctica:** Centralizar en Registro de Prompts para versionar, probar (A/B) y actualizar sin redesplegar.

### Serving de Modelos

**Principios:**

- Runtimes optimizados para maximizar rendimiento
- Endpoints con API estándar para facilitar integración
- Abstracción del proveedor

### Evaluación y Monitoreo

**Evaluación Offline:**

- Golden sets para regresión
- LLM-as-a-judge para evaluar calidad

**Monitoreo Online:**

- Métricas de calidad (fidelidad, alucinación, toxicidad)
- Métricas de rendimiento (latencia, tokens/seg)
- Métricas de costo (costo por tarea/conversación)

### Seguridad

**Defensas contra:**

- Inyección de prompts
- Fugas de datos a través del contexto
- Envenenamiento de datos de entrenamiento

**Referencia:** Ver estándares de seguridad para LLMs.

## Integración con ASTA-Kore

**Contratos:** Todo agente debe tener un Contrato de Agente versionado.

**Referencia:** Ver `gt_gestion_conocimiento.md` para gestión de corpus RAG.
