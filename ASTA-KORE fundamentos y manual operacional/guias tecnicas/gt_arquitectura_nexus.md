# Guía Técnica: Arquitectura de Referencia Nexus

ID: `GT-SIGMA-001`
Versión: 1.0
Dominio: Arquitectura Empresarial

Propósito: Esta guía técnica define la arquitectura de referencia Nexus. Nexus es la implementación canónica de los principios ASTA-Kore, proveyendo el "cómo" técnico para el "porqué" estratégico del marco. Su nombre evoca su función: ser el punto de conexión central entre la estrategia, la gobernanza y la implementación técnica.

Audiencia: Arquitectos de Soluciones, Líderes Técnicos, Ingenieros Senior.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_arquitectura_nexus.md`
* Artefactos KORE Gobernados: `Canvas de EV`, `Mapa de Capacidades`, `Contratos Conversacionales`, `ADRs`.

---

## 1. Principios de la Plataforma Nexus

Estos principios son la traducción de la filosofía KORE en directivas de ingeniería no negociables.

1. Semántica Primero: Todo artefacto técnico (microservicio, producto de datos, agente) debe operar bajo un `Contrato` explícito y versionado. La semántica precede a la implementación.
2. Gobernanza Embebida: Las políticas de seguridad, riesgo y cumplimiento (`Guardrails`) se implementan como código (`Policy-as-Code`) y se integran en los pipelines de CI/CD. La gobernanza es una capacidad automatizada, no un comité.
3. Federación con Guardrails: Los equipos de dominio tienen autonomía para elegir sus herramientas y patrones, siempre que cumplan con los `Contratos` y `Guardrails` definidos por la plataforma central.
4. Observabilidad por Diseño: Todas las `Entidades de Valor` deben ser instrumentadas desde su concepción para emitir las "tres columnas" de la observabilidad (Logs Estructurados, Métricas y Trazas). Los `SLOs` deben ser medibles.
5. Humano-en-el-Bucle (HITL) por Defecto: Para cualquier proceso que implique un riesgo significativo (financiero, legal, reputacional), la autonomía de los agentes digitales debe ser supervisada. El modo de interacción por defecto es HITL.
6. API-First, RPA como Último Recurso: La interacción programática a través de APIs es el estándar. El uso de RPA es una forma de deuda técnica que debe ser aprobada por el CoE de Automatización y documentada en un `ADR` con un plan de reemplazo.

## 2. Arquitectura de Capas de Nexus

Esta arquitectura define el `Mapa de Capacidades` de la plataforma tecnológica que soporta el ecosistema KORE.

| Capa de Nexus | Propósito en el Ecosistema KORE | Capacidades Clave | Ejemplos de Implementación | **Alternativas Soberanas / Open-Source** |
| :--- | :--- | :--- | :--- | :--- |
| Capa de Valor y Gobierno | Define las "reglas del juego" estratégicas. | Gestión de Políticas (Policy-as-Code), Ética y Riesgo, CoE, FinOps. | OPA, Cedar, Jira, PowerBI. | **OPA, Kyverno, GitLab Issues, Superset** |
| Capa Semántica Común | Provee el vocabulario compartido y la interoperabilidad. | Ontología KORE (SHACL/OWL), Glosario de Negocio, Plantillas de `Contratos`. | VocBench, Schema.org, Git. | **Git, Open-source web editors** |
| Tejidos de Ejecución | Materializa las `Entidades de Valor` en dominios específicos. | Tejido de Conocimiento (RAG), Tejido de Datos (Data Mesh), Tejido de Procesos (BPM), Tejido de Agentes (IA). | Ver Guías Técnicas de cada dominio. | **(Ver Guías Técnicas específicas)** |
| Plataforma de Ingeniería | Provee las herramientas para construir y operar con calidad. | CI/CD, Infraestructura como Código (IaC), Observabilidad, Seguridad (SAST/DAST/SCA). | GitLab CI, Terraform, Prometheus, Grafana, SonarQube, Vault. | **Jenkins, OpenTofu, VictoriaMetrics, Trivy, Vault** |
| Capa de Integración | Permite que las `Entidades de Valor` se comuniquen. | API Gateway, Bus de Mensajes, Catálogos de Servicios y Datos. | Kong, Kafka, Backstage, Amundsen. | **Apache APISIX, RabbitMQ, NATS, Backstage** |

## 3. El Sistema de Contratos de Nexus

La Plataforma Nexus define cuatro tipos de `Contratos` técnicos que son la implementación del `Contrato Conversacional` de KORE. Son los acuerdos legalmente vinculantes de nuestro sistema sociotécnico.

* `Contrato de Datos`:
  * Gobierna: Un `Producto de Datos`.
  * Asegura: Calidad, frescura, linaje y semántica de los datos.
  * Referencia: `gt_ingenieria_datos.md`

* `Contrato de Proceso`:
  * Gobierna: Un `Flujo de Valor` automatizado.
  * Asegura: SLAs de rendimiento, puntos de HITL y lógica de compensación.
  * Referencia: `gt_ingenieria_software.md`

* `Contrato de Agente`:
  * Gobierna: Un `Sistema Cognitivo` (Agente de IA).
  * Asegura: Nivel de autonomía, herramientas permitidas y `Guardrails` de comportamiento.
  * Referencia: `gt_ingenieria_ia.md`

* `Contrato de Conocimiento`:
  * Gobierna: Una colección de conocimiento para ser usada por un sistema RAG.
  * Asegura: Autoridad de la fuente, vigencia y obligación de generar respuestas con citas.
  * Referencia: `gt_gestion_conocimiento.md`

## 4. La Ontología de Nexus

La ontología de Nexus es el `Modelo Conceptual` formal de KORE. Define las entidades (`SistemaDeTrabajo`, `AgenteDigital`, `ProductoDeDatos`), sus atributos y sus relaciones. Permite la validación automática de la coherencia del sistema.
> "Toda `RespuestaRAG` generada por un `AgenteDigital` debe tener al menos una cita a un `Chunk` de un `Documento` cuyo `ContratoDeConocimiento` tenga la política `citation_policy: required_exact`."
