# guias decisión unificadas

## Guía de Decisión: Arquitectura de Entidades de Valor con la Plataforma Nexus

ID: `GD-SIGMA-001`
Versión: 2.0
Propósito: Esta es la guía maestra que establece la Plataforma Nexus como la implementación canónica de KORE. Guía a los equipos en la adopción de sus principios y en la elección de patrones arquitectónicos para sus `Entidades de Valor`.

---

### Principio KORE: La Arquitectura como Consecuencia del Diseño

La elección de un patrón arquitectónico (Monolito, Microservicios) no es el primer paso, sino una consecuencia del diseño de la `Entidad de Valor`. El acto de diseño más importante es definir los límites de la EV usando el `Canvas de EV`.

### Protocolo de Decisión Arquitectónica

#### Parte 1: Adopción de los Fundamentos de la Plataforma Nexus

Toda `Entidad de Valor` construida bajo el marco KORE debe adoptar los siguientes componentes de la Plataforma Nexus para garantizar la coherencia y la interoperabilidad del ecosistema.

| Si su objetivo es... | Debe adoptar el componente Nexus... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Asegurar la coherencia en el diseño. | Los principios de la Plataforma Nexus. | Son la traducción de la filosofía KORE en directivas de ingeniería no negociables. | `gt_arquitectura_nexus.md` |
| Garantizar la interoperabilidad robusta. | El Sistema de Contratos Nexus. | Son la implementación técnica de los `Contratos Conversacionales` de KORE. | `gt_arquitectura_nexus.md` |
| Construir sobre una base sólida. | La Plataforma de Ingeniería Nexus. | Provee las herramientas (CI/CD, IaC, Observabilidad) para construir con calidad y velocidad. | `gt_arquitectura_nexus.md` |
| Gestionar el conocimiento para IA de forma canónica. | El Marco de curación y gestión del conocimiento consumible por IA | Es la implementación de referencia del pipeline de curación de conocimiento para RAG. | `gt_gestion_conocimiento.md` |

#### Parte 2: Selección del Patrón Arquitectónico para la Aplicación

Una vez definidos los límites de la EV en el `Canvas de EV`, utilice la siguiente heurística para seleccionar el patrón de aplicación más adecuado. Documente siempre la justificación en una `Bitácora de Decisión (ADR)`.

| Si su `Entidad de Valor` es... | Considere el patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Simple, autocontenida y gestionada por un solo equipo. | Monolito Modular | Prioriza la simplicidad de desarrollo y despliegue inicial. | `gt_ingenieria_software.md` |
| Compleja, con necesidad de escalabilidad granular y autonomía de equipo. | Microservicios | Permite despliegues independientes y resiliencia por componente. | `gt_ingenieria_software.md` |
| Requerida para reaccionar a eventos de negocio de forma asíncrona. | Arquitectura Orientada a Eventos (EDA) | Proporciona máxima desacoplación y absorbe picos de carga. | `gt_ingenieria_software.md` |

Advertencia: La complejidad operacional de los sistemas distribuidos (Microservicios, EDA) es alta. No los adopte a menos que los beneficios superen claramente los costos. Empiece simple.

---


## Guía de Decisión: Diseño de Experiencia de Usuario (UX)

ID: `GD-UX-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño de la experiencia de usuario (UX) para una `Entidad de Valor (EV)`.

---

### Principio KORE: La Experiencia del Usuario es una Capacidad, no un Adorno

Una `Entidad de Valor` no solo debe ser funcionalmente correcta, sino también usable, accesible y eficiente. La UX es una dimensión crítica de la calidad que debe ser considerada desde el inicio del diseño en el `Canvas de EV`, no como una ocurrencia tardía.

### Protocolo de Decisión para el Diseño de UX

Durante el `Taller de Canvas de EV`, utilice las siguientes preguntas para guiar la conversación sobre la experiencia del usuario:

| Caja del Canvas | Pregunta Clave de UX a Responder |
| :--- | :--- |
| 2. Usuarios | ¿Quiénes son los consumidores de esta EV? ¿Cuál es su contexto, nivel de habilidad y necesidades de accesibilidad? |
| 3. Flujo de Valor | ¿Cómo es el "viaje del usuario" al interactuar con esta EV? ¿Dónde podemos reducir la fricción? |
| 5. Descubrimiento | ¿Cómo encontrarán los usuarios la funcionalidad que necesitan? ¿Es la navegación intuitiva? |
| 8. Gobernanza | ¿Cómo proporcionamos ayuda contextual y manejamos los errores de forma clara? |

### Heurísticas de Decisión de Diseño

Las decisiones de diseño deben estar alineadas con los principios de la UX moderna. Utilice esta guía para orientar sus decisiones y consulte la guía técnica para patrones de implementación.

| Si su objetivo es... | Considere el principio/patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Simplificar interfaces complejas y reducir la carga cognitiva. | Divulgación Progresiva y Minimalismo. | Muestra solo lo necesario, revelando la complejidad solo cuando se solicita. | `gt_diseno_ux.md` |
| Aumentar la eficiencia de los usuarios expertos. | Atajos de Teclado y Paletas de Comandos. | Permite a los usuarios avanzados operar la interfaz sin depender del ratón, acelerando tareas repetitivas. | `gt_diseno_ux.md` |
| Garantizar la coherencia a través de múltiples aplicaciones. | Adoptar un Sistema de Diseño (Design System). | Proporciona un repositorio central de componentes y patrones reutilizables, acelerando el desarrollo. | `gt_diseno_ux.md` |
| Hacer la aplicación accesible para todos los usuarios. | Diseño Inclusivo (WCAG) por defecto. | La accesibilidad no es una opción, es un requisito que beneficia a todos los usuarios. | `gt_diseno_ux.md` |
| Integrar IA para mejorar la experiencia. | Copilotos y Asistentes de IA. | Aumenta la inteligencia del usuario, automatiza tareas y proporciona ayuda contextual en lenguaje natural. | `gt_diseno_ux.md`, `gt_ingenieria_ia.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la gestión de un Sistema de Diseño, patrones de interfaz para aplicaciones empresariales y la integración de IA en la UX, consulte la `gt_diseno_ux.md`.


---


## Guía de Decisión: Automatización de Procesos de Negocio

ID: `GD-BPA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a decidir la estrategia de automatización correcta para un proceso de negocio, en el contexto de una `Entidad de Valor (EV)`.

---

### Principio KORE: API-First, RPA como Deuda Técnica

La interacción programática a través de un `Contrato de Servicio` (API) es siempre la opción preferida por su robustez y bajo acoplamiento. El uso de RPA para interactuar con la UI de otro sistema debe ser considerado una forma de deuda técnica: una solución táctica y temporal que debe ser explícitamente justificada y gestionada.

### Protocolo de Decisión de Automatización

Siga este protocolo al diseñar o evolucionar una `Entidad de Valor`.

#### Paso 1: Modelar el Flujo de Valor (Σ-T)

* Use la Caja 3 (Flujo de Valor) del `Canvas de EV` para mapear las etapas clave del proceso de negocio de punta a punta.

#### Paso 2: Analizar las Interacciones y Dependencias (Σ-O)

* Para cada etapa que requiere interactuar con otro sistema (una `Dependencia` en la Caja 7 del Canvas), pregunte: "¿Esta dependencia expone una API estable y documentada?"

#### Paso 3: Aplicar la Heurística de Decisión

Utilice la siguiente tabla para elegir la herramienta de automatización correcta para el problema correcto.

| Si la interacción es con... | Y el proceso es... | Use la tecnología... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- | :--- |
| Una API (Contrato de Servicio) | De larga duración y/o con lógica compleja. | BPA/DPA (Orquestación) | Es la forma robusta y escalable de gestionar flujos de trabajo que involucran múltiples sistemas. | `gt_ingenieria_software.md` |
| Una UI (sin API disponible) | Repetitivo y basado en reglas. | RPA (Automatización UI) | Es un "puente" táctico para integrar sistemas legacy. Debe ser la última opción. | `gt_ingenieria_software.md` |
| Datos no estructurados o decisiones con juicio. | Cognitivamente complejo. | Intelligent Automation (IA) | Permite automatizar tareas que un `if/else` no puede resolver (ej. leer un PDF, interpretar un email). | `gt_ingenieria_ia.md` |

#### Paso 4: Documentar la Decisión de Usar RPA en un `ADR` (Δ-O)

La decisión de implementar RPA DEBE ser documentada en una `Bitácora de Decisión`.

* Título del ADR: "Adopción de RPA para la integración con el Sistema Legacy X".
* Contexto: Explique por qué no fue posible usar una API y los intentos que se hicieron para obtenerla.
* Consecuencias (Negativas): Documente explícitamente los riesgos: "Esta solución es frágil ante cambios en la UI del sistema legacy", "Introduce un alto costo de mantenimiento".
* Plan de Mitigación: Incluya un plan para, eventualmente, reemplazar el bot de RPA una vez que una API esté disponible. Esto hace que la deuda técnica sea visible y manejable.


---


## Guía de Decisión: Diseño de Productos de Datos

ID: `GD-DATA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño, la gobernanza y la operación de Productos de Datos como `Entidades de Valor (EV)`.

---

### Principio KORE: El Dato como un Producto, no como un Subproducto

En KORE, un conjunto de datos expuesto no es un subproducto de un proceso, sino una `Entidad de Valor` de primera clase. Como tal, debe ser tratado como un producto: tiene un dueño, un ciclo de vida, clientes (consumidores), y `SLOs` de calidad y disponibilidad que se formalizan en un `Contrato de Datos`.

### Protocolo de Decisión para el Diseño de un Producto de Datos

Utilice el `Canvas de EV` como herramienta principal para el diseño colaborativo de un Producto de Datos. Las siguientes preguntas clave deben guiar la conversación:

| Caja del Canvas | Pregunta Clave para un Producto de Datos |
| :--- | :--- |
| 1. Propósito | ¿Qué decisión de negocio o capacidad analítica habilita este producto de datos? |
| 2. Usuarios | ¿Quién o qué consume los datos? (Personas, APIs, Modelos de IA). |
| 3. Flujo de Valor | ¿Cuál es el linaje de los datos? (ej. `Bronce -> Plata -> Oro`). |
| 4. Métricas (SLOs) | ¿Cómo medimos su fiabilidad? (ej. `Frescura < 1h`, `Disponibilidad > 99.9%`). |
| 8. Gobernanza | ¿Cuáles son las reglas de acceso, uso y calidad? ¿Quién es el dueño del producto? |

### Heurísticas de Decisión Arquitectónica

Las decisiones técnicas significativas sobre la implementación de un producto de datos deben ser documentadas en `ADRs`. Utilice la siguiente guía para la toma de decisiones y consulte la guía técnica para los detalles de implementación.

| Si necesita... | Considere el patrón/tecnología... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Gobernar la calidad y el acceso a su producto de datos. | Implementar un `Contrato de Datos` versionado. | Formaliza las expectativas entre productor y consumidor y permite la gobernanza automatizada. | `gt_ingenieria_datos.md` |
| Equilibrar flexibilidad y rendimiento para el almacenamiento de datos. | Una arquitectura Lakehouse con zonas Bronce, Plata y Oro. | Combina la flexibilidad de un Data Lake con la gobernanza y el rendimiento de un Data Warehouse. | `gt_ingenieria_datos.md` |
| Asegurar la calidad de los datos de forma sistemática. | Un Pipeline de Calidad de Datos (Preventivo, Detectivo, Correctivo). | Transforma la calidad de los datos de una tarea manual a un proceso de ingeniería automatizado. | `gt_ingenieria_datos.md` |
| Medir y garantizar la fiabilidad de sus productos de datos. | Un enfoque de SRE de Datos con `SLIs` y `SLOs`. | Trata los productos de datos como servicios críticos cuya fiabilidad se mide y se gestiona activamente. | `gt_ingenieria_datos.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la estructura detallada de los `Contratos de Datos`, los pipelines de calidad y la observabilidad, consulte la `gt_ingenieria_datos.md`.


---


## Guía de Decisión: Diseño de Sistemas Cognitivos (IA)

ID: `GD-IA-001`
Versión: 1.0
Propósito: Ayudar a los equipos a tomar decisiones estratégicas sobre el diseño, la gobernanza y el rol de los Sistemas Cognitivos (agentes, copilotos) como `Entidades de Valor (EV)`.

---

### Principio KORE: Aumentar la Inteligencia Humana, no Reemplazarla

El objetivo principal de un Sistema Cognitivo en KORE es aumentar y escalar la capacidad humana. El diseño debe priorizar la colaboración humano-máquina, la confianza y la capacidad del humano para supervisar, intervenir y anular al sistema. El `Humano-en-el-Bucle (HITL)` no es una opción, es el modo de operación por defecto para decisiones de alto impacto.

### Protocolo de Decisión para el diseño de un Sistema Cognitivo

Utilice el `Canvas de EV` como el artefacto central para el diseño colaborativo de un Sistema Cognitivo. Las siguientes preguntas deben guiar la conversación:

| Caja del Canvas | Pregunta Clave para un Sistema Cognitivo |
| :--- | :--- |
| 1. Propósito |  Qué decisión o tarea humana estamos aumentando?  Qué es el KPI de éxito del negocio? |
| 2. Usuarios |  Quién interactúa con el sistema (experto, novato)?  Qué nivel de autonomía y confianza le daremos? |
| 3. Flujo de Valor |  Qué es el pipeline cognitivo (ej. RAG, Tool Calling)?  Dónde están los puntos de control HITL? |
| 4. Métricas (SLOs) |  Más allá de la precisión:  Qué es la latencia (`TTFT`), el costo por inferencia, la tasa de alucinación? |
| 8. Gobernanza |  Qué `Guardrails` previenen el contenido tóxico o las fugas de datos?  Cómo se auditan sus acciones? |

### Heurísticas de Decisión de Arquitectura y Rol

Las decisiones sobre la arquitectura y el rol del agente deben ser documentadas en `ADRs`. Use la siguiente guía para orientar la decisión.

| Si su objetivo es... | Considere el patrón/rol... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Responder preguntas sobre un corpus de conocimiento privado y confiable. | Generación Aumentada por Recuperación (RAG) | Permite a los LLMs generar respuestas basadas en sus datos, con citas, reduciendo la alucinación. | `gt_gestion_conocimiento.md` |
| Permitir que la IA interactúe con otros sistemas para ejecutar acciones. | Llamado a Herramientas (Tool Calling) | Expone APIs de negocio de forma segura para que el agente las invoque y realice tareas en el mundo real. | `gt_ingenieria_ia.md` |
| Orquestar múltiples `EVs` (datos, IA, APIs) en un flujo de negocio complejo. | Un Agente Orquestador que sigue un `Contrato de Proceso`. | Centraliza la lógica del flujo de valor, invocando otras capacidades a través de sus `Contratos`. | `gt_ingenieria_software.md`, `gt_arquitectura_nexus.md` |
| Definir los límites y capacidades de un agente de IA. | Implementar un `Contrato de Agente` explícito. | Formaliza el nivel de autonomía, las herramientas permitidas y los `Guardrails` del agente. | `gt_ingenieria_ia.md` |

Para una inmersión profunda en la implementación de estos patrones, incluyendo la arquitectura de referencia para aplicaciones de LLM, el diseño de `Contratos de Agente` y las prácticas de MLOps/LLMOps, consulte la `gt_ingenieria_ia.md`.

---


## Guía de Decisión: Gestión del Conocimiento

ID: `GD-KNOW-001`
Versión: 1.0
Propósito: Ayudar a los equipos y a la organización a tomar decisiones sobre cómo capturar, sintetizar y aplicar el conocimiento para mejorar la entrega de valor.

---

### Principio KORE: El Conocimiento es una Capacidad Activa, no un Archivo Pasivo

La Gestión del Conocimiento (KM) no es un fin en sí mismo, sino una capacidad habilitadora que reduce la incertidumbre y acelera los ciclos de aprendizaje. En KORE, el conocimiento se gestiona a través de los rituales y artefactos del marco.

### Protocolo de Decisión para la Gestión del Conocimiento

| Si su objetivo es... | Considere el protocolo/patrón... | Porque... | Guía Técnica de Referencia |
| :--- | :--- | :--- | :--- |
| Capturar el "porqué" de una decisión técnica importante. | Documentar la decisión en una `Bitácora de Decisión (ADR)`. | Combate la "amnesia organizacional" y crea un activo de conocimiento explícito y reutilizable. | `gt_ingenieria_software.md` |
| Sintetizar el conocimiento de un dominio en una forma accionable. | Crear o actualizar una Guía Técnica (GT). | Consolida el "cómo" en una fuente única de verdad, separándolo del "porqué" estratégico. | `gt_arquitectura_nexus.md` |
| Habilitar a un Sistema de IA para que responda preguntas sobre conocimiento interno de forma confiable. | Implementar un Pipeline de Curación para RAG. | Transforma documentos no estructurados en una base de conocimiento que la IA puede usar para dar respuestas citables y verificables. | `gt_gestion_conocimiento.md` |
| Gobernar el uso del conocimiento por parte de la IA. | Implementar un `Contrato de Conocimiento`. | Define las reglas de autoridad, vigencia y citación para una colección de conocimiento, garantizando su uso responsable. | `gt_gestion_conocimiento.md` |

Para una inmersión profunda en la implementación de un sistema de gestión del conocimiento, y especialmente en el pipeline técnico para la curación de contenido para RAG, consulte la `gt_gestion_conocimiento.md`.


---


