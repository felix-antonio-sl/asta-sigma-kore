# guias técnicas unificadas

## Guía Técnica: Arquitectura del Mono-Repo de Implementación

ID: `GT-ALM-001`
Versión: 1.0
Dominio: Gestión del Ciclo de Vida de las Aplicaciones (ALM)

### 1. Propósito

Esta guía define la arquitectura canónica para el mono-repo de una organización que implementa el marco ASTA-KORE. Su objetivo es estandarizar la estructura de directorios, la ubicación de los artefactos clave y la relación con el marco KORE para asegurar la coherencia, navegabilidad y automatización del ecosistema.

### 2. Estructura de Repositorios

Se establece una separación clara entre el marco (la definición de KORE) y la implementación (el trabajo vivo de la organización).

* Repositorio del Marco (`asta-kore-framework`): Contiene las guías, ontologías y plantillas de contrato. Es la fuente de verdad del estándar.
* Repositorio de Implementación (Mono-repo de la Organización): Contiene el trabajo específico de la organización y consume el marco como un submódulo de solo lectura.

#### 2.1. Estructura Raíz del Mono-Repo

La estructura raíz de referencia es la siguiente:

```
/<org-repo>/
├─ _framework_asta-kore/      # Submódulo Git apuntando al repo del marco (solo lectura)
├─ entidades_de_valor/        # Contiene todas las Entidades de Valor (EVs)
├─ conocimiento/              # Corpus de conocimiento compartido (si aplica)
├─ paquetes/                  # Librerías y componentes compartidos
├─ ops/                       # Operaciones a nivel de repositorio (pipelines, policies)
└─ proyectos_espejo/          # Charters de proyectos sin código propio (solo gestión)
```

#### 2.2. Estructura de una Entidad de Valor (EV)

Cada EV, sea una aplicación, un proceso o un agente, sigue una estructura interna predecible:

```
/entidades_de_valor/
└─ ev-<nombre-ev>/
   ├─ contratos/             # Instancias VIVAS de los contratos (ej. contrato_proceso.yml)
   ├─ docs/                  # Documentación: ADRs, CVCs, Story Maps
   │  ├─ adrs/               # Decisiones de arquitectura
   │  └─ cvc/                # Informes del Ciclo de Vida del Valor (ej. informe-2025-Q4.md)
   ├─ ops/                   # Pipelines y configuración de CI/CD específicos de la EV
   ├─ src/                   # Código fuente
   └─ tests/                 # Pruebas automatizadas
```

#### 2.3. Convención para Agentes de IA

Los Agentes de IA son EVs de primera clase. Para distinguirlos y facilitar la automatización, siguen una convención específica:

* Se alojan en `entidades_de_valor/ev-agente-<nombre-agente>/`.
* Su artefacto principal es el `contrato_agente.yml` en la raíz de su directorio, que centraliza su definición y gobernanza.

### 3. Principios Operativos

1. Framework como Dependencia: El código de la organización NUNCA debe modificar el contenido de `/_framework_asta-kore/`. Las actualizaciones se gestionan a través de `git submodule update`.
2. Contratos Vivos: Los contratos en `entidades_de_valor//contratos/` son artefactos operables. Los pipelines de CI/CD DEBEN validarlos contra los esquemas definidos en el marco.
3. Visibilidad del Valor (CVC): Cada EV debe producir un informe CVC trimestral en su directorio `docs/cvc/`, vinculando evidencia de OKRs, demos y métricas de salud.


---


## Guía Técnica: Arquitectura de Referencia Nexus

ID: `GT-SIGMA-001`
Versión: 1.0
Dominio: Arquitectura Empresarial

Propósito: Esta guía técnica define la arquitectura de referencia Nexus. Nexus es la implementación canónica de los principios ASTA-Kore, proveyendo el "cómo" técnico para el "porqué" estratégico del marco. Su nombre evoca su función: ser el punto de conexión central entre la estrategia, la gobernanza y la implementación técnica.

Audiencia: Arquitectos de Soluciones, Líderes Técnicos, Ingenieros Senior.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_arquitectura_nexus.md`
* Artefactos KORE Gobernados: `Canvas de EV`, `Mapa de Capacidades`, `Contratos Conversacionales`, `ADRs`.

---

### 1. Principios de la Plataforma Nexus

Estos principios son la traducción de la filosofía KORE en directivas de ingeniería no negociables.

1. Semántica Primero: Todo artefacto técnico (microservicio, producto de datos, agente) debe operar bajo un `Contrato` explícito y versionado. La semántica precede a la implementación.
2. Gobernanza Embebida: Las políticas de seguridad, riesgo y cumplimiento (`Guardrails`) se implementan como código (`Policy-as-Code`) y se integran en los pipelines de CI/CD. La gobernanza es una capacidad automatizada, no un comité.
3. Federación con Guardrails: Los equipos de dominio tienen autonomía para elegir sus herramientas y patrones, siempre que cumplan con los `Contratos` y `Guardrails` definidos por la plataforma central.
4. Observabilidad por Diseño: Todas las `Entidades de Valor` deben ser instrumentadas desde su concepción para emitir las "tres columnas" de la observabilidad (Logs Estructurados, Métricas y Trazas). Los `SLOs` deben ser medibles.
5. Humano-en-el-Bucle (HITL) por Defecto: Para cualquier proceso que implique un riesgo significativo (financiero, legal, reputacional), la autonomía de los agentes digitales debe ser supervisada. El modo de interacción por defecto es HITL.
6. API-First, RPA como Último Recurso: La interacción programática a través de APIs es el estándar. El uso de RPA es una forma de deuda técnica que debe ser aprobada por el CoE de Automatización y documentada en un `ADR` con un plan de reemplazo.

### 2. Arquitectura de Capas de Nexus

Esta arquitectura define el `Mapa de Capacidades` de la plataforma tecnológica que soporta el ecosistema KORE.

| Capa de Nexus | Propósito en el Ecosistema KORE | Capacidades Clave | Ejemplos de Implementación | **Alternativas Soberanas / Open-Source** |
| :--- | :--- | :--- | :--- | :--- |
| Capa de Valor y Gobierno | Define las "reglas del juego" estratégicas. | Gestión de Políticas (Policy-as-Code), Ética y Riesgo, CoE, FinOps. | OPA, Cedar, Jira, PowerBI. | **OPA, Kyverno, GitLab Issues, Superset** |
| Capa Semántica Común | Provee el vocabulario compartido y la interoperabilidad. | Ontología KORE (SHACL/OWL), Glosario de Negocio, Plantillas de `Contratos`. | VocBench, Schema.org, Git. | **Git, Open-source web editors** |
| Tejidos de Ejecución | Materializa las `Entidades de Valor` en dominios específicos. | Tejido de Conocimiento (RAG), Tejido de Datos (Data Mesh), Tejido de Procesos (BPM), Tejido de Agentes (IA). | La implementación del Tejido de Conocimiento está normada por la `gt_gestion_conocimiento.md`. La del Tejido de Agentes, por la `gt_ingenieria_ia.md`. | **(Ver Guías Técnicas específicas)** |
| Plataforma de Ingeniería | Provee las herramientas para construir y operar con calidad. | CI/CD, Infraestructura como Código (IaC), Observabilidad, Seguridad (SAST/DAST/SCA). | GitLab CI, Terraform, Prometheus, Grafana, SonarQube, Vault. | **Jenkins, OpenTofu, VictoriaMetrics, Trivy, Vault** |
| Capa de Integración | Permite que las `Entidades de Valor` se comuniquen. | API Gateway, Bus de Mensajes, Catálogos de Servicios y Datos. | Kong, Kafka, Backstage, Amundsen. | **Apache APISIX, RabbitMQ, NATS, Backstage** |

### 3. El Sistema de Contratos de Nexus

La Plataforma Nexus define cuatro tipos de `Contratos` técnicos que son la implementación del `Contrato Conversacional` de KORE. Son los acuerdos legalmente vinculantes de nuestro sistema sociotécnico.

* `Contrato de Datos`:
  * Gobierna: Un `Producto de Datos`.
  * Asegura: Calidad, frescura, linaje y semántica de los datos.
  * Referencia: `gt_ingenieria_datos.md`

* `Contrato de Proceso`:
  * Gobierna: Un `Flujo de Valor` automatizado.
  * Asegura: SLAs de rendimiento, puntos de HITL y lógica de compensación.
  * Referencia: `gt_ingenieria_software.md` — [Especificación](../plantillas_contratos/procesos/contrato_proceso.md) · [Plantilla](../plantillas_contratos/procesos/contrato_proceso.yml)

* `Contrato de Agente`:
  * Gobierna: Un `Sistema Cognitivo` (Agente de IA).
  * Asegura: Nivel de autonomía, herramientas permitidas y `Guardrails` de comportamiento.
  * Referencia: `gt_ingenieria_ia.md`

* `Contrato de Conocimiento`:
  * Gobierna: Una colección de conocimiento para ser usada por un sistema RAG.
  * Asegura: Autoridad de la fuente, vigencia y obligación de generar respuestas con citas.
  * Referencia: `gt_gestion_conocimiento.md`

### 4. La Ontología de Nexus

La ontología de Nexus es el `Modelo Conceptual` formal de KORE. Define las entidades (`SistemaDeTrabajo`, `AgenteDigital`, `ProductoDeDatos`), sus atributos y sus relaciones. Permite la validación automática de la coherencia del sistema.
> "Toda `RespuestaRAG` generada por un `AgenteDigital` debe tener al menos una cita a un `Chunk` de un `Documento` cuyo `ContratoDeConocimiento` tenga la política `citation_policy: required_exact`."


---


## Guía Técnica: Ingeniería de Aplicaciones y Procesos

ID: `GT-SOFT-001`
Versión: 1.0
Dominio: Ingeniería de Software y Automatización de Procesos

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para el diseño, construcción y operación de `Entidades de Valor` de tipo Aplicación de Negocio y Proceso Automatizado.

Audiencia: Arquitectos de Soluciones, Ingenieros de Software, Ingenieros de Automatización.

Relación con KORE:

* Guías de Decisión Relacionadas: `gd_arquitectura_nexus.md`, `gd_automatizacion_proceso.md`
* Contrato Nexus Implementado: `Contrato de Proceso` — [Especificación](../contratos/procesos/contrato_proceso.md) · [Plantilla](../contratos/procesos/contrato_proceso.yml)

---

### 1. Patrones Arquitectónicos

La elección del patrón arquitectónico debe ser una decisión deliberada, registrada en un `ADR`, y alineada con los límites de la `Entidad de Valor` definidos en su `Canvas de EV`.

| Patrón | Ideal Para | Ventajas Clave | Consideraciones Técnicas (Trade-offs) |
| :--- | :--- | :--- | :--- |
| Monolito Modular | MVPs, equipos pequeños, dominios de negocio acotados. | Simplicidad de desarrollo y despliegue inicial. | Acoplamiento tecnológico, escalabilidad monolítica. |
| Microservicios | Sistemas complejos, equipos grandes, necesidad de escalabilidad granular. | Autonomía de equipos, despliegues independientes, resiliencia. | Complejidad operacional, consistencia eventual (Sagas), latencia de red. |
| Arquitectura Orientada a Eventos (EDA) | Procesos asíncronos, alta desacoplación, sistemas reactivos. | Desacoplamiento máximo, escalabilidad, resiliencia a picos. | Complejidad en la depuración de flujos, requiere un broker robusto. |
| Serverless (FaaS) | Cargas de trabajo intermitentes, tareas basadas en eventos. | Coste cero en reposo, escalado automático gestionado. | Cold starts, vendor lock-in, limitaciones de ejecución. |

Principio Rector: Comience con un Monolito Modular bien estructurado. Extraiga Microservicios solo cuando el dolor del acoplamiento supere la complejidad de la distribución.

### 2. Protocolo de Ciclo de Vida de Desarrollo (SDLC)

Este protocolo asegura la calidad, seguridad y velocidad en la entrega de software.

1. Diseño y Arquitectura:
    * `Diagramas C4`: Modelar la arquitectura en niveles de abstracción (Contexto, Contenedores, Componentes).
    * `ADRs`: Documentar cada decisión arquitectónica significativa.
    * `SLOs` Cuantitativos: Definir objetivos de disponibilidad, latencia y error antes de escribir código.

2. Desarrollo e Integración Continua (CI):
    * Pipeline de CI: En cada `commit`, automatizar builds, tests (unitarios, integración) y análisis estático (`SAST`).
    * Análisis de Dependencias (`SCA`): Escanear continuamente las librerías de terceros en busca de vulnerabilidades (ej. Snyk, Dependabot).

3. Despliegue y Operación (CD/DevOps):
    * Infraestructura como Código (IaC): Usar Terraform o Pulumi para gestionar la infraestructura de forma declarativa y versionada.
    * Contenerización: Usar Docker y Kubernetes como estándar para empaquetar y orquestar.
    * Despliegue Automatizado: Utilizar estrategias seguras (Canary, Blue-Green) controladas por `Feature Flags`.

4. Observabilidad:
    * Logs Estructurados (JSON): Para un análisis y búsqueda eficientes (ELK, Loki).
    * Métricas: Series temporales para dashboards y alertas (Prometheus, Grafana).
    * Trazas Distribuidas: Para depurar cuellos de botella en sistemas de microservicios (Jaeger, OpenTelemetry).

### 3. Automatización de Procesos de Negocio (BPA)

La automatización de procesos es una capacidad de ingeniería de software, no una disciplina separada. Se rige por los mismos principios de calidad y seguridad.

#### 3.1. Arquitectura de Referencia para BPA

Una solución de BPA es un sistema compuesto que orquesta diferentes tipos de `Entidades de Valor`.

* Capa de Orquestación: Un motor de workflow (ej. Camunda) que ejecuta modelos de proceso (`BPMN`) y gestiona el estado de los flujos de larga duración.
* Capa de Ejecución de Tareas:
  * API-based (Preferido): Microservicios y conectores que ejecutan lógica de negocio a través de APIs.
  * UI-based (Último Recurso): Flota de bots `RPA` para interactuar con sistemas legacy sin API.
  * Human-in-the-Loop (HITL): Cola de tareas para que los humanos manejen excepciones y decisiones de alto juicio.
* Capa de Inteligencia: Servicios de IA para tareas cognitivas (ej. `IDP` para leer documentos, `NLP` para entender texto). Ver `gt_ingenieria_ia.md`.

#### 3.2. Patrones de Flujo de Proceso

* Orquestación (Patrón Saga): Un orquestador central dirige el flujo y es responsable de ejecutar las acciones de compensación en caso de error. Proporciona alta visibilidad del estado del proceso.
* Coreografía (Orientado a Eventos): Los servicios reaccionan a eventos en un bus de mensajes de forma autónoma. Promueve el desacoplamiento, pero la visibilidad del flujo de punta a punta es más compleja.

#### 3.3. El `Contrato de Proceso`

Este `Contrato Nexus` formaliza los compromisos de un proceso automatizado. Debe ser un artefacto versionado que acompaña al modelo BPMN.

Referencia: [Especificación](../plantillas_contratos/procesos/contrato_proceso.md) · [Plantilla YAML](../plantillas_contratos/procesos/contrato_proceso.yml)

Atributos Clave:

* `sla`: Objetivos de Nivel de Servicio (ej. `cycle_time_p95_minutes: 180`).
* `stp_target_pct`: Porcentaje objetivo de casos procesados sin intervención humana (Straight-Through Processing).
* `hitl`: Definición de las colas de excepciones y reglas de escalamiento.
* `saga`: Mapeo de acciones de compensación para tareas críticas.
* `events`: Lista de eventos de negocio canónicos que el proceso emite o consume.
* `idempotency`: Claves de negocio que aseguran que la re-ejecución del proceso no duplique transacciones.

### 4. Seguridad Embebida (Shift-Left)

La seguridad es una responsabilidad del equipo de desarrollo, integrada en el SDLC.

* Autenticación y Autorización: Usar estándares como OAuth 2.1 / OIDC. Implementar JWT para APIs stateless y RBAC/ABAC para control de acceso granular.
* Gestión de Secretos: Utilizar un vault centralizado (ej. HashiCorp Vault). Nunca almacenar secretos en el código fuente o repositorios Git.
* Análisis de Seguridad Automatizado: Integrar `SAST`, `DAST` y `SCA` en los pipelines de CI/CD para detectar vulnerabilidades de forma temprana.


---


## Guía Técnica: Diseño de Experiencia de Usuario (UX)

ID: `GT-UX-001`
Versión: 1.0
Dominio: Diseño de Experiencia de Usuario, Diseño de Interfaz

Propósito: Esta guía técnica establece los principios, patrones y mejores prácticas para el diseño de la experiencia de usuario (UX) de las `Entidades de Valor (EV)`. El objetivo es asegurar que las interfaces sean usables, accesibles, eficientes y coherentes.

Audiencia: Diseñadores de UX/UI, Dueños de Producto, Desarrolladores Frontend.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_experiencia_usuario.md`
* Artefactos KORE Informados: `Canvas de EV` (Cajas 2, 3, 9), `Mapeo de Historias`.

---

### 1. Principios de Diseño UX para Entidades de Valor KORE

Estos principios deben guiar todas las decisiones de diseño de interfaces.

1. Reducir la Carga Cognitiva:
    * Divulgación Progresiva: Muestre solo la información y las acciones necesarias para la tarea actual. Oculte la complejidad avanzada hasta que se solicite explícitamente.
    * Minimalismo y Claridad: Utilice espacios en blanco, tipografía legible y una paleta de colores limitada para ayudar a los usuarios a enfocarse.

2. Proporcionar Feedback Claro e Inmediato:
    * Micro-interacciones: Use animaciones sutiles para confirmar acciones (guardado, error, carga). Esto asegura al usuario que el sistema ha respondido.
    * Estados Visibles: La interfaz debe comunicar claramente su estado actual (cargando, error, éxito, deshabilitado).

3. Diseñar para la Eficiencia del Usuario Experto:
    * Atajos de Teclado y Paletas de Comandos: Permita a los usuarios avanzados operar la interfaz sin depender del ratón. Una paleta de comandos universal (ej. `Ctrl+K`) es un acelerador poderoso.
    * Flujos no Lineales: Permita guardar borradores, saltar entre tareas relacionadas y trabajar en paralelo. No fuerce a los usuarios a un único "camino feliz".

4. Habilitar la Colaboración:
    * Colaboración en Tiempo Real: Si la `EV` es utilizada por múltiples personas, permita ver las ediciones y comentarios de los demás en tiempo real (estilo Figma/Google Docs).

5. Ser Inclusivo y Accesible por Defecto:
    * Cumplimiento de WCAG: La accesibilidad no es una opción. Asegure la compatibilidad con lectores de pantalla, navegación por teclado y contrastes de color adecuados desde el inicio.
    * Diseño Visual Inclusivo: Utilice un lenguaje claro y pruebe las paletas de colores para diferentes tipos de daltonismo.

6. Aumentar la Inteligencia del Usuario con IA:
    * Copilotos y Asistentes: Incorpore asistentes contextuales que puedan generar contenido, responder preguntas o guiar al usuario.
    * UX Predictiva: Anticipe las necesidades del usuario, sugiriendo acciones probables o pre-rellenando información basada en el contexto.

### 2. El Sistema de Diseño (Design System)

Un Sistema de Diseño es la fuente única de verdad para la UX/UI. Es un producto vivo, no un documento estático.

* Componentes:
  * Biblioteca de Componentes: Un conjunto de componentes de UI reutilizables (botones, formularios, modales) con su código (ej. en React, Vue) y documentación.
  * Tokens de Diseño: Variables para atributos de diseño (colores, espaciado, tipografía). Permiten aplicar temas (ej. modo oscuro, marca blanca) a escala.
  * Guías de Estilo y Contenido: Reglas sobre el uso de la marca, la voz y el tono de la comunicación.
  * Patrones de Diseño: Soluciones documentadas para problemas de diseño recurrentes (ej. patrón de búsqueda, patrón de tabla de datos).

* Gobernanza:
  * Debe existir un equipo o comité responsable de mantener y evolucionar el Sistema de Diseño.
  * Los nuevos componentes o patrones deben pasar por un proceso de revisión para asegurar su calidad y coherencia.

### 3. Patrones de Interfaz para Aplicaciones Empresariales

* Navegación:
  * Menú Lateral Fijo: Estándar para aplicaciones complejas con muchas secciones.
  * Barra Superior con Búsqueda Global: Proporciona un punto de acceso constante a la búsqueda.

* Visualización de Datos:
  * Tablas de Datos Interactivas: Deben incluir ordenamiento, filtrado, paginación y la capacidad de seleccionar y personalizar columnas.
  * Dashboards Modulares: Compuestos por widgets o tarjetas que los usuarios pueden reorganizar, añadir o quitar para personalizar su vista.

* Entrada de Datos:
  * Formularios Multi-paso (Wizards): Para procesos de entrada de datos largos, dividiéndolos en pasos lógicos con una barra de progreso.
  * Validación en Línea: Proporcionar feedback sobre los errores de entrada de datos a medida que el usuario escribe, no solo al final.

* Interacción con IA:
  * Interfaces Conversacionales (Chat): Para asistentes y copilotos. Deben soportar respuestas en streaming y la capacidad de mostrar componentes ricos (tablas, gráficos) dentro de la conversación.
  * Sugerencias y Autocompletado Inteligente: Integrar sugerencias generadas por IA directamente en los campos de texto y formularios.


---


## Guía Técnica: Ingeniería de Datos Orientada a Productos

ID: `GT-DATA-001`
Versión: 1.0
Dominio: Ingeniería de Datos, Arquitectura de Datos

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para diseñar, construir y operar Productos de Datos como `Entidades de Valor (EV)` confiables, gobernadas y de autoservicio.

Audiencia: Arquitectos de Datos, Ingenieros de Datos, Data Product Owners.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_datos.md`
* Contrato Nexus Implementado: `Contrato de Datos`

---

### 1. Principios de la Ingeniería de Datos KORE

1. Dato como Producto (Data as a Product): Cada conjunto de datos expuesto es un producto. Tiene un dueño, un ciclo de vida, un `Contrato de Datos` explícito y `SLOs` de calidad y disponibilidad.
2. Gobernanza Federada y Automatizada: La gobernanza no es un cuello de botella central. Se implementa a través de `policy-as-code` (ej. OPA/Rego) y se aplica automáticamente en los pipelines.
3. Semántica Primero: Antes de mover datos, se define su significado. El `Glosario de Negocio` y los modelos conceptuales son artefactos de primera clase.
4. Observabilidad de Datos: Los pipelines y productos de datos deben ser instrumentados para medir las dimensiones de calidad (frescura, completitud, validez) y rendimiento.

### 2. Arquitectura de Referencia: Lakehouse Orientado a Zonas

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

### 3. El `Contrato de Datos`

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

### 4. Protocolo de Calidad de Datos (Data Quality)

La calidad de los datos se gestiona como un sistema, no como una tarea manual.

* Dimensiones de Calidad: Medir sistemáticamente exactitud, completitud, validez, unicidad, consistencia y frescura.
* Pipeline de DQ:
    1. Preventivo: Validar datos en el punto de entrada (APIs, UIs) usando el `Contrato de Datos`.
    2. Detectivo: Ejecutar tests de calidad como parte del pipeline de transformación (ej. Great Expectations, dbt tests) entre las zonas Bronce, Plata y Oro.
    3. Correctivo: Poner en cuarentena los registros que fallan las validaciones para su análisis, en lugar de detener todo el pipeline.

### 5. Observabilidad y SRE de Datos

Tratar los `Productos de Datos` como servicios con `SLOs` y `Error Budgets`.

* SLIs (Indicadores de Nivel de Servicio):
  * Frescura (p95): ¿Cuán actualizados están los datos?
  * Latencia de Pipeline (p95): ¿Cuánto tarda el pipeline E2E en ejecutarse?
  * Tasa de Fallos de Calidad: % de registros que violan las reglas de calidad.
  * Disponibilidad de la Interfaz: % de tiempo que la API o la tabla está accesible.
* Linaje Activo: Utilizar herramientas como OpenLineage para capturar automáticamente el linaje de datos a nivel de columna. El linaje no es un diagrama estático, es metadata viva.

### 6. Seguridad y Privacidad

La seguridad de los datos es por diseño, no por accidente.

* Clasificación de Datos: Etiquetar cada `Producto de Datos` con un nivel de sensibilidad (ej. Público, Interno, Confidencial, Restringido).
* Control de Acceso Basado en Atributos (ABAC): Usar políticas (`Policy-as-Code` con OPA/Rego) que definen el acceso basado en el rol del usuario, la clasificación del dato y el contexto de la petición.
* Privacidad por Diseño: Aplicar técnicas de minimización, anonimización y pseudoanonimización según la clasificación del dato. Implementar políticas de retención y expurgo automáticas.


---


## Guía Técnica: Gestión del Conocimiento y Curación para RAG

ID: `GT-KNOW-001`
Versión: 1.0
Dominio: Gestión del Conocimiento (KM), Curación de Contenido

Propósito: Esta guía técnica establece el marco para gestionar el conocimiento organizacional como una capacidad y detalla el pipeline técnico para curar contenido de manera que los Sistemas Cognitivos (IA) puedan consumirlo de forma segura y confiable a través de RAG (Retrieval-Augmented Generation).

Audiencia: Knowledge Managers, Arquitectos de IA, Ingenieros de Datos.

Relación con KORE:

* Guías de Decisión Relacionadas: `gd_sistemas_cognitivos.md`
* Contrato Nexus Implementado: `Contrato de Conocimiento`

---

### 1. El Ciclo de Conocimiento KORE

La gestión del conocimiento en KORE no es un proceso pasivo de archivo, sino un ciclo activo integrado en los rituales del marco.

| Actividad KM | Protocolo KORE Asociado | Artefacto Resultante |
| :--- | :--- | :--- |
| 1. Capturar | `Retrospectiva de Flujo`, `Post-mortem de Incidente` | `Bitácora de Decisión (ADR)`, Lección Aprendida. |
| 2. Sintetizar | `Taller de Mapeo de Capacidades`, Revisión de Dominio | `Mapa de Capacidades`, Guías Técnicas (como esta). |
| 3. Compartir | `Taller de Canvas de EV`, `Negociación de Contrato` | `Canvas de EV` poblado, `Contrato Conversacional` acordado. |
| 4. Aplicar | `Ciclo de Valor y Capacidad (CVC)`, Búsqueda en Base de Conocimiento | Decisiones de inversión informadas, Respuestas RAG citables. |

### 2. Pipeline de Curación de Contenido para RAG

Este es el proceso técnico para transformar documentos no estructurados (normativas, manuales, informes) en una base de conocimiento consultable por una IA. El objetivo es garantizar respuestas verificables, actuales y trazables.

**Nota de Implementación Canónica:** El siguiente pipeline es un modelo conceptual. Su implementación técnica, obligatoria para todo el ecosistema KORE, está definida por el "Marco de curación y gestión del conocimiento consumible por IA". Este marco está compuesto por las siguientes guías maestras:

* guide_core_006_sts-master_sts.md (STS): Define el lenguaje de formato para los artefactos.
* guide_core_005_sfd-master_sts.md (SFD): Define la extensión para la transcripción de formularios.
* guide_core_003_khm-master_sts.md (KHM): Define el sistema de gestión del ciclo de vida de los artefactos.

La conformidad con el pipeline se mide por la conformidad de estas guías.

El pipeline conceptual se mapea directamente al ciclo de vida de artefactos definido en la guía `guide_core_003_khm-master_sts.md`, de la siguiente manera:

| Fase Conceptual del Pipeline | Fase de Implementación en KHM | Propósito |
| :--- | :--- | :--- |
| 4. Indexación y Recuperación | - | Es una capacidad de la infraestructura de IA, no del ciclo de vida del artefacto. |
| 1. Ingesta y Normalización | `Fase 1: Sourcing` y `Fase 2: Staging` | Identificar y preparar las fuentes de conocimiento en bruto. |
| 2. Enriquecimiento Semántico | `Fase 2: Staging & Transformation` | Aplicar los estándares `STS` y `SFD` para refactorizar el contenido. |
| 3. Decomposición Estructural | `Fase 2: Staging & Transformation` | Estructurar el artefacto para optimizar su consumo por RAG. |

La gobernanza del proceso completo, incluyendo la auditoría y publicación, está normada por la guía `KHM`.

### 3. El `Contrato de Conocimiento`

Este `Contrato Nexus` gobierna una colección de conocimiento y define las reglas para su curación y consumo. Es la garantía de confiabilidad para el sistema RAG.

Estructura Mínima del Contrato:

```yaml
collection_id: "normativa_financiera"
version: 1.0
owner: "equipo-compliance"
authority_level: "fuente_oficial_unica" # Nivel de autoridad de las fuentes
doc_types: ["Resolución", "Circular", "Informe Auditoría"]
metadata_schema: # Metadatos mínimos requeridos en la ingesta
  - {name: "id_documento", type: "string", required: true}
  - {name: "fecha_publicacion", type: "date", required: true}
  - {name: "estado_vigencia", type: "string", required: true}
chunking_strategy:
  method: "structural"
  max_size_tokens: 512
indexing_config:
  vector_model: "text-embedding-3-large"
  lexical_analyzer: "standard"
serving_policy:
  retrieval_mode: "hybrid"
  reranking_enabled: true
  citation_policy: "required_exact" # Política de citación obligatoria
  access_control: "filter_by_user_role"
```

### 4. Roles y Responsabilidades en el Ciclo de Conocimiento

* Dueño del Conocimiento (Knowledge Owner): Experto de dominio responsable de la validez y vigencia del contenido en su área (ej. el experto en normativa fiscal es dueño de la colección de conocimiento fiscal).
* Curador de Contenido (Content Curator): Responsable de ejecutar el pipeline de ingesta, enriquecimiento y asegurar la calidad de los metadatos.
* Ingeniero de Conocimiento (Knowledge Engineer): Diseña y mantiene el pipeline técnico de RAG, optimiza los modelos de embedding y las estrategias de búsqueda.


---


## Guía Técnica: Ingeniería de Sistemas Cognitivos (IA)

ID: `GT-IA-001`
Versión: 1.0
Dominio: Inteligencia Artificial, MLOps, LLMOps

Propósito: Esta guía técnica establece los patrones, prácticas y tecnologías para el diseño, construcción y operación de Sistemas Cognitivos (agentes, copilotos, motores de inferencia) como `Entidades de Valor (EV)` responsables y gobernadas.

Audiencia: Arquitectos de IA, Ingenieros de ML/IA, Científicos de Datos.

Relación con KORE:

* Guía de Decisión Relacionada: `gd_sistemas_cognitivos.md`
* Contrato Nexus Implementado: `Contrato de Agente`

---

### 1. Principios KORE para Sistemas Cognitivos

1. El Modelo no es el Sistema: El valor reside en el sistema sociotécnico completo que rodea al modelo (datos, interfaces, `Contratos`, `Guardrails`), no solo en la precisión del modelo.
2. Contexto Específico: El rendimiento de un modelo de IA no es transferible. Cada aplicación debe ser validada para su caso de uso y contexto específico.
3. Aumento, no Reemplazo: Priorizar el diseño de sistemas que aumenten la inteligencia humana. El patrón `Humano-en-el-Bucle (HITL)` es la norma para decisiones de alto impacto.
4. Responsabilidad Distribuida: La responsabilidad por las acciones de un agente de IA se distribuye explícitamente entre roles definidos (Dueño de la Capacidad, Arquitecto de IA, Ingeniero de Prompts, etc.).

### 2. Arquitectura de Referencia para Aplicaciones de LLM

Esta arquitectura de 4 capas permite construir aplicaciones de IA de forma segura, escalable y agnóstica al proveedor del modelo.

* Capa 4: Aplicación y Experiencia de Usuario (UX): La interfaz final con el usuario (chatbot, copiloto en una app existente, buscador inteligente).
* Capa 3: Servicios de Negocio e Integración: Expone la capacidad de IA como una API segura y gobernada, integrada con el sistema de identidad de la empresa (OIDC/SSO).
* Capa 2: Gateway de IA (Consumo del Modelo): Fachada única que centraliza todas las llamadas a las APIs de LLMs. Proporciona abstracción del proveedor, gestión de credenciales, caché, control de tráfico y monitoreo de costos.
* Capa 1: Orquestación de Lógica y Contexto: El "cerebro" de la aplicación. Coordina el flujo de trabajo, gestiona los prompts y la memoria de la conversación, y decide cuándo usar RAG o llamar a herramientas.

### 3. Patrones de Orquestación Cognitiva

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

### 4. El `Contrato de Agente`

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

### 5. MLOps y LLMOps: El Ciclo de Vida Operacional

* Gestión de Prompts: Tratar los prompts como código. Centralizarlos en un `Registro de Prompts` para versionarlos, probarlos (A/B testing) y actualizarlos sin redesplegar la aplicación.
* Serving de Modelos:
  * Runtimes Optimizados: Utilizar servidores de inferencia como vLLM, TGI o Triton para maximizar el rendimiento en GPUs (ej. con `continuous batching`).
  * Endpoints OpenAI-Compatible: Exponer los modelos (tanto comerciales como open-source) a través de una API interna compatible con el estándar de OpenAI para facilitar la integración.
* Evaluación y Monitoreo:
  * Evaluación Offline: Usar `golden sets` (conjuntos de datos de prueba) para regresión y `LLM-as-a-judge` para evaluar la calidad de las respuestas en base a rúbricas.
  * Monitoreo Online: Medir métricas de calidad (fidelidad, tasa de alucinación, toxicidad), rendimiento (latencia TTFT, tokens/seg), y costo (costo por tarea/conversación).
* Seguridad (OWASP Top 10 para LLMs): Implementar defensas contra `inyección de prompts`, `fugas de datos` a través del contexto, y `envenenamiento de datos de entrenamiento`.


---


